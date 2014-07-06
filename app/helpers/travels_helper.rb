module TravelsHelper
  def renderer
  	 @renderer ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, space_after_headers: true)
  end

  def markdown(text)
  	 raw renderer.render(text)
  end
end
