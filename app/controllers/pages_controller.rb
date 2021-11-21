class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home dive project coach aboutus]

  def home; end

  def dive; end

  def project
    @portfolios_noticias = Portfolio.show_noticias
    @portfolios_gallery = Portfolio.show_gallery
  end

  def coach; end

  def aboutus; end

  def education; end


end
