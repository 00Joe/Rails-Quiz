class QuestionsController < ApplicationController

    def home
      respond_to do |format|
        format.html
      end
    end


  def index
    @questions = Question.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @questions}
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
  end

  def create
    @question = Question.new(question_params) #.permit(:question, :answer, :one, :two, :three, :four)

    if @question.save
      redirect_to @question
    else
      render 'new'
    end
  end

  private
    def question_params
      params.require(:question).permit(:question,:answer, :one, :two, :three, :four, :Quiz_Num)
    end

end
