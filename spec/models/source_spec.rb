require 'rails_helper'

describe Source do

  let(:source) { Source.new( name: 'Jeanette Oliphant', 
                             description: 'My gradmother.', 
                             image: 'grandma.jpg' ) }

  subject { source }

  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should respond_to(:image) }

  pending "add some examples to (or delete) #{__FILE__}"
end