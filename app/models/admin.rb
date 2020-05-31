class Admin < ApplicationRecord
  validates :email, presence: true
  validates :password, presence: true

  def change(instance, arg, value)
    if instance.class == Event
      case arg
      when 'title'
        instance.title = value
      when 'date'
        instance.date = value
      when 'description'
        instance.description = value
      when 'location'
        instance.location = value
      when 'owner'
        instance.owner = value
      when 'full'
        instance.full = value
      else
        'not found'
      end
    elsif instance.class == User
      case arg
      when 'firstname'
        instance.firstname = value
      when 'lastname'
        instance.lastname = value
      when 'email'
        instance.email = value
      when 'password'
        instance.password = value
      else
        'not found'
      end
    else
      'error'
    end
  end

  def read(event, arg)
    case arg
    when 'title'
      event.title
    when 'date'
      event.date
    when 'description'
      event.description
    when 'location'
      event.location
    when 'owner'
      event.owner
    when 'full'
      event.full
    else
      'not found'
    end
  end
end
