class SourceProvidersController < JSONAPI::ResourceController
  before_action :add_isactive_filter

  def add_isactive_filter
    if (params['filter'])
      params['filter']['isactive'] = true
    end
  end
end
