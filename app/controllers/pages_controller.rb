class PagesController < ApplicationController
  def index
  	@pages = Page.all
  end

	def create
		page_params = params.require(:page).permit(:title,:body,:slug)
		@page = Page.new(page_params)
		@page.save
		redirect_to '/pages/'
	end

  def new
  	@page =Page.new 
  end
  

  def show
  	@page = Page.find(params[:id])
  end

  def edit
  	@page = Page.find(params[:id])
  end
  def update
  	page_params = params.require(:page).permit(:title,:body,:slug)
	@page = Page.find(params[:id])	
	@page.update(page_params)
  	redirect_to page
  end

  def destroy
  	@page = Page.find(params[:id])
  	@page.destroy
  	redirect_to '/pages/'
  end

end
