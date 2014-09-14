require_relative "spec_helper"
require "simpletest"

describe Coach::SimpleTest do

    before do
        @candidate = Coach::SimpleTest.new
        @string = "Tolle Umlaute und Sonderzeichen:     §Äly"
    end

    describe "simply failing" do
        it "fails" do
            assert 1 > 0
        end
    end

    describe "when the question is empty" do
        it "can be filled with as String" do
            @candidate.question.must_be_nil
            @candidate.question = @string
            @candidate.question.class.must_equal String
        end
    end

    describe "when the question was filled with a string" do
        it "returns the same string" do
            @candidate.question = @string
            @candidate.question.must_equal @string
        end
    end

    describe "when the expected answer is empty" do
        it "can be filled with as String" do
            @candidate.expectation.must_be_nil
            @candidate.expectation = @string
            @candidate.expectation.class.must_equal String
        end
    end

    describe "when the expected answer was filled with a string" do
        it "returns the same string" do
            @candidate.expectation = @string
            @candidate.expectation.must_equal @string
        end
    end

    describe "when there is a test" do
        it "'s answer can be filled with a string" do
            @candidate.answer = @string
            @candidate.answer.must_equal @string
        end
    end

    describe "when the answer matches the expected answer" do
        it "'s passed'" do
            @candidate.expectation = @string
            @candidate.answer = @string
            @candidate.result.must_equal true
        end
    end

    describe "when the answer doesn't match the expectation" do
        it "'s foiled'" do
            @candidate.expectation = @string
            @candidate.answer = "wrong answer"
            @candidate.result.must_equal false
        end
    end

end
