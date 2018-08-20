class DragonsController < ApplicationController

  before_action :set_dragon, only: [:show, :edit, :update, :destroy]

  def index
    @dragons = Dragon.all
  end

  def show
  end

  def new
    @dragon = Dragon.new
  end

  def create
    @dragon = Dragon.create(dragon_params)
    redirect_to dragon_path(@dragon)
  end

  def edit
  end

  def update
    @dragon.update(dragon_params)
    redirect_to dragon_path(@dragon)
  end

  def destroy
    @dragon.delete
    redirect_to dragons_path
  end

    private

    def set_dragon
      @dragon = Dragon.find(params[:id])
    end

    def dragon_params
      params.require(:dragon).permit(:name, :level, :clan, :user_id, ability_ids: [])
    end

end
