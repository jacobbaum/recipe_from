require 'rails_helper'

describe RecipesController, type: :controller do 
  let(:recipe1) { Recipe.create(  title: 'Cake', cooking_time: 50, 
                                  category: 'Baked Good', 
                                  notes: 'Favorite cake of my friend Jim.', 
                                  image: 'cake.jpg') } 
  let(:recipe2) { Recipe.create(  title: 'Cookies', cooking_time: 20, 
                                  category: 'Baked Good', 
                                  notes: 'Favorite cookies of my friend Jim.', 
                                  image: 'cookies.jpg') } 
 
  describe 'GET #index' do
    it 'renders index' do
      get :index
      expect(response).to render_template(:index)
    end
    it 'popluates an array of recipes' do
      get :index
      # like writing 'expect @recipes == [recipe1, recipe2]'
      expect(assigns(:recipes)).to eq([recipe1, recipe2])
    end
  end
 
  describe 'GET #alphabetical' do
    it 'renders index sorted alphabetically' do
      get :alphabetical
      expect(response).to render_template(:alphabetical)
    end
  end

  describe 'GET #by_source' do
    it 'renders index sorted by source' do
      get :by_source
      expect(response).to render_template(:by_source)
    end
  end

  describe 'GET #by_category' do
    it 'renders index sorted by category' do
      get :by_category
      expect(response).to render_template(:by_category)
    end
  end

  describe 'GET #show' do
    it 'renders show' do
      get :show, id: recipe1.id
      expect(response).to render_template(:show)
    end
  end

  # Test that show assigns the correct recipe?

  describe 'GET #new' do
    it 'renders new' do
      get :new
      expect(response).to render_template(:new)
    end

    # Tests - @recipe == Recipe.new
    it 'assigns a new recipe' do
      get :new
      expect(assigns(:recipe)).to be_a_new(Recipe)
    end
  end

  # New is to create, as edit is to update

  describe 'GET #edit' do
    let(:recipe_to_edit) { Recipe.create(
                          title: 'Cake', cooking_time: 50, 
                          category: 'Baked Good', 
                          notes: 'Favorite cake of my friend Jim.', 
                          image: 'cake.jpg') }
    it 'renders edit' do
      get :edit, id: recipe_to_edit.id
      expect(response).to render_template(:edit)
    end
    it 'assigns correct recipe' do
      get :edit, id: recipe_to_edit.id
      expect(assigns(:recipe)).to eq(recipe_to_edit)
    end
  end

  describe 'PATCH #update' do
    let(:recipe_to_edit) { Recipe.create(
                      title: 'Cake', cooking_time: 50, 
                      category: 'Baked Good', 
                      notes: 'Favorite cake of my friend Jim.', 
                      image: 'cake.jpg') }
    context 'valid attributes' do
      it 'updates recipe' do
        patch :update, id: recipe_to_edit.id, recipe: { title: 'Special Cake' } #these are params
        recipe_to_edit.reload
        expect(recipe_to_edit.title).to eq('Special Cake')
      end
      it 'redirects to recipe details' do
        patch :update, id: recipe_to_edit.id, recipe: { title: 'Special Cake' }
        expect(response).to redirect_to(recipe_path(recipe_to_edit.id))
      end
    end
    context 'invalid attributes' do
      it 'does not update recipe' do 
        patch :update, id: recipe_to_edit.id, recipe: { title: '' }
        recipe_to_edit.reload
        expect(recipe_to_edit.title).to eq('Cake')
      end
      it 're-renders edit' do
        patch :update, id: recipe_to_edit.id, recipe: { title: '' }
        expect(response).to render_template(:edit)
      end
    end
  end

  describe 'POST #create' do
    context 'valid attributes' do
      let(:valid_attributes) { {  title: 'Cake', cooking_time: 50, 
                                  category: 'Baked Good', 
                                  notes: 'Favorite cake of my friend Jim.', 
                                  image: 'cake.jpg' } }
      it 'creates new recipe' do
        expect{
          post :create, recipe: valid_attributes
        }.to change(Recipe, :count).by(1)
      end
      it 'redirect to recipes#index' do
        post :create, recipe: valid_attributes
        expect(response).to redirect_to(recipes_path)
      end
    end
    context 'invalid attributes' do
      let(:invalid_attributes) { {  title: '', cooking_time: 50, 
                                  category: '', 
                                  notes: 'Favorite cake of my friend Jim.', 
                                  image: 'cake.jpg' } }
      it 'does not create a new recipe' do
        expect{
          post :create, recipe: invalid_attributes
          }.to_not change(Recipe, :count)
      end
      it 're-renders recipes#new' do
        post :create, recipe: invalid_attributes
        expect(response).to render_template(:new)
      end
    end
  end

  describe 'DELETE destroy' do
    it 'deletes requested recipe' do
    recipe_to_delete = Recipe.create( title: 'Cake', cooking_time: 50, 
                                      category: 'Baked Good', 
                                      notes: 'Favorite cake of my friend Jim.', 
                                      image: 'cake.jpg')
    expect{
      delete :destroy, id: recipe_to_delete.id
      }.to change(Recipe, :count).by(-1)
    end
    
    it 'redirects to index' do
    end
  end
end