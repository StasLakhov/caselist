class CasetitlesController < ApplicationController

  def index
    @casetitles = Casetitle.all
  end

  def show
    @casetitle = Casetitle.find(params[:id])
  end

  def new
    @casetitle = Casetitle.new
  end

  def create
    @casetitle = Casetitle.create(casetitle_params)
    if casetitle.save(casetitle_params)
      redirect_to @casetitle
    else
      render 'new'
    end
  end

  def edit
    @casetitle = Casetitle.find(params[:id])
  end

  def update
    @casetitle = Casetitle.find(params[:id])
    if @casetitle.update(casetitle_params)
      redirect_to @casetitle
    else
      render 'new'
    end
  end

  def destroy
    @casetitle = Casetitle.find(params[:id]).destroy
    redirect_to casetitles_path
  end

  private

  def casetitle_params
    params.require(:casetitle).permit(:title, :summary)
  end

end
