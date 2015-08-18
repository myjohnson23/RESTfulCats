require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'restfulimprovgroups'
)

# GET list
get '/api/improv_group' do
  ImprovGroup.all.to_json
end

# POST Create
post '/api/improv_group' do
  @improv_group = ImprovGroup.new
  @improv_group.groupname = params[:name]
  @improv_group.founded = params[:founded]
  @improv_group.members = params[:members]
  @improv_group.homeclub = params[:homeclub]
  @improv_group.recurringshow = params[:show]
  @improv_group.save
  @improv_group.to_json
end

# GET Read Individual Record
get '/api/improv_group/:id' do
  @improv_group = ImprovGroup.find(params[:id]).to_json
end

# PATCH Update Record
patch '/api/improv_group/:id' do
  improv_group_args = { :groupname => params[:name], :founded => params[:founded], :members => params[:members], :homeclub => params[:homeclub], :recurringshow => params[:show]}
  @improv_group = ImprovGroup.find(params[:id])
  @improv_group.update(improv_group_args)
  @improv_group.to_json
end

# PUT Update Record
put '/api/improv_group/:id' do
  improv_group_args = { :groupname => params[:name], :founded => params[:founded], :members => params[:members], :homeclub => params[:homeclub], :recurringshow => params[:show]}
  @improv_group = ImprovGroup.find(params[:id])
  @improv_group.update(improv_group_args)
  @improv_group.to_json
end

# DELETE Destroy Record
delete '/api/improv_group/:id' do
  ImprovGroup.destroy(params[:id]).to_json
end
