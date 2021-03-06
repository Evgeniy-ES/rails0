class QuestionsController < ApplicationController

  before_action :authenticate_user!
  before_action :find_test only: %i[index]
  before_action :find_question only: %i[show]

  rescue_form ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def new
    @question = @test.questions.new
  end

  def show
    render plain: @question.inspect
  end


  private

  def find_question
    @question = Question.find(params[:id])
  end

  def find_test
    @test = Test.find(params[:test_id])
  end

  def question_params
    params.require(:question).permit(:body)
  end

  def rescue_with_question_not_found
    render plain: 'Question was not found'
  end

end
