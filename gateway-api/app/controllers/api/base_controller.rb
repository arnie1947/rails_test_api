module Api
  class BaseController < ApplicationController
    before_action :authenticate

    def authenticate
      if !params['api-key']
        render :json=>{'error':'Access denied'}
      else
        user=MyApi::User.where(:api_key=>params['api-key']).all().first()
        if !user
          render :json=>{'error':'Access denied'}
        end
      end
    end
  end
end
