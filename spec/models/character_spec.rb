# frozen_string_literal: true

require "rails_helper"

RSpec.describe Character, type: :model do
  subject { FactoryBot.build(:character) }

  it "has a valid factory" do
    expect(subject).to be_valid
  end
end
