require "./config/environment"
require "./app/models/tweet"

class ApplicationController < Sinatra::Base
  
  configure  do 
    set :public_folder, "public"
    set :views, "app/views"
  end 
  
  #   symbol used in hashes and calling certain methods 
  get "/" do
    @jims_tweet = Tweet.new("jim", "Hello, I'm a Steelers fan!")
    @dans_tweet = Tweet.new("danny", "Hello")
    @joes_tweet = Tweet.new("joe", "Blabla")
    @all_tweets = Tweet.all
    puts @all_tweets
    erb :index
  end
    
    post '/new_tweet' do
      Tweet.new(params[:username], params[:message])
      @all_tweets = Tweet.all
      erb :index
    end
    
 
  
end

# make a new route for "post "/new_tweet"
# in that route, create a new instance of the tweet with the data from params
# load all the tweets into an instance variable 
# render the index page"