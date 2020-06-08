class EventCreationService
  attr_reader :event
  def initialize(event)
    @event = event
  end

  def call
    create_event
  end

  private

  def create_event
    Event.create(event[event])
    @event[:event].save
  end
end
