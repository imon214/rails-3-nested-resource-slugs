class AddCachedSlugToProjects < ActiveRecord::Migration
  def self.up
    add_column :projects, :cached_slug, :string
    add_index :projects, [:account_id, :cached_slug], :unique => true
  end

  def self.down
    remove_column :projects, :cached_slug
  end
end
