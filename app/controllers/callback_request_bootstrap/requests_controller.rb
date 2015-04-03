require_dependency "callback_request_bootstrap/application_controller"

module CallbackRequestBootstrap
  class RequestsController < ApplicationController
    before_action :set_request, only: [:show, :edit, :update, :destroy]
    before_action :set_modal, only: [:new, :create, :create_result]

    # GET /requests
    def index
      @requests = Request.all
    end

    # GET /requests/1
    def show
    end

    # GET /requests/new
    def new
      @request = Request.new

      if @modal==1
        render :layout => false and return
      end

    end

    # GET /requests/1/edit
    def edit
    end

    # POST /requests
    def create
      @request = Request.new(request_params)
      @res = @request.save

      #@res = false # debug

      flash.now[:notice] = @res ? t('callback_request.messages.success') : t('callback_request.messages.error')

      respond_to do |format|
        if @res
          format.html {
            redirect_to create_result_request_path(modal: @modal), notice: t('callback_request.messages.success')
          }
          format.js{

          }
          #format.json { render json: @request, status: :created, location: @request }
        else
          format.html {
            if @modal==1
              render :new, :layout => false
              return
            end

            render :new
          }

          format.js{          }
          #format.json {            render json: @request.errors, status: :unprocessable_entity          }
        end
      end
    end

    def create_result

    end


    # PATCH/PUT /requests/1
    def update
      if @request.update(request_params)
        redirect_to @request, notice: 'Request was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /requests/1
    def destroy
      @request.destroy
      redirect_to requests_url, notice: 'Request was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_request
        @request = Request.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def request_params
        params.require(:request).permit(:name, :email, :phone, :notes)
      end

    def set_modal
      @modal = (params[:modal] || 0).to_i rescue 0
    end
  end
end
