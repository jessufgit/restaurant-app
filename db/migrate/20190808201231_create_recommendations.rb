class CreateRecommendations < ActiveRecord::Migration[5.2]
  def change
    create_table :recommendations do |t|
      t.string :name
      t.string :location
      t.string :rating
      t.string :review

      t.timestamps
    end
  end
end
