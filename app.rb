# app.rb

require 'sinatra'
require 'sinatra/activerecord'
require './environments'


# class Post < ActiveRecord::Base
# end

get '/' do
  @title = "Today, we're going to talk about JUMPING SPIDERS!"
  @body = "\nThere are more than 5,000 species of jumping spiders around the world.  Unlike most spiders, which act like trappers, jumping spiders are active hunters.  Because of this, they have evolved to have the best vision of all arthropods.\n Many jumping spiders have a complex(and dangerous) mating ritual.  The male must perform a dance which, if he doesn't get right, will cause the female to consume him on the spot! \nFrom my experience, jumping spiders make great pets.  Unlike tarantulas they are highly active."
  erb :"index"
end

