class CourseResultResource < JSONAPI::Resource
  attributes :created_at, :usd, :eur, :rur
  filter :usd
  filter :eur
  filter :rur
  filter :created_at
end
