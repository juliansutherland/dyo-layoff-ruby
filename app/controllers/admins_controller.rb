class AdminsController < ApplicationController

  def new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      sign_in @admin
      flash[:success] = "Time to fire coworkers!"
      redirect_to load_users
    else
      render 'new'
    end
  end

  def destroy
  end
end
