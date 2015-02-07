require 'rails_helper'


describe Direction do

  let(:direction) { Direction.new(direction: 'Cream together sugar and butter.') }

  subject { direction }

  it { should respond_to(:direction) }

  pending "add some examples to (or delete) #{__FILE__}"
end

