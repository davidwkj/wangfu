require 'spec_helper'

describe "profiles/show" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
      :no => 1,
      :name => "Name",
      :gender => false,
      :qq => "Qq",
      :email => "Email",
      :phone => "Phone",
      :city => "City",
      :bornat => "Bornat",
      :slogan => "Slogan",
      :sweibo => "Sweibo",
      :qweibo => "Qweibo",
      :site => "Site"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/false/)
    rendered.should match(/Qq/)
    rendered.should match(/Email/)
    rendered.should match(/Phone/)
    rendered.should match(/City/)
    rendered.should match(/Bornat/)
    rendered.should match(/Slogan/)
    rendered.should match(/Sweibo/)
    rendered.should match(/Qweibo/)
    rendered.should match(/Site/)
  end
end
