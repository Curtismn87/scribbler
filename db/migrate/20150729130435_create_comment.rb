class CreateComment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :comment_body
      t.datetime :create_at
      t.references :post, index: true, foreign_key: true
    end
  end
end
