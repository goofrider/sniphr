class AddCachedTagListToSniphs < ActiveRecord::Migration
  def self.up
    add_column :sniphs, :cached_tag_list, :string
  end

  def self.down
    remove_column :sniphs, :cached_tag_list
  end
end
