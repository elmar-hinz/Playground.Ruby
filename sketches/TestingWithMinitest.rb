
gem "minitest", '5.4.1'
require "minitest/autorun"

# Unit test style

class UnitTestWithMiniTest < Minitest::Test

    def setup
        @candidate = "Hello World"
    end

    def test_that_it_says_hello
        assert_match /hello/i, @candidate
    end

    def test_that_the_length_is_11
        assert_equal 11, @candidate.length
    end

    def test_that_umlauts_count_one
        assert_equal 2, "oe".length
        assert_equal 1, "ö".length
    end

end

# Specs style

describe String do

    before do
        @candidate = "Hello World"
    end

    describe "when ask for the length" do
        it "it answers with a Fixnum" do
            @candidate.length.class.must_equal Fixnum
        end
    end

end

