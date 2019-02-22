require 'rails_helper'

RSpec.describe Supplier, type: :model do
  subject { build(:supplier) }

  describe 'factory' do
    it { is_expected.to be_valid }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:street) }
    it { is_expected.to validate_presence_of(:image) }
    it { is_expected.to validate_numericality_of(:rooms).only_integer }
    it { is_expected.to validate_numericality_of(:conference_capacity) }
    it { is_expected.to validate_presence_of(:feedback) }
    it { is_expected.to validate_numericality_of(:feedback) }
    it { is_expected.to validate_numericality_of(:distance_airport) }
    it { is_expected.to validate_numericality_of(:distance_train) }
    it { is_expected.to validate_numericality_of(:distance_city) }
    it { is_expected.to validate_numericality_of(:distance_highway) }
    it { is_expected.to validate_presence_of(:latitude) }
    it { is_expected.to validate_numericality_of(:latitude) }
    it { is_expected.to validate_presence_of(:longitude) }
    it { is_expected.to validate_numericality_of(:longitude) }
  end
end
