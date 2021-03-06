# == Schema Information
#
# Table name: posts
#
#  id         :bigint(8)        not null, primary key
#  title      :string           not null
#  url        :string
#  content    :text
#  author_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
  validates :title, presence: true
  validates :subs, presence: { message: 'must have at least one sub' }

  belongs_to :author,
  foreign_key: :author_id,
  class_name: :User

  has_many :post_subs,
  foreign_key: :post_id,
  class_name: :PostSub,
  inverse_of: :post

  has_many :subs,
  through: :post_subs,
  source: :sub

  has_many :comments,
  dependent: :destroy

  # def comments_by_parent
  #
  #   self.comments.each do |com|
  #     comments_by_parent[com.parent_comment_id] << com
  #   end
  # end
end
