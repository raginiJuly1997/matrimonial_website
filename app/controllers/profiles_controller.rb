class ProfilesController < ApplicationController
  def index
        @female= Profile.where(gender:"female")
        @male= Profile.where(gender:"male")
        @profiles =Profile.all
  end

   def show
        @profile = Profile.find(params[:id])
   end

  def new
      @profile = Profile.new
  end

  def create
    #byebug
    @profile = Profile.new(profile_params)
      if @profile.save
        redirect_to @profile
      else
        render :new, status: :unprocesssble_entity
      end
  end

  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
    redirect_to root_path, status: :see_other
  end
  
   # byebug
    def search
      @profile = params[:query]
      @profiles = Profile.where("profiles.first_name like ?", ["%#{@profile}%"])
      render :index
    end


private
  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :gender, :address, :mobile_number, :hobbies, :father_name, :city, :pincode, :college_name, :job, :diet,:date_of_birth, :nationality, :religion, :marital_status, :income, :mother_name, :state, :about_yourself, :height,:image, :search)
  end
end
