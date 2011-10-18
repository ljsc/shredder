class CategoriesController < ApplicationController
  def index
@questions = Question.all
	@categories =  @questions.map {|q| q.catagory}.uniq.sort
  end


  def show
@questions = Question.all

	@questions =  @questions.select {|q| q.catagory ==params[:id]}
  end

end
