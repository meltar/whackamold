class GamesController < ApplicationController

  def index
		@games = Game.all
		respond_to do |format|
			format.html
			format.json { render json: @games }
		end
  end

  def new
		@game = Game.new
  end

  def create
		@game = Game.new(game_params)
		if @game.save
			redirect_to 'games#index'
		else
			# show error?
			render 'new'
		end
  end

	def game_params
		params.require(:game).permit(:name, :score)
	end
end
