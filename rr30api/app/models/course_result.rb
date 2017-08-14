class CourseResult < ApplicationRecord
  validates :usd, numericality: {:greater_than => 0}
  validates :eur, numericality: {:greater_than => 0}
  validates :rur, numericality: {:greater_than => 0}
end
