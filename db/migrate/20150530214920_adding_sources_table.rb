class AddingSourcesTable < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.text :identifier
      t.text :root_url

      t.text :timestamps
    end
  end
end
