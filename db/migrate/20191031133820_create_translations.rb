class CreateTranslations < ActiveRecord::Migration[6.0]
  def change
    create_table :translations do |t|
      t.string :key
      t.text :value

      t.timestamps
    end
  end
end
