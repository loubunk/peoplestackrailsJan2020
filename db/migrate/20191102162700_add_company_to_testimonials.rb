class AddCompanyToTestimonials < ActiveRecord::Migration[6.0]
  def change
  		add_column :testimonials, :company, :string
  end
end
