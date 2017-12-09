class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :published_datetime
      t.text :description

      t.timestamps null: false
    end
  end
end
