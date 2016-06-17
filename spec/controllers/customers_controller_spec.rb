require 'rails_helper'

RSpec.describe CustomersController, :type => :controller do
  describe "GET #index" do
    it "returns a successful http request status code" do
      get :index

      expect(response).to have_http_status(:success)
    end
  end

  describe "get #show" do
    it "returns a successfull http request status code" do
      customer = Fabricate(:customer)

      get :show, id: customer.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "get #new" do
    login_admin
    it "returns a successful http request status code" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    login_admin
    context "a successful create" do
      it "saves the new customer object" do

        post :create, customer: Fabricate.attributes_for(:customer)
        expect(Customer.count).to eq(1)
      end
    end
  end


end
