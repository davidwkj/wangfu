require 'spec_helper'

describe "profiles/index" do
  before(:each) do
    assign(:profiles, [
      stub_model(Profile,
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
      ),
      stub_model(Profile,
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
      )
    ])
  end

  it "renders a list of profiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Qq".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Bornat".to_s, :count => 2
    assert_select "tr>td", :text => "Slogan".to_s, :count => 2
    assert_select "tr>td", :text => "Sweibo".to_s, :count => 2
    assert_select "tr>td", :text => "Qweibo".to_s, :count => 2
    assert_select "tr>td", :text => "Site".to_s, :count => 2
  end
end
