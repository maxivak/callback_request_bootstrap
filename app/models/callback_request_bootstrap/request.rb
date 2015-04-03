module CallbackRequestBootstrap
  class Request < ActiveRecord::Base
    self.table_name = 'requests'
  end
end
