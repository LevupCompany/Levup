class BlogController < ApplicationController
  def index
  end
  def new
    @blog = Blog.new
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
    @blog = Blog.find(params[:id])
  end
  def edit
    @blog = Blog.find(params[:id])
    render :edit
  end
  def update
    @blog = Blog.find(params[:id])
    @blog.update(title: params[:title], description: params[:description], annotation: params[:annotation], tag: params[:tag], image: params[:image])
    redirect_to blog_path(@blog)
  end
  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to action: "index"
  end
end
