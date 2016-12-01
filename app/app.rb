ENV['RACK_ENV'] ||= 'development'
require 'sinatra/base'
require './app/models/link'
require './app/models/data_mapper_setup.rb'
require 'pry'

class Bookmark_manager < Sinatra::Base

  get '/links/new' do
    erb(:'links/new')
  end

  get '/links' do
    @links = Link.all
    erb(:'links/index')
  end

  post '/links' do
    link = Link.create(:title => params[:title], :url => params[:url])
    params[:tags].split.each { |tag| link.tags << Tag.first_or_create(:tag => tag)}
    link.save
    redirect '/links'
  end

  get '/tags/:tag' do
    tag = Tag.all(:tag =>(params[:tag]))
    @filter_links = tag.links
    erb(:'links/link_filter')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
