class Panel::PagesController < Panel::ApplicationController

  def index
    if params[:search].present?
      @pages = Page.matching_title(params[:search]).page(params[:page]).per(2)
    else
      @pages = Page.all.page(params[:page]).per(2)
    end
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      redirect_to panel_pages_path, notice: 'Poprawnie utworzono nową stronę.'
    else
      flash[:alert] = 'Nie udało się utworzyć nowej strony.'
      render :new
    end
  end

  def edit
    @page = Page.friendly.find(params[:id])
  end

  def update
    @page = Page.friendly.find(params[:id])
    if @page.update(page_params)
      redirect_to panel_pages_path, notice: 'Poprawnie zaaktualizowano stronę.'
    else
      flash[:alert] = 'Wystąpił błąd przy aktualizacji strony.'
      render :edit
    end
  end

  def destroy
    @page = Page.friendly.find params[:id]
    @page.destroy
    redirect_to panel_pages_url, notice: 'Poprawnie usunęto stronę.'
  end

  private

  def page_params
    params.require(:page).permit(:id, :title, :content, :publish, :user_id, :avatar)
  end
end
