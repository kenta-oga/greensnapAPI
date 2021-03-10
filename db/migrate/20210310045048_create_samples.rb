class CreateSamples < ActiveRecord::Migration[6.0]
  def change
    create_table :samples do |t|
      t.string :user_name
      t.text :comment

      t.timestamps
    end
  end
end
