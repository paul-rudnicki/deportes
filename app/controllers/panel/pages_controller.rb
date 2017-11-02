class Panel::PagesController < Panel::ApplicationController

  def index
    if params[:search].present?
      @pages = Page.matching_title(params[:search]).page(params[:page]).per(2)
    else
      @pages = Page.all.page(params[:page]).per(2)
    end
  end

  def new
  end

  def create
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
end
