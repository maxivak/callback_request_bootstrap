module CallbackRequestBootstrap
  module RequestsHelper

    def link_to_callback_modal(title, options = nil, html_options = nil)
      html_options ||= {}
      html_options[:class] ||= []

      if html_options[:class].is_a? Array
        html_options[:class] << 'callback_link'         # append as element to array
      else
        html_options[:class] << ' callback_link'        # append with leading space to string
      end

      #link_to title, '#', opts.merge(html_options)
      link_to title, options, html_options
    end

  end
end
