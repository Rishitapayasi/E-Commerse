class ProfilesController < ApplicationController

  def index
  end

	def new
		@profile = Profile.new
	end

	def create
		@profile = current_user.build_profile(profile_params)

    if @profile.save
      redirect_to profiles_path(@profile)
    else
      render :new, status: :unprocessable_entity
    end
	end
  
  private

  def profile_params
    params.require(:profile).permit(:full_name, :address, :phone_number, :ShippingAddress)
  end
end
