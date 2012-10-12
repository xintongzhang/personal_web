class StaticPagesController < ApplicationController
 
 def home
 	if signed_in?
      @openpost  = current_user.openposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
	end
end
  def about
  end

  def contact
  end

  def message
  end
end
