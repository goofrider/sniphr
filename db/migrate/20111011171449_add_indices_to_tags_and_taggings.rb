class AddIndicesToTagsAndTaggings < ActiveRecord::Migration
  def self.up
    add_index :taggings, :taggable_id
    add_index :taggings, :taggable_type
    add_index :taggings, :tagger_id
    add_index :taggings, :tagger_type
    add_index :tags, :name
  end

  def self.down
    remove_index :taggings, :taggable_id
    remove_index :taggings, :taggable_type
    remove_index :taggings, :tagger_id
    remove_index :taggings, :tagger_type
    remove_index :tags, :name
  end
end
