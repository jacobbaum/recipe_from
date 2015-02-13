require 'rails_helper'

describe Source do

  let(:source) { Source.new( name: 'Jeanette Oliphant', 
                             description: 'My gradmother.', 
                             image: 'grandma.jpg' ) }

  subject { source }

  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should respond_to(:image) }


  describe 'validations' do

    describe 'name' do
      context 'should exist' do
        before { source.name = nil }
        it { should_not be_valid }
      end
      context 'too long' do
        before { source.name = 'Jim' * 100 }
        it { should_not be_valid }
      end
    end
    describe 'description' do
      context 'should exist' do
        before { source.description = nil }
        it { should_not be_valid }
      end
      context 'too long' do
        before { source.description = 'An okay guy. A passable cook.' * 100 }
        it { should_not be_valid }
      end
    end
  end
end