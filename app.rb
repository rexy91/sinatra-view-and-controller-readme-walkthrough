require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do 
    @user = 'Ian'

    erb :index # @User will be definded as "Ian" in the view.
  end 

  get '/profile' do 
      erb :profile # @User will be nil here 
  end 

  get '/reverse' do
    
    erb :reverse
  end

  post '/reverse' do
    original_string = params["string"]
    @reversed_string = original_string.reverse 
    erb :reversed
  end

  get '/friends' do
    # Write your code here!
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends
  end
end