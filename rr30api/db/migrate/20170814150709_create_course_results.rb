class CreateCourseResults < ActiveRecord::Migration[5.1]
  def change
    create_table :course_results do |t|
      t.datetime :created_at, null: false
      t.decimal :usd, precision: 10, scale: 4
      t.decimal :eur, precision: 10, scale: 4
      t.decimal :rur, precision: 10, scale: 4

    end
  end
end
