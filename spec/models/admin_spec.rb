require 'spec_helper'

describe Admin do
  context 'factories' do
    it 'has a valid factory' do
      expect(build(:admin)).to be_valid
    end
    it 'has an invalid factory' do
      expect(build(:invalid_admin)).to_not be_valid
    end
  end
  context 'attributes' do
    it { should respond_to :avatar }
    it { should respond_to :name }
  end
  context 'associations' do
    it { should have_many :comments }
    it { should have_many :reports }
    it { should have_one :api_key }
  end
  context 'methods' do
    let(:admin) { create(:admin) }
    it '#to_s returns email' do
      expect(admin.to_s).to eq admin.email
    end
    xit '#api_key?' do
      expect(admin.api_key?).to be_true
    end
  end
end