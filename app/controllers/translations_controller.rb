class TranslationsController < ApplicationController

def index
  	@translations = Translation.all
  end

  def show
    @translation = Translation.find(params[:id])
  end

  def new
  	@translation = Translation.new
  end

  def edit
  	# generates form with current data, to be edited
  	@translation = Translation.find(params[:id])
  end

  def create
  	@translation = Translation.new(translation_params) # Translation is the Model	
    
    if @translation.save #returns true or false depending on validation (in Model)
      redirect_to @translation
    else
      render 'new'
      # when validation fails
			# the new view is rendered so that the @translation object (as it was entered) 
			# is passed back to the new template (view) when it is rendered here.
    end 
  end

  def update

  	# upon click of "update" button, this action is called to update database

    @translation = Translation.find(params[:id])
    
    if @translation.update(translation_params)
      redirect_to @translation # show form back to user if there is an error
    else
      render 'edit'
    end
  end

  def destroy
    @translation = Translation.find(params[:id])
    @translation.destroy
    
    redirect_to translations_path
  end

  # private area for Strong Parameters 
	# above create action calls translation_params

  private
  
  def translation_params
    params.require(:translation).permit(:key, :value) # !!! I changed this from tutorial !!!
  end

end
