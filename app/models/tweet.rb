class Tweet
  #username, message
  
  ALL_TWEETS = []
  
  attr_accessor :username, :message
  
  def initialize(username, message)
    @username = username 
    @message = message
    ALL_TWEETS.push(self)
     #     @ means it's an instance variable 
  end

  def self.all
    ALL_TWEETS
  end
  
end






# getter and setter / reader and writer 