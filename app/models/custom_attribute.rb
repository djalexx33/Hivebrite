class CustomAttribute < ApplicationRecord
  belongs_to :customizable, polymorphic: true

  def value
    text_value.present? ? text_value : boolean_value
  end
end
