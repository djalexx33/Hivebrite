require 'rails_helper'

RSpec.describe Event, type: :model do
  let(:john) { Admin.new(firstname: 'jOhN', lastname: 'doE', email: 'john@doe.com', password: 'azerty') }
  subject {
    described_class.new(title: 'Climate Summit 2020',
                        date: 'Tue, 9 June 2020',
                        description: 'a coordinated national response is more important than ever to protect from the escalating impacts of climate change.',
                        location: 'Online Event',
                        owner: john,
                        full: false)
  }

  describe 'Validation' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a title' do
      subject.title = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without an date' do
      subject.date = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a location' do
      subject.location = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a owner' do
      subject.owner = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a full' do
      subject.full = nil
      expect(subject).to_not be_valid
    end
  end
end
