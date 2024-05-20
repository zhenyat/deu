require 'rails_helper'

RSpec.describe Gender, type: :model do
  context "validations" do
    it { should validate_presence_of(:de) }
    it { should validate_presence_of(:en) }
    it { should validate_presence_of(:ru) }
    it { should validate_presence_of(:abbr_de) }
    it { should validate_presence_of(:abbr_en) }
    it { should validate_presence_of(:abbr_ru) }
  end
  
  context "validations of uniqueness" do 
    subject { FactoryBot.build(:gender) }   #
    it { should validate_uniqueness_of(:de) }
    it { should validate_uniqueness_of(:en) }
    it { should validate_uniqueness_of(:ru) }
    it { should validate_uniqueness_of(:abbr_de) }
    it { should validate_uniqueness_of(:abbr_en) }
    it { should validate_uniqueness_of(:abbr_ru) }
  end

  context "validations of hassd_many" do
    it { should have_many(:articles) }
  end
end
