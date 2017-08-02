class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :body,  null: false, default: "", comment: '投稿内容'
      t.integer :like, null: false, default: 0, comment: 'いいね'

      t.timestamps
    end
  end
end
