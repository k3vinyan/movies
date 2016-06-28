class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :poster
      t.string :trailer
      t.text :plot

      t.timestamps null: false
    end
  end
end
