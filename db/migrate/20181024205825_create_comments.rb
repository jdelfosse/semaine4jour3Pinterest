class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|

      t.text :body

      t.timestamps

      t.belongs_to :pin, index: true
      t.belongs_to :user, index: true
    end
  end
end
