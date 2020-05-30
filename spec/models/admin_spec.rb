require 'rails_helper'

RSpec.describe Admin, type: :model do
  subject {
    described_class.new(password: 'azerty',
                        email: 'john@doe.com')
  }
  let(:user) { User.new(firstname: 'Alex',
                        lastname: 'Bart',
                        email: 'alex.bart@gmail.com',
                        password: 'azerty') }

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a password' do
      subject.password = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without an email' do
      subject.email = nil
      expect(subject).to_not be_valid
    end
  end

  describe 'Managing' do
    let(:event) { Event.new(title: 'Climate Summit 2020',
                            date: 'Tue, 9 June 2020',
                            description: 'a coordinated national response is more important than ever to protect from the escalating impacts of climate change.',
                            location: 'Online Event',
                            owner: subject,
                            full: false) }

    it 'changes the password' do
      expect(subject.change(user, 'password', 'querty')).to_not eq('azerty')
    end

    it 'changes the title' do
      expect(subject.change(event, 'title', 'Act for Climate 2020')).to_not eq('Climate Summit 2020')
    end
  end

  # describe 'Option' do
  #   it 'defines the firstname as optional' do
  #     expect(subject.option(user, ...))
  #   end
  # end
end
