class ListController < ApplicationController
  def index
    @lists = List.all
  end

  def show
  end
   @list = List.find(params[:id])

  def new
    @lists = List.new
  end

  def create
    @list= List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def edit
      @list = List.find(params[:id])
    end

    def update
    @list = List.find(params[:id])
    if @list.update(list_params)
      redirect_to list_path(@list)
    else
      render :edit
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to list_path
  end


  private
  def list_params
    params.require(:list_person).permit(:title, :body )
  end
end
