require 'rails_helper'

describe Recipe do

  let(:recipe) { Recipe.new(title: 'Cake', cooking_time: 20, 
                            category: 'Baked Good', 
                            notes: 'Favorite cake of my friend Jim.', 
                            image: 'cake.jpg') } 

  subject { recipe }

  it { should respond_to(:title) }
  it { should respond_to(:cooking_time) }
  it { should respond_to(:category) }
  it { should respond_to(:notes) }
  it { should respond_to(:image) }

  it { should be_valid }

  describe 'validations' do

    describe 'title' do
      context 'should exist' do
        before { recipe.title = nil }
        it { should_not be_valid }
      end
      context 'too long' do
        before { recipe.title = title * 100 }
        it { should_not be_valid }
      end
    end

    describe 'category' do
      context 'should exist' do
        before { recipe.title = nil }
        it { should_not be_valid }
      end
      context 'too long' do
        before { recipe.title = title * 100 }
        it { should_not be_valid }
      end
    end
    
  end

end

