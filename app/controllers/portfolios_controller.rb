class PortfoliosController < ApplicationController
  skip_before_action :authenticate_user!#, only: [:index]

  def index
    @portfolios_profesional = Portfolio.show_profesional 
    @portfolios_consultoria = Portfolio.show_consultoria
    @portfolios_gallery = Portfolio.show_gallery
  end
end
