class Todo < ApplicationRecord

  def text_message
    "#{self.title} - #{self.descrption} - #{self.created_at}"
  end
end
