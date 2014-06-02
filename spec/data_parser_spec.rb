require 'spec_helper'
require_relative '../data_parser'

describe DataParser do

  data = { "word": { "definition": "a {collection} of {letters}", "url": "//example.com/word" }, "letter": { "definition": "a character representing one or more of the sounds used in speech; any of the symbols of an alphabet", "url": "//example.com/letter" }, "collection": { "definition": "a group of things or people", "url": "//example.us/collection" } }


  it "should return the the definition and references of the word" do
    data_parser = DataParser.new

    expected = {definition: "a collection of letters",
                see_also: ["//example.com/letter", "//example.us/collection"]}

    expect(data_parser.parser(data)).to eq expected
  end
end