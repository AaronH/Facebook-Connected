# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  ###
  # CONVENIENCE METHODS FOR RENDERING
  ###
  def shared(section)
    render "/layouts/shared/#{section}"
  end

  def class_joiner(*args)
    args.flatten.compact.join(' ')
  end
  
  def content_class
    class_joiner([params[:controller], params[:action]])
  end

  def page_title
    [@page_title, 'Facebook Connected'].compact.join ' | '
  end
  
  def spc_gif(options = {})
    image_tag 'spc.gif', options
  end
  
  
end
