class Chat < ApplicationRecord
  has_one :chat_image
  has_one :chat_text
end
