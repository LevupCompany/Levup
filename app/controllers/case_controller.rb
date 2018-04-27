class CaseController < ApplicationController
  def index
  end
  def new
    @case = Case.new
  end
  def create
    if @post.safe
      flash[:success] = "Емае, кейсик создан, Мих если это ты то красавчик Ваааще"
      redirect_to @post
    else
      flash.now[:error] = "Мих ну ты че, ну нормально все проверь и отправь снова"
      render :new
    end
  end
  def show
    @case = Case.find(params[:id])
  end
  def edit
    @case = Case.find(params[:id])
    render :edit
  end
  def update
    @case = Case.find(params[:id])
    @case.update(title: params[:title], description: params[:description], annotation: params[:annotation], tag: params[:tag], image: params[:image])
    redirect_to case_path(@case)
  end
  def destroy
    @case = Case.find(params[:id])
    @case.destroy
    redirect_to action: "index"
  end
end
