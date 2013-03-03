class TestController < UIViewController

  def initWithNibName(name, bundle: bundle)
    super 
    self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemContacts, tag:1)
    self
  end

end