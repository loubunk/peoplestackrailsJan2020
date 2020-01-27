class CalendarController < ApplicationController
  def index

  	###### testimonials 
  	### 1

  	@testimonial1 = Testimonial.find_by(keyt: "testimonial1")

  	if @testimonial1 == nil
    	Testimonial.create(keyt: "testimonial1", quote: "Placeholder. Use Tools to eneter real text")
  	end

  	@testimonial1 = Testimonial.find_by(keyt: "testimonial1")

  	### 2
  	
  	@testimonial2 = Testimonial.find_by(keyt: "testimonial2")

  	if @testimonial2 == nil
    	Testimonial.create(keyt: "testimonial2", quote: "Placeholder. Use Tools to eneter real text")
  	end

  	@testimonial2 = Testimonial.find_by(keyt: "testimonial2")  

    ### 3
    
    @testimonial3 = Testimonial.find_by(keyt: "testimonial3")

    if @testimonial3 == nil
      Testimonial.create(keyt: "testimonial3", quote: "Placeholder. Use Tools to eneter real text")
    end

    @testimonial3 = Testimonial.find_by(keyt: "testimonial3") 

    ### 4
    
    @testimonial4 = Testimonial.find_by(keyt: "testimonial4")

    if @testimonial4 == nil
      Testimonial.create(keyt: "testimonial4", quote: "Placeholder. Use Tools to eneter real text")
    end

    @testimonial4 = Testimonial.find_by(keyt: "testimonial4")

    ### 5
    
    @testimonial5 = Testimonial.find_by(keyt: "testimonial5")

    if @testimonial5 == nil
      Testimonial.create(keyt: "testimonial5", quote: "Placeholder. Use Tools to eneter real text")
    end

    @testimonial5 = Testimonial.find_by(keyt: "testimonial5") 

    ### 6
    
    @testimonial6 = Testimonial.find_by(keyt: "testimonial6")

    if @testimonial6 == nil
      Testimonial.create(keyt: "testimonial6", quote: "Placeholder. Use Tools to eneter real text")
    end

    @testimonial6 = Testimonial.find_by(keyt: "testimonial6") 

    ### 7
    
    @testimonial7 = Testimonial.find_by(keyt: "testimonial7")

    if @testimonial7 == nil
      Testimonial.create(keyt: "testimonial7", quote: "Placeholder. Use Tools to eneter real text")
    end

    @testimonial7 = Testimonial.find_by(keyt: "testimonial7")  

    ### 8
    
    @testimonial8 = Testimonial.find_by(keyt: "testimonial8")

    if @testimonial8 == nil
      Testimonial.create(keyt: "testimonial8", quote: "Placeholder. Use Tools to eneter real text")
    end

    @testimonial8 = Testimonial.find_by(keyt: "testimonial8")	

  end
end
