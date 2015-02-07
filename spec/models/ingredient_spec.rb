require 'rails_helper'

describe Ingredient do

  let(:ingredient) { Ingredient.new( measurement: 1.5, 
                                     measurement_unit: 'Cup', 
                                     name: 'Flour' ) }

  subject { ingredient }

  it { should respond_to(:measurement) }
  it { should respond_to(:measurement_unit) }
  it { should respond_to(:name) }



  pending "add some examples to (or delete) #{__FILE__}"
end
