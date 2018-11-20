class Item < ApplicationRecord
  belongs_to :list # adds methods to model:
  # https://apidock.com/rails/ActiveRecord/Associations/ClassMethods/belongs_to
end
