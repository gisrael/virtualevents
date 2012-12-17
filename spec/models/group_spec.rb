require 'spec_helper'

describe Group do
  pending "add some examples to (or delete) #{__FILE__}"
  it "requires a name" do
    subject.should_not be_valid
    subject.name = "Students for a Better World"
    subject.should be_valid
end
end
