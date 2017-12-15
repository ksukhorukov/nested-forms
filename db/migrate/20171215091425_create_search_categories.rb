class CreateSearchCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :search_categories do |t|
      t.string :title
      t.timestamps
    end
  end
end
