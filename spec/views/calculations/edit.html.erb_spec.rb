require 'rails_helper'

RSpec.describe "calculations/edit", type: :view do
  before(:each) do
    @calculation = assign(:calculation, Calculation.create!(
      :passengers_mobile => 1,
      :passengers_injured_bedridden => 1,
      :passengers_wheelchair_bound => 1,
      :shelter_distance => 1.5,
      :target_completion_time => 1.5
    ))
  end

  it "renders the edit calculation form" do
    render

    assert_select "form[action=?][method=?]", calculation_path(@calculation), "post" do

      assert_select "input#calculation_passengers_mobile[name=?]", "calculation[passengers_mobile]"

      assert_select "input#calculation_passengers_injured_bedridden[name=?]", "calculation[passengers_injured_bedridden]"

      assert_select "input#calculation_passengers_wheelchair_bound[name=?]", "calculation[passengers_wheelchair_bound]"

      assert_select "input#calculation_shelter_distance[name=?]", "calculation[shelter_distance]"

      assert_select "input#calculation_target_completion_time[name=?]", "calculation[target_completion_time]"
    end
  end
end
