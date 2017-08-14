class User < ApplicationRecord
  validates :email, presence: true, allow_blank: false, uniqueness: { case_sensitive: false }
  validates :password, presence: true, allow_blank: false

  before_save :check_names, :email_downcase, :capitalize_names
  before_create :create_api_key

  def full_name
    self.first_name + ' ' + self.last_name
  end
  private
  def email_downcase
    self.email = self.email.downcase
  end

  def capitalize_names
    self.first_name = self.first_name.capitalize
    self.last_name = self.last_name.capitalize
  end

  def check_names
    base="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    if self.first_name.nil? & self.last_name.nil?
      self.first_name=(0...10).map{base[rand(base.length)]}.join
      # puts self.first_name
      self.last_name=(0...10).map{base[rand(base.length)]}.join
    end
    if self.first_name.nil?
      self.first_name = self.last_name
    elsif self.last_name.nil?
      self.last_name = self.first_name
    end
  end

  def create_api_key
    base="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    self.api_key=(0...15).map{base[rand(base.length)]}.join
  end
end
