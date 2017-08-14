module Api
  class CoursesController < Api::BaseController
    def index
      render :json=>MyApi::CourseResult.all()
    end

    def history
      render :json=>MyApi::CourseResultHistory.all()
    end
  end
end
