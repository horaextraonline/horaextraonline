class UsersController < ApplicationController
  def index
    @users = User.all
  
    respond_to do |wants|
      wants.html # index.html.erb
      wants.xml  { render :xml => @users }
      wants.js
    end
  end
end
