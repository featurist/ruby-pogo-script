require 'test/unit'
require './lib/pogo_script.rb'

class PogoScriptTest < Test::Unit::TestCase
  def test_compile
    assert_equal "(function(){var self=this;(1+1);}).call(this);",
      PogoScript.compile('1+1')
  end
  
  def test_compile_bare
    assert_equal "(1+1);",
      PogoScript.compile('1+1', :bare => true)
  end
end