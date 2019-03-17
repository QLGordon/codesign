module ApplicationHelper
  def svg(name)
    file_path = "#{Rails.root}/app/assets/images/svg/#{name}.svg"
    return File.read(file_path).html_safe if File.exists?(file_path)
    '(not found)'
  end

  def markdown(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
                                           no_intra_emphasis: true,
                                           fenced_code_blocks: true,
                                           disable_indented_code_blocks: true,
                                           autolink: true,
                                           tables: true,
                                           underline: true,
                                           highlight: true
                                          )
    markdown.render(text).html_safe
  end
end
