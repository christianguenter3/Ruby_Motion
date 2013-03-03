class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    controller = TapController.alloc.initWithNibName(nil, bundle:nil)
    nav_controller = UINavigationController.alloc.initWithRootViewController(controller)
    alphabet_controller = AlphabetController.alloc.initWithNibName(nil, bundle:nil)


    other_controller = TestController.alloc.initWithNibName(nil, bundle:nil)
    other_controller.title = "Other"
    other_controller.view.backgroundColor = UIColor.purpleColor

    animation_controller = AnimationController.alloc.initWithNibName(nil, bundle:nil)
    animation_controller.title = "Animation"

    tab_controller = UITabBarController.alloc.initWithNibName(nil, bundle:nil)
    tab_controller.viewControllers = [nav_controller, other_controller, 
                                      alphabet_controller, animation_controller]

    @window.rootViewController = tab_controller


    true 
  end
end
