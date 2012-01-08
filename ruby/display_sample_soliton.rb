require './distribution_visualiser.rb'
require './robust_soliton.rb'

rb = RobustSoliton.new(80,55)

DistributionVisualiser::output_console(rb.pdf, 10)
