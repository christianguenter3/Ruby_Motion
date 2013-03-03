class AnimationController < UIViewController
  def viewDidLoad
    @points = [[0,0], [100, 0], [0,100], [100,100]]
    @current_index = 0

    @view = UIView.alloc.initWithFrame([@points[@current_index],[100,100]])
    @view.backgroundColor = UIColor.blueColor
    self.view.addSubview(@view)

    animate_to_next_point
  end

  def animate_to_next_point
    @current_index += 1

    @current_index = @current_index % @points.count

    UIView.animateWithDuration(2, 
        delay: 1,
        options: UIViewAnimationCurveLinear, 
        animations:lambda {
          @view.frame = [@points[@current_index], [100,100]]
        },
        completion:lambda { |finished|
          self.animate_to_next_point
        }
    )
  end

  def initWithNibName(name, bundle:bundle)
    super
    self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemMore, 
                        tag:1)
    self
  end
end