class TestHTTPViewController < UIViewController
  def loadView
    self.view = UITextView.alloc.init
    @model = TestHTTPModel.new
  end
  
  def viewDidLoad
    @label = UILabel.alloc.initWithFrame([[20,70],[300,80]])
    @label.backgroundColor = UIColor.lightGrayColor
    @label.text = "Test HTTP"
    view.addSubview(@label)
    
    @button = UIButton.alloc.initWithFrame([[20,200],[120,60]])
    @button.setBackgroundColor(UIColor.blueColor)
    @button.setTitle("HTTP", forState:UIControlStateNormal)
    @button.setTitleColor(UIColor.greenColor, forState:UIControlStateNormal)
    view.addSubview(@button)
    
    view.userInteractionEnabled = true
    recognizer = UITapGestureRecognizer.alloc.initWithTarget(self, action:'httpRequest')
    @button.addGestureRecognizer(recognizer)
  end
  
  def httpRequest
    BW::HTTP.get("http://google.com", payload: {q: "test"}) do |response|
      self.view.setText(response.body.to_str)
    end
  end
  
end