class ButtonComponentPreview < Lookbook::Preview
  # scenarios defined here
  def standard
    render ButtonComponent.new(text: "Click me")
  end

  def alternate
    render ButtonComponent.new(text: "Click me 2")
  end
end