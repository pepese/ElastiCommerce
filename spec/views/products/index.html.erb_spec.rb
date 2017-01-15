require 'rails_helper'

RSpec.describe "products/index", :type => :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :product_id => 1,
        :name => "Name",
        :description => "Description",
        :del_flag => 2
      ),
      Product.create!(
        :product_id => 1,
        :name => "Name",
        :description => "Description",
        :del_flag => 2
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
