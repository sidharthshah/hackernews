class ProfileController < ApplicationController
  def view
  	id = params[:id].to_i
  	@user_profile = User.find(id)
  end
end
