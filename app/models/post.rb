class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w[Fiction Non-Fiction] }
  validate :must_have_clickbait_title

  def must_have_clickbait_title
    # byebug
    clickbait_arr = ["Won't Believe", 'Secret', 'Top', 'Guess']
    reg = Regexp.union(clickbait_arr)
    # unless clickbait_arr.any? { |cb| title.include?(cb) }
    puts title.match?(reg)
    # unless title.match?(reg)
    #   errors.add(:title, 'Title must include clickbait')
    # end

    # TODO: Figure out this error: undefined method `match?' for nil:NilClass
  end
end
