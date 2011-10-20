class AnswersController < ApplicationController
  def new
    @answer = Answer.new
    @question = Question.find(params[:question_id])
  end

  def create
    @answer = Answer.new(params[:answer])
    @question = Question.find(params[:question_id])

    @answer.author = current_user

    if @answer.save
      @question.answers << @answer
      redirect_to question_path(@question), :message => 'Answer added'
    else
      render :action => 'new'
    end
  end
end
