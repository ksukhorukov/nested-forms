class CreateSearchContainer < ActiveRecord::Migration[5.1]
  def change
    create_table :search_containers do |t|
      t.string :title
      t.references :search_category
      t.timestamps
    end
  end
end
