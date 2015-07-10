class Message < ActiveRecord::Base
  belongs_to :sender, class_name: "Account"
  belongs_to :reciever, class_name: "Account"
  # order by most recent
  default_scope -> { order(created_at: :desc) }
  
  validates :sender_id, presence: true
  validates :reciever_id, presence: true
  validates :title, presence: true, length: { maximum: 100 }
  validates :content, length: { maximum: 2000 }
end
