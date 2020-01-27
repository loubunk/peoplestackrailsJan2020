class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
  	rename_column :testimonials, :text, :quote

  end
end
