class Blog < ApplicationRecord
    # enum status: {draft: 0, published: 1}
    # extend FriendlyId
    # friendly_id :title, use: :slugged

    validates_presence_of :title, :body
# validates_presence_of ensures that a blog that is created must have a title and body
# PRESENCE OF
end
