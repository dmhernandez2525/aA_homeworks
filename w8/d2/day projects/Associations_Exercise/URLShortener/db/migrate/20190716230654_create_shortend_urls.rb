class CreateShortendUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :shortend_urls do |t|
      t.string :short_url 
      t.string :long_url 
      t.integer :user_id

    end
  end
end
