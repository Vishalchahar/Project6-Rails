class CreateMovie < ActiveRecord::Migration[7.0]
  def change
    # rails generate migration create_movies title:string duration_in_minutes:integer
    # infos_from_json = File.read(./database.json)
    # JSON.parse(infos_from_json).each do |t|
    #   Movie.create!(title: t['name'], duration_in_minutes: 
    #     t['time'])
    #   end
    #   Movie.save
    create_table :movies do |t|
      t.string :title
      t.boolean :status
      t.string :poster
      t.string :year
      t.float :rating
      t.string :genre
    end
  end
end