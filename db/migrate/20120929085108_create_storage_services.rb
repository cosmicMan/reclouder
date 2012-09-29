class CreateStorageServices < ActiveRecord::Migration
  def change
    create_table :storage_services do |t|
      t.string :type
      t.string :name

      t.integer :user_id

      t.string :s3_access_key_id
      t.string :s3_secret_access_key

      t.string :dropbox_key
      t.string :dropbox_secret

      t.timestamps
    end
  end
end
