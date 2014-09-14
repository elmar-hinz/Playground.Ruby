#! /usr/bin/env ruby

Dir.chdir(File.dirname(__FILE__))
Dir.glob('./spec/**/*_spec.rb') { |f| require_relative f }

