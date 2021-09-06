class QuestionsController < ApplicationController

  before_action :find_test only: %i[index create show destroy]
  before_action :find_question only: %i[show destroy update edit]

  rescue_form ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def new
    @question = @test.questions.new
  end

  def show
    render plain: @question.inspect
  end

  def update
     if @question.update(questions_params)
      redirect_to @question
    else
      render :edit
    end

  end

  def edit

  end

  def create
    question = @test.questions.new(question_params)
    if question.save
      render plain: question.inspect
    else
      render plain: 'The question was not created!'
    end

  end

  def destroy
    @question.destroy
    redirect_to @test
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
