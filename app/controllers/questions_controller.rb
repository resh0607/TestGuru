class QuestionsController < ApplicationController
  before_action :find_test, only: %i[index create ]
  before_action :find_question, only: %i[show destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_record_not_found

  def index
    render plain: @test.questions.pluck(:body).join("\n")
  end

  def show
    @test = @question.test
    render plain: "Test: #{@test.title}, question: #{@question.body}"
  end

  def new
  end

  def create
    @question = @test.questions.new(question_params)
    if @question.save
      redirect_to test_questions_path
    else
      render 'new'
    end
  end

  def destroy
    @test = @question.test
    @question.destroy
    redirect_to test_questions_path(@test)
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
  end

  def find_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:body)
  end

  def rescue_with_record_not_found
    message = params[:id].nil? ? 'Test not found' : 'Question not found'
    render plain: message
  end
end
