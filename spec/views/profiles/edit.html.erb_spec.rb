require 'spec_helper'

describe "profiles/edit" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
      :no => 1,
      :name => "MyString",
      :gender => false,
      :qq => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :city => "MyString",
      :bornat => "MyString",
      :slogan => "MyString",
      :sweibo => "MyString",
      :qweibo => "MyString",
      :site => "MyString"
    ))
  end

  it "renders the edit profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => profiles_path(@profile), :method => "post" do
      assert_select "input#profile_no", :name => "profile[no]"
      assert_select "input#profile_name", :name => "profile[name]"
      assert_select "input#profile_gender", :name => "profile[gender]"
      assert_select "input#profile_qq", :name => "profile[qq]"
      assert_select "input#profile_email", :name => "profile[email]"
      assert_select "input#profile_phone", :name => "profile[phone]"
      assert_select "input#profile_city", :name => "profile[city]"
      assert_select "input#profile_bornat", :name => "profile[bornat]"
      assert_select "input#profile_slogan", :name => "profile[slogan]"
      assert_select "input#profile_sweibo", :name => "profile[sweibo]"
      assert_select "input#profile_qweibo", :name => "profile[qweibo]"
      assert_select "input#profile_site", :name => "profile[site]"
    end
  end
end
