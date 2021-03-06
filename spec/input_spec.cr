require "./spec_helper"

describe RenderLoop::Input do
  # TODO: Write tests

  describe "#tick" do
    it "correctly ticks without blowing up" do
      w = TestWindow.new
      i = RenderLoop::Input(Key, MouseButton).new(w)
      i.tick
    end
  end

  describe "#key_pressed?" do
    it "correctly checks if the key is pressed" do
      w = TestWindow.new
      i = RenderLoop::Input(Key, MouseButton).new(w)
      i.get_key(Key::Key1).should eq(false)
    end
  end

  describe "#mouse_position" do
    it "correctly checks the mouse position" do
      w = TestWindow.new
      i = RenderLoop::Input(Key, MouseButton).new(w)
      i.get_mouse_position.should eq({x: 1, y: 1})
    end
  end
end
