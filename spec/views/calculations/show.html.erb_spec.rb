require 'rails_helper'

RSpec.describe "calculations/show", type: :view do
  before(:each) do
    @calculation = assign(:calculation, Calculation.create!(
      :passengers_mobile => 2,
      :passengers_injured_bedridden => 3,
      :passengers_wheelchair_bound => 4,
      :shelter_distance => 5.5,
      :target_completion_time => 6.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5.5/)
    expect(rendered).to match(/6.5/)
  end
end
