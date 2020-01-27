class ChangeToKeyTestimonials < ActiveRecord::Migration[6.0]
  def change
  	rename_column :testimonials, :identifyer, :key
  end
end
