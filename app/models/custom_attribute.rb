class CustomAttribute < ApplicationRecord
  belongs_to :user
  belongs_to :event
  belongs_to :registration
  belongs_to :customizable, polymorphic: true

  def value
    text_value.present? ? text_value : boolean_value
  end
end
