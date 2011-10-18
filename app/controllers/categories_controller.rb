class CategoriesController < ApplicationController
  def index
    @categories = Question.all.map {|q| q.catagory}.uniq.sort
  end

  def show
    @questions = Question.all.select {|q| q.catagory == params[:id]}
  end
end
