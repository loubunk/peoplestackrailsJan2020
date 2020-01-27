class TestimonialsController < ApplicationController

  def index
  	@testimonials = Testimonial.all
  end

  def show
    @testimonial = Testimonial.find(params[:id])
  end

  def new
  	@testimonial = Testimonial.new
  end

  def edit
  	# generates form with current data, to be edited
  	@testimonial = Testimonial.find(params[:id])
  end

  def create
  	@testimonial = Testimonial.new(testimonial_params) # Testimonial is the Model	
    
    if @testimonial.save #returns true or false depending on validation (in Model)
      redirect_to @testimonial
    else
      render 'new'
      # when validation fails
			# the new view is rendered so that the @translation object (as it was entered) 
			# is passed back to the new template (view) when it is rendered here.
    end 
  end

  def update

  	# upon click of "update" button, this action is called to update database

    @testimonial = Testimonial.find(params[:id])
    
    if @testimonial.update(testimonial_params)
      redirect_to @testimonial # show form back to user if there is an error
    else
      render 'edit'
    end
  end

  def destroy
    @testimonial = Testimonial.find(params[:id])
    @testimonial.destroy
    
    redirect_to testimonials_path
  end

  # private area for Strong Parameters 
	# above create action calls translation_params

  private
  
  def testimonial_params
    params.require(:testimonial).permit(:keyt, :name, :title, :company, :quote)
  end

end
