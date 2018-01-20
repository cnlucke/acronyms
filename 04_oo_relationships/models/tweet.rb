
class Tweet
  attr_accessor :text
  attr_reader :username

  @@all = []

  # def self.new(args*)
  #   t = Object.new()
  #   # some stuff to make the args what we want
  #   t.initialize(text, username)
  #   t
  # end

  def initialize(text, username)
    @text = text
    @username = username

    @@all << self
  end


  def self.delete_tweet(text_to_delete, username_to_delete)
    tweet_to_delete = @@all.find do |t|
      text_to_delete == t.text && username_to_delete == t.username
    end

    # username_todelete.tweets.delete()

    delete_one(tweet_to_delete)
  end

  #the input of this is a tweet object
  def self.delete_one(tweet)
    @@all.delete(tweet)
  end

  def self.all
    @@all
  end
end
