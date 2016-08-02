class CreateCategoryPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :category_posts do |t|
      t.belongs_to :post, index: true
      t.belongs_to :category, index: true

      t.timestamps
    end
  end
end
