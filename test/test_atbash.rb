require "minitest/autorun"
require_relative "../lib/atbash"

describe Atbash do
  before do
    @subject = Atbash.new
  end

  it "reverses" do
    {
      "foobar" => "ullyzi",
      "wizard" => "draziw",
      "/r/dailyprogrammer" => "/i/wzrobkiltiznnvi",
      "this is an example of the atbash cipher" => "gsrh rh zm vcznkov lu gsv zgyzhs xrksvi",
      "Preserve Case" => "Kivhviev Xzhv"
    }.each {|a, b|
      @subject.translate(a).must_equal b
    }
  end
end
