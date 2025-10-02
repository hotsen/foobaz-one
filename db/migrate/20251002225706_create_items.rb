class CreateItems < ActiveRecord::Migration[8.1]
  def change
    create_table :items do |t|
      #
      #
      # Associations
      # --------------------------------------------------------------
      #
      #
      #   

      #
      #
      # Attributes (Indexed)
      # --------------------------------------------------------------
      #
      #
      #   

      t.string :name, null: false, index: true
      t.string :code, null: false, index: { unique: true }
      t.string :uuid, null: false, index: { unique: true }

      #
      #
      # Attributes (Non-Indexed)
      # --------------------------------------------------------------
      #
      #
      #   


      #
      #
      # Attributes (JSON)
      # --------------------------------------------------------------
      #
      #
      #   

      t.jsonb :settings, default: {}, null: false

      #
      #
      # Attributes (Text)
      # --------------------------------------------------------------
      #
      #
      #   
     
      t.text :content,      limit: 16.megabytes - 1
      t.text :content_md,   limit: 16.megabytes - 1
      t.text :content_raw,  limit: 16.megabytes - 1

      #
      #
      # Timestamps
      # --------------------------------------------------------------
      #
      #
      # 

      # Discarded
      t.datetime :discarded_at

      t.timestamps
    end
  end
end
