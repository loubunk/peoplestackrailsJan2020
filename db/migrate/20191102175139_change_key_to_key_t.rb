class ChangeKeyToKeyT < ActiveRecord::Migration[6.0]
  def change
  	rename_column :testimonials, :key, :keyt
  end
end
