class EventRegistrationService
  attr_reader :user, :event
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
    @user = current_user
    @event = Event.find(params[:event_id])
    @registration = Registration.new(user: @user, event: @event)
    @registration.save
  end
end
