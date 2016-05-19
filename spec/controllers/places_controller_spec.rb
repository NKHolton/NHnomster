require 'rails_helper'

RSpec.describe PlacesController, type: :controller do

	describe "places#new action" do
		it "should successfully show the new place form" do

		end
	end

	describe "places#create" do
		it "should require users to be logged in" do

		end

		it "should successfully create a new place in our database" do
			user = FactoryGirl.create(:user)
			sign_in user

			post :create, place: { name: 'Pizza Palace' }
			expect(response).to redirect_to root_path

			place = Place.last
			expect(place.name).to eq('Pizza Palace')
			expect(place.user).to eq(user)
		end


	end
	


	describe "places#edit" do

		it "should only allow the user that created the place to edit the place" do
			user = FactoryGirl.create(:user)
			sign_in user
		end


	end



	describe "places#destroy" do

	end	


	describe "places#show" do

	end
end
