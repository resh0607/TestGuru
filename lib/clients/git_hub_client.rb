class GitHubClient

  ROOT_ENDPOINT = "https://api.github.com"

  def initialize
    @http_client = set_http_client
  end

  private

  def set_http_client
    Faraday.new(url: ROOT_ENDPOINT)
  end
end