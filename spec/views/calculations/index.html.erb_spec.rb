require 'rails_helper'

RSpec.describe "calculations/index", type: :view do
  before(:each) do
    assign(:calculations, [
      Calculation.create!(
        :passengers_mobile => 2,
        :passengers_injured_bedridden => 3,
        :passengers_wheelchair_bound => 4,
        :shelter_distance => 5.5,
        :target_completion_time => 6.5
      ),
      Calculation.create!(
        :passengers_mobile => 2,
        :passengers_injured_bedridden => 3,
        :passengers_wheelchair_bound => 4,
        :shelter_distance => 5.5,
        :target_completion_time => 6.5
      )
    ])
  end

  it "renders a list of calculations" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.5.to_s, :count => 2
    assert_select "tr>td", :text => 6.5.to_s, :count => 2
  end
end
