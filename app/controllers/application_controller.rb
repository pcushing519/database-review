class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def show
    @bookmark = Bookmarks.find_by_id(params['id'])
    render 'show'
  end
  
  def new
  end
  
  def create
    b = Bookmarks.new
    b.name = params['name']
    b.url = params['url']
    b.description = params['description']
    b.save
    redirect_to "/bookmarks/#{ b.id }"
  end
  
  def edit
  end
  
end
