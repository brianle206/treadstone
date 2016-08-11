class CreateTreadstoneEntrySearchData < ActiveRecord::Migration
  def change
    create_table :treadstone_entry_search_data do |t|
      t.integer :entry_id, index: true
      t.string :attr_name
      t.tsvector :search_data
      t.text :raw_data

      t.timestamps null: false
    end
     execute 'create index idx_search_data on treadstone_entry_search_data using gin(search_data)'
  end
end
