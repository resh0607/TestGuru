class TestPassagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_test_passage, only: %i[show result update gist]

  def show
  end

  def result
  end

  def update
    @test_passage.accept!(params[:answer_ids])

    if @test_passage.completed?
      @test_passage.set_end_time
      after_test_passing_actions
      redirect_to result_test_passage_path(@test_passage)
    else
      render :show
    end
  end

  def gist
    service = GistQuestionService.new(@test_passage.current_question)
    result = service.call

    if service.success?
      current_user.gists.create(question: @test_passage.current_question, url: result.html_url)
      flash[:notice] = t('.success') + " #{view_context.link_to t('.view_gist'), result.html_url }"
    else
      flash[:alert] = t('.failure')
    end
    
    redirect_to @test_passage
  end

  private

  def set_test_passage
    @test_passage = TestPassage.find(params[:id])
  end

  def after_test_passing_actions
    BadgeService.new(@test_passage).call if @test_passage.passed?
    TestsMailer.completed_test(@test_passage).deliver_now
  end
end
