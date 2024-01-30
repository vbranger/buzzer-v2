# frozen_string_literal: true

class Sidebar::ButtonComponent < ViewComponent::Base
  def initialize(title:, icon:)
    @title = title
    @icon = icon
  end
end
