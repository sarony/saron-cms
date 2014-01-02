require 'spec_helper'

describe Post do 

  it "has a valid factory" do
    expect(build(:blog_post)).to be_valid
  end

end
