require 'sinatra'
require 'active_record'
require_relative './app/models/spider.rb'

ActiveRecord::Base.establish_connection(adapter: 'postgresql')

get '/' do
  @title = "List of spiders!"
  # @body = []
  # Spider.all.each { |x| @body << x.name }.map {|x| x = "#{x}<br/>"}.to_s

  @body = ''
  Spider.all.each do |x|
    @body += "#{x.name} <br/>"
  end
  erb :index
end


get '/add/:new_name' do
  @title = "A new spider was born!"
  # @body = []
  # Spider.all.each { |x| @body << x.name }.map {|x| x = "#{x}<br/>"}.to_s
  Spider.create!({:name => params[:new_name]})
  @body = ''
  Spider.all.each do |x|
    @body += "#{x.name} <br/>"
  end
  erb :index
end

get '/smash/:spider_name' do
  @title = "You smashed #{params[:spider_name]}, the spider!"
  # @body = []
  # Spider.all.each { |x| @body << x.name }.map {|x| x = "#{x}<br/>"}.to_s
  Spider.create!({:name => params[:new_name]})
  @body = ''
  Spider.all.each do |x|
    @body += "#{x.name} <br/>"
  end
  erb :index
end
