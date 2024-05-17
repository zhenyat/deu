require 'rails_helper'

RSpec.describe PartOfSpeech, type: :model do
  context "validations" do
    it { should validate_presence_of(:de) }
    it { should validate_presence_of(:en) }
    it { should validate_presence_of(:ru) }
  end
  
  context "validations of uniqueness" do 
    subject { FactoryBot.build(:part_of_speech) }   #
    it { should validate_uniqueness_of(:de) }
    it { should validate_uniqueness_of(:en) }
    it { should validate_uniqueness_of(:ru) }
  end
end
