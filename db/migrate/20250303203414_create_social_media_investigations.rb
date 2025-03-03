class CreateSocialMediaInvestigations < ActiveRecord::Migration[7.2]
  def change
    create_table :social_media_investigations do |t|
      t.integer :platform
      t.string :platform_account_key
      t.datetime :started_at
      t.datetime :ended_at
      t.jsonb :api_payload

      t.timestamps
    end
  end
end
