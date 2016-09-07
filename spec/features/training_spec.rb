require 'spec_helper'

RSpec.feature 'Training', type: :feature, js: true do

  # scenario "navigating to Google" do
  #   before { goto "https://google.com.ph" }

  #   it "should have the title set as Google" do
  #     expect(title).to eq 'Google'
  #   end
  # end

  scenario "checking the automation training site" do
    before { goto "http://automationpractice.com/index.php" }

    context "search field" do
      let!(:search_field) { text_field(name: 'search_query') }

      it "should have the search field available" do
        expect(search_field).to be_present
      end

      it "should input correctly" do
        search_field.set 'Testing'
        expect(search_field.value).to eq 'Testing'
        sleep 10
      end
    end

    context 'locating elements' do

    end
  end
end
