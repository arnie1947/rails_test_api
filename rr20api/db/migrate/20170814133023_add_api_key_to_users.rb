class AddApiKeyToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :api_key, :string
    User.all().each() do | user |
      base="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
      api_key=(0...15).map{base[rand(base.length)]}.join
      user.update(:api_key=>api_key)
    end
  end
end
