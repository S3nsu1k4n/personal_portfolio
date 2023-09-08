class PortfolioController < ApplicationController
  def index
    @owner = Owner.new
  end
end

class Owner
  attr_reader :name, :tagline, :bio, :github_url, :linkedin_url, :email, :photo_url, :gravatar_url, :projects

  def initialize
    @name = 'Sascha Koeppe'
    @tagline = 'Software Engineer'
    @bio = 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.'
    @github_url = 'https://www.github.com'
    @linkedin_url = 'https://www.linkedin.com'
    @email = 'saschakoeppe@gmail.com'
    @photo_url = 'urltophoto.com'
    @gravatar_url = 'https://www.gravatar.com/avatar/ff3cf5f8a5d7dd392d73193e9635e497'
    @projects = 6.times.map { Project.new }
    p @projects
  end
end

class Project
  attr_reader :name, :description, :github_url, :live_url, :img_url

  def initialize(name=nil, description=nil, github_url=nil, live_url=nil, img_url=nil)
    @name = name || 'Project name'
    @description = description || 'Short description of the project. Just a couple sentences will do.'
    @github_url = github_url || 'some_github_url.com'
    @live_url = live_url || 'some_live_url_.com'
    @img_url = img_url || 'https://www.gravatar.com/avatar/ff3cf5f8a5d7dd392d73193e9635e497'
  end
end
