require_relative 'bounding_box'

class BoundingArea
  def initialize(boxes)
    @boxes = boxes
  end

  def boxes_contain_point?(x, y)
    @boxes.each do |box|
      if box.contains_point?(x, y) == true
        return true
      end
    end
    false
  end
end
