class SpecificEventCustomAttributesManager
  def initialize(event_id:)
    @event = Event.find(event_id)
  end

  def call

  end
end
