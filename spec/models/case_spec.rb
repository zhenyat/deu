require 'rails_helper'

RSpec.describe Case, type: :model do
  context "validations" do
    it { should validate_presence_of(:de) }
    it { should validate_presence_of(:en) }
    it { should validate_presence_of(:ru) }
    it { should validate_presence_of(:abbr_de) }
    it { should validate_presence_of(:abbr_en) }
    it { should validate_presence_of(:abbr_ru) }
    it { should validate_presence_of(:questions_de) }
    it { should validate_presence_of(:questions_en) }
    it { should validate_presence_of(:questions_ru) }
  end
  
  context "validations of uniqueness" do 
    subject { FactoryBot.build(:case) }   #
    it { should validate_uniqueness_of(:de) }
    it { should validate_uniqueness_of(:en) }
    it { should validate_uniqueness_of(:ru) }
    it { should validate_uniqueness_of(:abbr_de) }
    it { should validate_uniqueness_of(:abbr_en) }
    it { should validate_uniqueness_of(:abbr_ru) }
    it { should validate_uniqueness_of(:questions_de) }
    it { should validate_uniqueness_of(:questions_en) }
    it { should validate_uniqueness_of(:questions_ru) }
  end
end
