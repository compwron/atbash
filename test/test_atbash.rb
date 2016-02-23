require "minitest/autorun"
require_relative "../lib/atbash"

describe Atbash do
  before do
    @subject = Atbash.new
  end

  it "reverses" do
    @subject.translate("foobar").must_equal "ullyzi"
  end
end
