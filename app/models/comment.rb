class Comment < ActiveRecord::Base
  belongs_to :pit
  belongs_to :user
end
