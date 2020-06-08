require 'rails_helper'

describe SubscribeToEvent do
  context 'integration tests' do
    let(:user) { Admin.new(firstname: 'AlEx', lastname: 'Bart', email: 'alex.bart@gmail.com', password: 'azerty') }
    before do
      @event_registration1 = EventRegistration.new(registration_date: 'Tue, 9 June 2020')
      # @event2 = Event.new({ date: 'Tue, 9 June 2020', description: 'a coordinated national response is more important than ever to protect from the escalating impacts of climate change.', location: 'Online Event', owner: user, full: false })
      # @event3 = Event.new({ title: 'Climate Summit 2020', description: 'a coordinated national response is more important than ever to protect from the escalating impacts of climate change.', location: 'Online Event', owner: user, full: false })
      # @event4 = Event.new({ title: 'Climate Summit 2020', date: 'Tue, 9 June 2020', location: 'Online Event', owner: user, full: false })
      # @event5 = Event.new({ title: 'Climate Summit 2020', date: 'Tue, 9 June 2020', description: 'a coordinated national response is more important than ever to protect from the escalating impacts of climate change.', owner: user, full: false })
      # @event6 = Event.new({ title: 'Climate Summit 2020', date: 'Tue, 9 June 2020', description: 'a coordinated national response is more important than ever to protect from the escalating impacts of climate change.', location: 'Online Event', full: false })
      # @event7 = Event.new({ title: 'Climate Summit 2020', date: 'Tue, 9 June 2020', description: 'a coordinated national response is more important than ever to protect from the escalating impacts of climate change.', location: 'Online Event', owner: user })

      @valid_params = { event_registration: @event_registration1 }
      # @invalid_params = { event: @event2 } || { event: @event3 } || { event: @event4 } || { event: @event5 } || { event: @event6 } || { event: @event7 }
    end

    it 'creates an event in the database' do
      expect { SubscribeToEvent.call(@valid_params) }.to change { EventRegistration.count }.by(1)
    end

    # it 'does not create a user in the database without a title' do
    #   expect { CreateEvent.call(@invalid_params) }.to change { Event.count }.by(0)
    # end

    # it 'does not create a user in the database without a date' do
    #   expect { CreateEvent.call(@invalid_params) }.to change { Event.count }.by(0)
    # end

    # it 'does not create a user in the database without a description' do
    #   expect { CreateEvent.call(@invalid_params) }.to change { Event.count }.by(0)
    # end

    # it 'does not create a user in the database without a location' do
    #   expect { CreateEvent.call(@invalid_params) }.to change { Event.count }.by(0)
    # end

    # it 'does not create a user in the database without an owner' do
    #   expect { CreateEvent.call(@invalid_params) }.to change { Event.count }.by(0)
    # end

    # it 'does not create a user in the database without a full value' do
    #   expect { CreateEvent.call(@invalid_params) }.to change { Event.count }.by(0)
    # end
  end
end
