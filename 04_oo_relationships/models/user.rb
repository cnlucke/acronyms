class User
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username

    @@all << self
  end

  def tweet(text)
    Tweet.new(text, @username)
  end

  def get_tweets
    Tweet.all.select do |t|
      @username == t.username
    end
  end

  def tweets_about(topic)
    get_tweets.select do |t|
      t.text.include?(topic)
    end
  end

  def tweet_texts
    get_tweets.map do |t|
      t.user
    end
  end

  def delete_tweet(text)
    Tweet.delete_tweet(text, @username)
  end

  def self.all
    @@all
  end
end
