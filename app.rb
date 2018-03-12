require 'sinatra/base'
require_relative './lib/link.rb'

class Bookmark_manager < Sinatra::Base

  get '/' do
    @links = Link.all
    erb(:index)
  end

  run! if app_file == $0

end