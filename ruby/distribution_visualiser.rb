# Shows a rough terminal representation of a distribution
class DistributionVisualiser

  HEIGHT = 30

  # Outputs a distribution to the terminal, with zoom/crop if wanted
  def self.output_console(dist, zoom)
    width = dist.length
    buffer = []

    # Build "frame buffer"
    (0...width).each do |i|
      v = HEIGHT * dist[i] * zoom
      if v > HEIGHT
        v = HEIGHT
      end
      buffer[i] = v
    end

    # Being draw

    puts ""
    (0...HEIGHT).to_a.reverse.each do |ln|
      (0...width).each do |cn|  
        if (ln <= buffer[cn])
          print "#"
        else
          print " "
        end
      end
      puts ""
    end
  end
end
