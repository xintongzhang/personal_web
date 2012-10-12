class Openpost < ActiveRecord::Base
  attr_accessible :content, :like
  belongs_to :user

  validates :user_id, presence:true
  default_scope order: 'openposts.created_at DESC'
end
