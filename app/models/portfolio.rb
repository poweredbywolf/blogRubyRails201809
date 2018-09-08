class Portfolio < ApplicationRecord

     validates_presence_of :title, :body, :main_image, :thumb_image
# validates_presence_of ensures that a blog that is created must have a title and body
# PRESENCE OF
end
