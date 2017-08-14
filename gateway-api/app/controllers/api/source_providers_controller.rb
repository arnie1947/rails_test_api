module Api
  class SourceProvidersController < Api::BaseController
    rescue_from JsonApiClient::Errors::NotFound, :with=>:not_found

    def index
      render :json=>MyApi::SourceProvider.all()
    end

    def show
      render :json=>MyApi::SourceProvider.find(params[:id])
    end

    private
    def not_found
      render :json=>{'error':'Record does not exist'}
    end
  end
end
