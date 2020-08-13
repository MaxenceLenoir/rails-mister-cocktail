class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render "new"
    end
  end

  def destroy
    @dose = Dose.find_by(cocktail_id: params[:id])
    @dose.destroy
    redirect_to cocktail_path(params[:id])
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :coktail_id, :ingredient_id)
  end

end
