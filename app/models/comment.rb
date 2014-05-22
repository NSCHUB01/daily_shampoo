class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user#, :as => owner

end


