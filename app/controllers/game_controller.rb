class GameController < ApplicationController

  def create
    @game = Game.new(params.require(:game).permit(
                                                    :player1_score,
                                                    :player2_score,
                                                    :player1_id,
                                                    :player2_id,
                                                    :played_at

                                                    )
                          )

  respond_to do |format|
    if @game.check_score && @game.save
      format.html do
        redirect_to log_path, notice: 'Juego creado con éxito'
      end
    else
      format.html {   render template: 'home/log' }
    end
  end


  end
end
