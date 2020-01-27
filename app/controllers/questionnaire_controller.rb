class QuestionnaireController < ApplicationController
  def index

  	@questInstructions = Translation.find_by(key: "questInstructions")

  	if @questInstructions == nil
    	Translation.create(key: "questInstructions", value: "Placeholder. Use Tools to eneter real text")
  	end

  	@questInstructions = Translation.find_by(key: "questInstructions")

  	#####

  	@questTitle = Translation.find_by(key: "questTitle")

  	if @questTitle == nil
    	Translation.create(key: "questTitle", value: "Placeholder. Use Tools to eneter real text")
  	end

  	@questTitle = Translation.find_by(key: "questTitle")

  end
end
