class CreateEvent
  def self.call(event)
    new(event).call
  end

  def call
    private_methods
    @event[:event].save
  end

  private

  def initialize(event)
    @event = event
  end

  attr_reader :event
end
