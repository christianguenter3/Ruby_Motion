describe "Application 'Tests'" do
  before do
    @app = UIApplication.sharedApplication
  end

  it "has one window" do
    @app.windows.size.should == 1
  end
end

describe "Button controller" do
  tests ButtonController

  it "changes instance variable when button is tapped" do
    tap 'Test me!'
    controller.instance_variable_get("@was_tapped").should == true
  end
end
