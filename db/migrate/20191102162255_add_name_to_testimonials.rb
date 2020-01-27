class AddNameToTestimonials < ActiveRecord::Migration[6.0]
  def change
  	add_column :testimonials, :name, :string
  end
end
