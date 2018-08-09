require 'rails_helper'

RSpec.describe Sport do
  let(:sport) { Sport.new(
    name: 'sample sport',
    description: 'This is not really a sport.'
  ) }

  describe 'validations' do
    describe 'name' do
      it 'must be present' do
        expect(sport).to be_valid
        sport.name = nil
        expect(sport).to_not be_valid
      end
    end

    describe 'description' do
      it 'must be present' do
        expect(sport).to be_valid
        sport.description = nil
        expect(sport).to_not be_valid
      end
    end
  end
end
