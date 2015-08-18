require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'tvshows'
)

# GET Get list
get '/api/shows' do
  TvShow.all.to_json
end

# GET Get Individual
get '/api/shows/:id' do
  @tvshow = TvShow.find(params[:id]).to_json
end

# POST Create new show
post '/api/shows' do
  puts params
  tvshow_args = {
    :title => params[:title],
    :start_year => params[:start_year],
    :end_year => params[:end_year],
    :characters => params[:characters],
    :plot => params[:plot],
    :original_network => params[:original_network]
  }
  TvShow.create(tvshow_args).to_json
end

# PATCH Update show
patch '/api/shows/:id' do
  puts params
  tvshow_args = {
    :title => params[:title],
    :start_year => params[:start_year],
    :end_year => params[:end_year],
    :characters => params[:characters],
    :plot => params[:plot],
    :original_network => params[:original_network]
  }
  @tvshow = TvShow.find(params[:id])
  @tvshow.update(tvshow_args)
  @tvshow.to_json
end

# PUT Update show
put '/api/shows/:id' do
  puts params
  tvshow_args = {
    :title => params[:title],
    :start_year => params[:start_year],
    :end_year => params[:end_year],
    :characters => params[:characters],
    :plot => params[:plot],
    :original_network => params[:original_network]
  }
  @tvshow = TvShow.find(params[:id])
  @tvshow.update(tvshow_args)
  @tvshow.to_json
end

# DELETE Delete show
delete '/api/shows/:id' do
  @tvshow = TvShow.find(params[:id])
  @tvshow.destroy.to_json
end
