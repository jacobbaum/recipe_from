require 'rails_helper'


describe Direction do

  let(:direction) { Direction.new(direction: 'Cream together sugar and butter.') }

  subject { direction }

  it { should respond_to(:direction) }

  describe 'validations' do

    describe 'direction' do
      context 'should exist' do
        before { direction.direction = nil }
        it { should_not be_valid }
      end
      context 'too long' do
        before { direction.direction = 'dir' * 100 }
        it { should_not be_valid }
      end
    end
  end
end

