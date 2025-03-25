class MuseumsController < ApplicationController
  before_action :set_museum, only: [:show, :edit, :update, :destroy]
  def index
    @museums = Museum.all
  end

  def show
  end

  def new
    @museum = Museum.new
  end

  def create
    @museum = Museum.new(museum_params)
    if @museum.save
      redirect_to @museum, notice: "Musée ajouté avec succès !"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @museum.update(museum_params)
      redirect_to @museum, notice: "Musée mis à jour !"
    else
      render :edit
    end
  end

  def destroy
    @museum.destroy
    redirect_to museums_path, notice: "Musée supprimé."
  end

  private

  def set_museum
    @museum = Museum.find(params[:id])
  end

  def museum_params
    params.require(:museum).permit(:name, :description, :address, :image_url)
  end
end
