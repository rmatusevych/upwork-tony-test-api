class CreateWebsiteUrls < ActiveRecord::Migration[6.1]
  def change
    create_table :website_urls do |t|
      t.string :url

      t.timestamps
      t.index :url, unique: true
    end
  end
end
