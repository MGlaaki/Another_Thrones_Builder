class CardsController < ApplicationController

  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(params.require(:card).permit(:title, :house))
    @card.save
    redirect_to cards_url
  end

  def edit
    @card = Card.find(params[:id])
  end

  def update
    @card = Card.find(params[:id])
    @card.update(params.require(:card).permit(:title, :house))

    redirect_to cards_url
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to cards_url
  end

end
