class ButtonComponentPreview < Lookbook::Preview
  # scenarios defined here
  def standard
    render ButtonComponent.new(scheme: "primary") do
      "Modifier"
    end
  end

  def secondary
    render ButtonComponent.new(scheme: "secondary") do
      "Modifier"
    end
  end
end