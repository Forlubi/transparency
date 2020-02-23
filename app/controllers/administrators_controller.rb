class AdministratorsController < ApplicationController
  def index
    @administrator = Administrator.all
  end
  def show
    @administrator = Administrator.find(params[:id])
  end
  def new
    @administrator = Administrator.new
  end
  def create
    @administrator = Administrator.new(administrator_params)
    if @administrator.save
      flash[:success] = "Welcome to the CoB Transparency Project"
      redirect_to @administrator
    else
      render 'new'
    end
  end
  private

    def administrator_params
      params.require(:administrator).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
