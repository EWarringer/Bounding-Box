class BoundingBox
  attr_reader :width, :height, :left, :right, :top, :bottom
  def initialize(x, y, width, height)
    @left = x
    @right = x + width
    @top = y + height
    @bottom = y
    @width = width
    @height = height
  end

  def contains_point?(x, y)
    x.between?(@left, @right) && y.between?(@bottom, @top)
  end
end
