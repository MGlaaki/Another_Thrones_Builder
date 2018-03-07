class CardsController < ApplicationController

  def index
    @cards = Card.all
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(params.require(:card).permit(:title, :house))
    @card.save
    redirect_to cards_url
  end

end
