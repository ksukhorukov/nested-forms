class CreateSearchItems < ActiveRecord::Migration[5.1]
  def change
    create_table :search_items do |t|
      t.string :title
      t.references :search_container
      t.references :product
      t.timestamps
    end
  end
end
