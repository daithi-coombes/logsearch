require_relative 'common'
require 'test/unit'

class FlowDockTest < Test::Unit::TestCase
	def test_all_the_logs_were_imported
		res = eslog_simple_search('*')

		assert_equal 5, res['hits']['total']
	end
end
