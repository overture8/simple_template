simple_template
===============

Very simple template language for text output.

Usage
=====

     $ irb -rubygems
     irb> require 'simple_template'
     irb> SimpleTemplate::Renderer.parse("Hello %{name}", { :name => 'Phil' })
     => "Hello Phil"


Install
=======

     gem install simple_template


Tests
=====

Tests use the marvelous minitest library.  To run the tests...

     ruby spec/simple_template.rb
