class CourseResultsController < JSONAPI::ResourceController
  def index
    @serializer = JSONAPI::ResourceSerializer.new(CourseResultResource)
    results = CourseResult.all().
      where('created_at BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day)
    data = []
    results.each do |result|
      data.push(CourseResultResource.new(result, {}))
    end
    render json: @serializer.serialize_to_hash(data)
  end

  def history
    @serializer = JSONAPI::ResourceSerializer.new(CourseResultResource)
    results = CourseResult.all().limit(10).order('created_at desc')
    data = []
    results.each do |result|
      data.push(CourseResultResource.new(result, {}))
    end
    render json: @serializer.serialize_to_hash(data)
  end

end
