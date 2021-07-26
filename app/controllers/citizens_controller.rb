class CitizensController < ApplicationController
  before_action :set_citizen, only: [:edit, :update]

  def home
    @citizens = Citizen.all
  end
  
  def new
    @citizen = Citizen.new
    @citizen.build_address
 
  end
  
  def create
    @citizen = Citizen.new(citizen_params)
    if @citizen.save
      redirect_to root_path(@citizen)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @citizen.update(citizen_params)
      redirect_to root_path(@citizen)
    else
      render :edit
    end
  end

  private

  def set_citizen
    @citizen = Citizen.find(params[:id])
  end
  
  def citizen_params
    params.require(:citizen).permit(:id, :full_name, :cpf, :cns, :email, :birthdate, :phone, :status, address_attributes: [:id, :zip,
                                    :address_line1, :address_line2, :district, :city, :state, :ibge])
  end
end
