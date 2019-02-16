class Post < ApplicationRecord
  belongs_to :user, counter_cache: true
  has_many :comments, dependent: :destroy

  def self.created_by_day
  	group_by_day(:created_at).count
  end


end
