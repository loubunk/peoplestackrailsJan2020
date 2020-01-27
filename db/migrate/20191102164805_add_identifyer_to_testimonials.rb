class AddIdentifyerToTestimonials < ActiveRecord::Migration[6.0]
  def change
  	add_column :testimonials, :identifyer, :string
  end
end
