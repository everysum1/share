require 'test_helper'

class LendersSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do 
    get lendersignup_path 
    assert_no_difference 'Lender.count' do
      post lenders_path, params: { lender: {  first_name:  "",
                                              last_name: "",
                                              email: "lender@invalid",
                                              password:              "foo",
                                              password_confirmation: "bar" } }
    end
    assert_template 'lenders/new'
    assert_select 'div[id="error-explanation"]'
    assert_select 'div[class="field_with_errors"]'
  end

  test "valid signup information" do 
    get lendersignup_path
    assert_difference 'Lender.count', 1 do
      post lenders_path, params: { lender: {  first_name:  "Example",
                                              last_name: "User",
                                              email: "lender@somebank.com",
                                              password:              "foo",
                                              password_confirmation: "bar" } }
    end 
    follow_redirect!
    assert_template 'lenders/show'
    assert_not flash.empty?
  end                                              
end
