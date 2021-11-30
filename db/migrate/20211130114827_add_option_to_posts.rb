class AddOptionToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :option, :string
  end
end
