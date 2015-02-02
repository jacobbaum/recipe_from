require 'rails_helper'

describe 'static pages' do 
  subject { page }

  describe 'home page' do
    before { visit root_path }

    it { should have_selector('h1', text: 'Recipe From:') }
  end
end