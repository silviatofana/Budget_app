class Group < ApplicationRecord
  belongs_to :user, class_name: 'User', optional: true
end