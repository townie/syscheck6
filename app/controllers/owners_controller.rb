class OwnersController < ApplicationController
  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)

    if @owner.save
      redirect_to @owner, notice: "Succesfully created new Dog"
    else
    end
  end

  def show
    @owner = Owner.find(params[:id])
  end

  def index
    @owners = Owner.all
  end

  private

  def owner_params
    params.require(:owner).permit(:id, :first_name, :last_name, :dog_name, :email )
  end
end
