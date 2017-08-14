class SourceProvider < ApplicationRecord
  validates :name, presence: true, allow_blank: false
  validates :url, presence: true, allow_blank: false
  validates :adress, presence: true, allow_blank: false
end
