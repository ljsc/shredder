module ApplicationHelper
  def table_view_link(path ,&blk)
    content = capture(&blk)
    link_to content, path
  end

  def toolbar_button(text, path, options)
    config = {}
    options.each do |k,v|
      k = k.to_s
      if %w|icon iconpos direction prefetch rel|.include? k
        k = 'data-' + k
      end
      config[k] = v
    end
    link_to text, path, config
  end

  def toolbar_right_button(text, path, options)
    options['class'] = 'ui-btn-right'
    toolbar_button(text, path, options)
  end
end
