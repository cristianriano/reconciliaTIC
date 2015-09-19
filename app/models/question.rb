class Question < ActiveRecord::Base

	has_many :answers, dependent: :destroy
	default_scope -> { order(created_at: :asc) }

	validates :content, presence: true
	validates :zone, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
    before_save :upcase_zone

    def self.answered
      questions = Question.all
      answered = Array.new
      questions.each do | q |
      	if q.answers.count > 0
      		answered.push(q)
      	end
      end
      return answered
    end

    private

        def upcase_zone
          self.zone = zone.upcase
        end
end
