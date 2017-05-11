class FinalratesController < ApplicationController
	def updaterate
			@truyen = Truyen.find(params[:id])
    		@finalrate = Finalrate.find_by_truyen_id(@truyen.id)
    		@rate = @truyen.ratings.average(:rate)
    		@number=@truyen.ratings.count
    		@id=@truyen.id
    		@finalrate.update(rate: @rate, number: @number)
    		redirect_to @truyen
  	end

  	def create
  		@truyen = Truyen.find(params[:id])
  		@id=@truyen.id
    	@finalrate = Finalrate.new(rate: 0, truyen_id: @id, number: 0)
    	if @finalrate.save
      		redirect_to @truyen
    	end
  	end
end
