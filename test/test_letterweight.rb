require 'helper'

class TestLetterweight < Test::Unit::TestCase
  context "a string of Ms" do
    setup do
      @test_string = "MMMMMMMMMM"
    end

    should "output the number of Ms in the string" do
      assert_equal 10.0, @test_string.to_em, "there is something terribly wrong with your calculations"
    end
  end

  context "a sentence" do
    setup do
      @test_string = "Hello, this is a test sentence."
      @acceptable_range = 15..16
    end

    should "output a number in the acceptable range" do
      assert @acceptable_range.include?(@test_string.to_em), "not in expected range"
    end
  end
end
