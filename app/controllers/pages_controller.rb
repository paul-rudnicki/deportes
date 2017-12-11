class PagesController < ApplicationController
  def home
  end

  def about_us
  end

  def contact
    ContactMailer.contact(params[:name], params[:email], params[:message]).deliver
    flash[:notice] = 'Email został wysłany'
  end

  def przeciwpozarowe
    @przeciwpozarowe = Page.where(slug: 'bramy-przeciwpozarowe').take
  end

  def segmentowe
    @segmentowe = Page.where(slug: 'bramy-segmentowe').take
  end

  def przemyslowe
    @przemyslowe = Page.where(slug: 'bramy-przemyslowe').take
  end

  def uchylne
    @uchylne = Page.where(slug: 'bramy-uchylne').take
  end

  def roletowa
    @roletowa = Page.where(slug: 'bramy-roletowa').take
  end
end
