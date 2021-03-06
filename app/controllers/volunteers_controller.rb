class VolunteersController < ApplicationController

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.new(volunteer_params)
    if @volunteer.save
      session[:volunteer_id] = @volunteer.id
      flash[:notice] = "Account Created! Logged in as #{@volunteer.username}"
      redirect_to '/cart'
    else
      flash.now[:error] = "Invalid. Please try again."
      render :new
    end
  end

  def show
    render file: '/public/404' if current_volunteer.nil?
    @volunteer = current_volunteer
  end

  def edit
    render file: '/public/404'
  end

  private

  def volunteer_params
    params.require(:volunteer).permit(:first_name, :last_name, :username,
                                      :email, :password, :password_confirmation)
  end
end
