class User < ApplicationRecord
  enum role: { admin: 'admin', user: 'user' }
  validates :firstname, :lastname, :password, :role, presence: true
  validates :email, presence: true, uniqueness: true
  has_many :registrations
  has_many :events, through: :registrations
  has_many :custom_attributes

  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :user
  end

  # def read_user(user, arg)
  #   case arg
  #   when 'firstname' then user.firstname
  #   when 'lastname' then user.lastname
  #   when 'email' then user.email
  #   when 'password' then user.password
  #   else
  #     'error'
  #   end
  # end

  # def fill(arg, value)
  #   case arg
  #   when 'firstname' then self.firstname = value
  #   when 'lastname' then self.lastname = value
  #   when 'email' then self.email = value
  #   when 'password' then self.password = value
  #   when 'required' then self.required = value
  #   else
  #     'error'
  #   end
  # end

  # def change_event(event, arg, value)
  #   case arg
  #   when 'title' then event.title = value
  #   when 'date' then event.date = value
  #   when 'description' then event.description = value
  #   when 'location' then event.location = value
  #   when 'owner' then event.owner = value
  #   when 'full' then event.full = value
  #   when 'required' then event.required = value
  #   else
  #     'error'
  #   end
  # end

  # def change_user(user, arg, value)
  #   case arg
  #   when 'firstname' then user.firstname = value
  #   when 'lastname' then user.lastname = value
  #   when 'email' then user.email = value
  #   when 'password' then user.password = value
  #   when 'required' then user.required = value
  #   else
  #     'error'
  #   end
  # end

  # def read_event(event, arg)
  #   case arg
  #   when 'title' then event.title
  #   when 'date' then event.date
  #   when 'description' then event.description
  #   when 'location' then event.location
  #   when 'owner' then event.owner
  #   when 'full' then event.full
  #   else
  #     'error'
  #   end
  # end
end
