class CodesController < ApplicationController
  def langselect
  end

  def new
  	@codes = Codes.new(user_id: current_user.id)
  end

  def create
  	@codes = Codes.new(params.permit(:html,:css))
  	if @code.save
  		redirect_to edit_codes_path
  	else
  		redirect_to new_codes_path
  	end
  end

end
