require 'rails_helper'

describe 'recipe pages' do
  subject { page }

  describe 'index' do
    Recipe.destroy_all
    let(:recipe1) { Recipe.create(  title: 'Cake', cooking_time: 50, 
                                    category: 'Baked Good', 
                                    notes: 'Favorite cake of my friend Jim.', 
                                    image: 'cake.jpg') } 
    let(:recipe2) { Recipe.create(  title: 'Cookies', cooking_time: 20, 
                                    category: 'Baked Good', 
                                    notes: 'Favorite cookies of my friend Jim.', 
                                    image: 'cookies.jpg') } 
    before { visit recipes_path }

    it { should have_title('All Recipes') }
    it { should have_selector('h2', text: 'All Recipes') }

    it "lists each recipe" do
      Recipe.all.each do |recipe|
        expect(page).to have_selector('li', text: recipe.title)
      end
    end

    describe 'delete links' do
      let!(:recipe1) { Recipe.create(  title: 'Inuendo Cake', cooking_time: 50, 
                                      category: 'Baked Good', 
                                      notes: 'Favorite cake of my friend Jim.', 
                                      image: 'cake.jpg') } 
      let!(:recipe2) { Recipe.create(  title: 'Long Cookies', cooking_time: 20, 
                                      category: 'Baked Good', 
                                      notes: 'If they are too hard, talk to your doctor.', 
                                      image: 'cookies.jpg') } 
      before { visit recipes_path }
      it { should have_link('delete', href: recipe_path(Recipe.first)) }

      describe 'after clicking delete' do
        before { click_link('delete', match: :first) }
        it { should_not have_content('Cake') }
      end
    end
  end

  describe 'alphabetical' do
    let(:recipe1) { Recipe.create(  title: 'Cake', cooking_time: 50, 
                                    category: 'Baked Good', 
                                    notes: 'Favorite cake of my friend Jim.', 
                                    image: 'cake.jpg') } 
    let(:recipe2) { Recipe.create(  title: 'Cookies', cooking_time: 20, 
                                    category: 'Baked Good', 
                                    notes: 'Favorite cookies of my friend Jim.', 
                                    image: 'cookies.jpg') } 
    before { visit recipes_path }

    it { should have_title('All Recipes') }
    it { should have_selector('h2', text: 'All Recipes') }

    it "lists each recipe" do
      Recipe.all.each do |item|
        expect(page).to have_selector('li', text: recipe.title)
      end
    end
  end

  # expect 'by_source' specs to fail until Recipe/Source relationship established. pending for now

  pending "'by_source' specs: Has title, Has selector, Lists each recipe. Need to create associations first."

  # describe 'by_source' do
  #   let(:recipe1) { Recipe.create(  title: 'Cake', cooking_time: 50, 
  #                                   category: 'Baked Good', 
  #                                   notes: 'Favorite cake of my friend Jim.', 
  #                                   image: 'cake.jpg') } 
  #   let(:recipe2) { Recipe.create(  title: 'Cookies', cooking_time: 20, 
  #                                   category: 'Baked Good', 
  #                                   notes: 'Favorite cookies of my friend Jim.', 
  #                                   image: 'cookies.jpg') } 
  #   before { visit recipes_by_source_path }

  #   it { should have_title('All Recipes by Source') }
  #   it { should have_selector('h2', text: 'Source') }

  #   it "lists each recipe" do
  #     Recipe.all.each do |item|
  #       expect(page).to have_selector('li', text: recipe.title)
  #     end
  #   end
  # end

  describe 'by_category' do
    let!(:recipe1) { Recipe.create(  title: 'Cake', cooking_time: 50, 
                                    category: 'Baked Goods', 
                                    notes: 'Favorite cake of my friend Jim.', 
                                    image: 'cake.jpg') } 
    let!(:recipe2) { Recipe.create(  title: 'Cookies', cooking_time: 20, 
                                    category: 'Baked Goods', 
                                    notes: 'Favorite cookies of my friend Jim.', 
                                    image: 'cookies.jpg') } 
    before { visit recipes_by_category_path }

    it { should have_title('All Recipes by Category') }
    # Not sure why this is failing - It should
    it { should have_selector('h2', text: 'Baked Goods') }

    it "lists each recipe" do
      Recipe.all.each do |recipe|
        expect(page).to have_selector('li', text: recipe.title)
      end
    end
  end  

  describe 'show' do
    let(:recipe)  { Recipe.create(  title: 'Cake', cooking_time: 50, 
                                    category: 'Baked Goods', 
                                    notes: 'Favorite cake of my friend Jim.', 
                                    image: 'cake.jpg') } 

    before { visit recipe_path(recipe.id) }

    it { should have_title(recipe.title) }
    it { should have_selector('h2', text: recipe.title) }
  end

  describe 'new' do 
    before { visit new_recipe_path }

    it {should have_title('Add a Recipe') }
    it {should have_selector('h2', text: 'Add a Recipe')}
  end

  describe 'edit recipe page' do
    let(:recipe_to_edit) {  Recipe.create(title: 'Strange Cake', cooking_time: 50, 
                            category: 'Baked Good', 
                            notes: 'It is really, really strange.', 
                            image: 'strange-cake.jpg') } 
    before { visit edit_recipe_path(recipe_to_edit.id) }
    it { should have_title 'Edit Recipe' }
    it { should have_selector 'h2', 'Edit Recipe' }

    describe 'update recipe' do
      let(:submit) { 'Save'}

      context 'valid information' do
        before do
          fill_in 'Title', with: 'Weird Cake'
          click_button submit
        end

        describe 'after saving changes' do
          it { should have_title('Weird Cake') }
          # specify { expect(recipe_to_edit.reload.title).to eq('Weird Cake') }
          # shorter way to write test below
          it 'has the updated content' do
            expect(recipe_to_edit.reload.title).to eq('Weird Cake')
          end
        end
      end

      context 'invalid information' do
        before do
          fill_in 'Title', with: ''
          click_button submit
        end

        describe 'after trying to save' do
          it { should have_title('Edit Recipe') }
          it { should have_content('error') }
        end
      end  
    end
  end
end