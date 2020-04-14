
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end

  get '/articles/new' do
    erb :new
  end

  post '/articles' do
<<<<<<< HEAD
      @article = Article.create(params)
      redirect "/articles/#{@article.id}"
    end
=======
    Article.create(params)
    redirect '/articles/:id'
  end
>>>>>>> f0ada409982e3a90f5cca91a2c8f31c3c9b1af26

  get '/articles' do
    @articles = Article.all
    erb :index
  end

  get '/articles/:id' do
    @article = Article.find(params["id"])
    erb :show
  end

<<<<<<< HEAD
  get '/articles/:id/edit' do
    @article = Article.find(params["id"])
    erb :edit
  end

  patch '/articles/:id' do
    new_params = {}
    old_post = Article.find(params["id"])
    new_params[:title] = params["title"]
    new_params[:content] = params["content"]
    old_post.update(new_params)

    redirect "/articles/#{id}"
  end


  delete '/articles/:id/delete' do
    @article = Article.find(params["id"])
    @article.destroy
  end

=======
>>>>>>> f0ada409982e3a90f5cca91a2c8f31c3c9b1af26
end
