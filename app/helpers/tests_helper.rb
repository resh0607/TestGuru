module TestsHelper

  def active(test)
    unless test_passage_active?(test)
      '<i class="fas fa-play-circle"></i>'
    end
  end

  def start_button(test)
    if test_passage_active?(test)
      t('.start')
    else
      t('.continue')
    end
  end

  def test_passage_active?(test)
    current_user.test_passage(test).nil? || current_user.test_passage(test).completed?
  end
end
