class Admin < ApplicationRecord
  validates :email, :password, presence: true

  def change_event(event, arg, value)
    case arg
    when 'title' then event.title = value
    when 'date' then event.date = value
    when 'description' then event.description = value
    when 'location' then event.location = value
    when 'owner' then event.owner = value
    when 'full' then event.full = value
    when 'required' then event.required = value
    else
      'error'
    end
  end

  def change_user(user, arg, value)
    case arg
    when 'firstname' then user.firstname = value
    when 'lastname' then user.lastname = value
    when 'email' then user.email = value
    when 'password' then user.password = value
    when 'required' then user.required = value
    else
      'error'
    end
  end

  def read_event(event, arg)
    case arg
    when 'title' then event.title
    when 'date' then event.date
    when 'description' then event.description
    when 'location' then event.location
    when 'owner' then event.owner
    when 'full' then event.full
    else
      'error'
    end
  end
end
