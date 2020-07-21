class TestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_test, only: %i[start]
  
  def index
    @tests = Test.all
  end

  def start
    if current_user.test_passage(@test).nil? || current_user.test_passage(@test).completed?
      current_user.tests.push(@test)
      redirect_to current_user.test_passage(@test)
    else
    redirect_to current_user.test_passage(@test)
    end
  end

  private

  def set_test
    @test = Test.find(params[:id])
  end
end
