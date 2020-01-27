class QuestThankController < ApplicationController
  def index

  	@questThanksTitle = Translation.find_by(key: "questThanksTitle")

  	if @questThanksTitle == nil
    	Translation.create(key: "questThanksTitle", value: "Placeholder. Use Tools to eneter real text")
  	end

  	@questThanksTitle = Translation.find_by(key: "questThanksTitle")

  	#######

  	@questThanksInstructions = Translation.find_by(key: "questThanksInstructions")

  	if @questThanksInstructions== nil
    	Translation.create(key: "questThanksInstructions", value: "Placeholder. Use Tools to eneter real text")
  	end

  	@questThanksInstructions = Translation.find_by(key: "questThanksInstructions")

  end
end
