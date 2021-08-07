class QuestionsController < ApplicationController

  before_action :find_test
  before_action :find_question only: %i[show destroy]

  rescue_form ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index
    @questions = @test.questions
    render plain: questions.inspect
  end

  def show
    render plain: @question.inspect
  end

  def create
    question = Question.create(question_params)

    render plain: question.inspect
  end

  def destroy
    @question.destroy
  end

  private

  def find_question
    @question = Question.find(params[:id])
  end  

  def find_test
    @test = Test.find(1)
  end

  def question_params
    params.require(:question).permit(:body)
  end

  def rescue_with_question_not_found
    render plain: 'Question was not found'
  end

end