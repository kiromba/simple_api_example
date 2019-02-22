require 'rails_helper'

RSpec.describe 'Suppliers API', type: :request do
  # initialize test data 
  let!(:suppliers) { create_list(:supplier, 10) }
  let(:supplier_id) { suppliers.first.id }

  # Test suite for GET /api/v1/suppliers
  describe 'GET /api/v1/suppliers' do
    # make HTTP get request before each example
    before { get '/api/v1/suppliers' }

    it 'returns suppliers' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /api/v1/suppliers/:id
  describe 'GET /api/v1/suppliers/:id' do
    before { get "/api/v1/suppliers/#{supplier_id}" }

    context 'when the record exists' do
      it 'returns the supplier' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(supplier_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:supplier_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Supplier/)
      end
    end
  end

  # Test suite for POST /api/v1/suppliers
  describe 'POST /api/v1/suppliers' do
    # valid payload
    let(:valid_attributes) { attributes_for(:supplier, name: "Leonard Hotel Royal") }

    context 'when the request is valid' do
      before { post '/api/v1/suppliers', params: valid_attributes }

      it 'creates a supplier' do
        expect(json['name']).to eq('Leonard Hotel Royal')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/api/v1/suppliers', params: { name: 'Foobar' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Validation failed: Image can't be blank/)
      end
    end
  end

  # Test suite for PUT /api/v1/suppliers/:id
  describe 'PUT /api/v1/suppliers/:id' do
    let(:valid_attributes) { { name: 'Shopping' } }

    context 'when the record exists' do
      before { put "/api/v1/suppliers/#{supplier_id}", params: valid_attributes }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  # Test suite for DELETE /api/v1/suppliers/:id
  describe 'DELETE /api/v1/suppliers/:id' do
    before { delete "/api/v1/suppliers/#{supplier_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
