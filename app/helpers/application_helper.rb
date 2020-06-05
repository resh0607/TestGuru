module ApplicationHelper
  def current_year
    "#{Time.current.year.to_i}"
  end

  def github_url(author, repo)
    link_to 'TestGuru', "https://github.com/#{author}/#{repo}", target: '_blank'
  end

  def bootstrap_class_for(name)
    {
      success: "alert-success",
      error:   "alert-danger",
      danger:  "alert-danger",
      alert:   "alert-warning",
      notice:  "alert-info"
    }[name.to_sym] || name
  end

  def gist_hash_link(gist)
    link_to "#{gist.url.split('https://gist.github.com/')[1]}", gist.url, target: '_blank'
  end

end
