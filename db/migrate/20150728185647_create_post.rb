class CreatePost < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :author
      t.string :post_body
      t.datetime :create_at
    end
  end
end
