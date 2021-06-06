class UrlShortener
  prepend SimpleCommand
  attr_reader :url

  # TODO move short url creation to the background
  def initialize(url)
    @url = url
  end

  def call
    client = Bitly::API::Client.new(token: Rails.configuration.bitly_token)
    client.shorten(long_url: url).link rescue StandardError => e.message
  end

end
