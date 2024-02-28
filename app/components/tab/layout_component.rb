# frozen_string_literal: true

class Tab::LayoutComponent < ViewComponent::Base
  include Turbo::FramesHelper

  def initialize(active:)
    @active = active
  end

  def before_render
    @tabs = [{ name: "tab1", src: sidebar_a_path }, { name: "tab2", src: sidebar_b_path}, { name: "tab3", src: sidebar_c_path}]
  end
end
