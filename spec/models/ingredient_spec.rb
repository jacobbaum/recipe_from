require 'rails_helper'

describe Ingredient do

  let(:ingredient) { Ingredient.new( measurement: 1.5, 
                                     measurement_unit: 'Cup', 
                                     name: 'Flour' ) }

  subject { ingredient }

  it { should respond_to(:measurement) }
  it { should respond_to(:measurement_unit) }
  it { should respond_to(:name) }

  describe 'validations' do
    describe 'measurement' do
      context 'should exist' do
        before { ingredient.measurement = nil }
        it { should_not be_valid }
      end
    end
    describe 'name' do
      context 'should exist' do
        before { ingredient.name = nil }
        it { should_not be_valid }
      end
      context 'too long' do
        before { ingredient.name = 'egg' * 100 }
        it { should_not be_valid }
      end
    end
  end
end
