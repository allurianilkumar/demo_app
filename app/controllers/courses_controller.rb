class CoursesController < ApplicationController
    #layout "courses"
  def index
    @courses = Course.all
  end
  def new
    @course = Course.new
  end
  def create
    @course = Course.new
    # render :text => params.inspect and return
    @course.title = params[:course][:title]
    @course.outcome = params[:course][:outcome]
    @course.description = params[:course][:description]
    @course.fee = params[:course][:fee]
    # render :text => params.inspect and return
    if @course.save
      redirect_to courses_path
    else
      # render :text => params.inspect and return
      render 'new'
    end
  end
  def show
    @course = Course.find(params[:id])
  end
  def edit
    @course = Course.find(params[:id])
    #render :text => params.inspect and return
  end
  def update
    @course = Course.find(params[:id])
    @course.title = params[:course][:title]
    @course.outcome = params[:course][:outcome]
    @course.description = params[:course][:description]
    @course.fee = params[:course][:fee]
    if @course.save
      redirect_to courses_path
    else
      render 'edit'
      #flash[:notice] = "You are signed up successfully"
    end
  end
  def destroy
      @course = Course.find(params[:id]).destroy
      redirect_to courses_path
  end
end
