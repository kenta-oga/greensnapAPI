class CreateSamples < ActiveRecord::Migration[6.0]
  def change
    create_table :samples do |t|
      t.string :user_name, null: false
      t.text :comment, null: false

      t.timestamps
    end
  end
end
