class OpenpostsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy

  def create
     @openpost = current_user.openposts.build(params[:openpost])
    if @openpost.save
      flash[:success] = "post created!"
      redirect_to root_url
    else
      @feed_items = ['abc']
      render 'static_pages/home'
    end

  end

  def destroy
    @micropost.destroy
    redirect_to root_url
  end

  private

    def correct_user
      @micropost = current_user.microposts.find_by_id(params[:id])
      redirect_to root_url if @micropost.nil?
    end
end