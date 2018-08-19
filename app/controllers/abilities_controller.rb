class AbilitiesController < ApplicationController

  before_action :set_ability, only: [:show, :edit, :update, :destroy]

  def index
    @abilities = Ability.all
  end

  def show

  end

  def new
    @ability = Ability.new
  end

  def create
    @ability = Ability.create(ability_params)
    redirect_to ability_path(@ability)
  end

  def edit
  end

  def update
    @ability.update(ability_params)
    redirect_to ability_path(@ability)
  end

  def destroy
    @ability.destroy
    redirect_to abilities_path 
  end

    private

    def set_ability
      @ability = Ability.find(params[:id])
    end

    def ability_params
      params.require(:ability).permit.(:name, :type, :damage)
    end

end
