class AddIndexToLinks < ActiveRecord::Migration[7.0]
  def change
    add_index :links, :short_url
  end
end
