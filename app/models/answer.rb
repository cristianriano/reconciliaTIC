class Answer < ActiveRecord::Base
  belongs_to :question

  validates :content, presence: true
  validates :state, presence: true
end
