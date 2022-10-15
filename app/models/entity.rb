class Entity < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_and_belongs_to_many :groups, join_table: 'group_entities', dependent: :destroy
  validates :name, presence: true, length: { maximum: 250 }
  validates :amount, numericality: { greater_than: 0 }
end
