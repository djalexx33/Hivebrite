class EventRegistrationService
  attr_reader :user
  def initialize(user, event)
    @user = user
    @event = event
  end

  def call
    create_registration
    # send confirmation email
  end

  private

  def create_registration
    @registration = Registration.new(user: user, event: event)
    @registration.save
  end
end
