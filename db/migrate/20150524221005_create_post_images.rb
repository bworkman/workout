class CreatePostImages < ActiveRecord::Migration
  def change
    create_table :post_images do |t|
      t.belongs_to :post, index: true, foreign_key: true
      t.belongs_to :image, index: true, foreign_key: true

      t.timestamps
    end
  end
end
