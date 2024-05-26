require 'rails_helper'

RSpec.describe Noun, type: :model do
  context "validations" do
    it { should validate_presence_of(:de) }
    it { should validate_presence_of(:en) }
    it { should validate_presence_of(:ru) }
  end

  context "validations of belongs_to associations" do
    it { should belong_to :part_of_speech }
    it { should belong_to :gender }
  end
end
