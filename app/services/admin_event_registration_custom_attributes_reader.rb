class AdminEventRegistrationCustomAttributesReader
  def initialize(registration)
    @registration = registration
  end

  def call
    registration.custom_attribute.all
  end
end
