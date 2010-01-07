module JavascriptHelper
  
  ###
  # JAVASCRIPT INCLUDES
  ##
  def include_jquery
    javascript_include_tag "http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"
  end
  
  def include_jquery_ui
    javascript_include_tag "http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/jquery-ui.min.js"
  end

  def include_javascript
    javascript_include_tag  'forms',
                            'ajax',
                            'application', 
                            :cache => true 
  end

  def include_admin_javascript
    javascript_include_tag 'admin' if admin?
  end
  
  ###
  # JQUERY CONVENIENCE
  ###
  
  def js_content(content = '')
    escape_javascript(content).gsub(/\s+/, ' ').gsub(/\\n/, '').gsub(/\>\s+\</, '><')
  end
  
  def js_replace(selector, content)
    "$('#{selector}').replaceWith('#{js_content content}')"
  end
  
  def js_replace_html(selector, content)
    "$('#{selector}').html('#{js_content content}')"
  end
  
  def js_append(selector, content)
    "$('#{selector}').append('#{js_content content}')"
  end
  
  def js_prepend(selector, content)
    "$('#{selector}').prepend('#{js_content content}')"
  end
  
  def js_before(selector, content)
    "$('#{selector}').before('#{js_content content}')"
  end
  
  def js_after(selector, content)
    "$('#{selector}').after('#{js_content content}')"
  end
  
  def js_notify
    flash.keys.map do |key|
      "$('##{key.to_s}').notify('#{escape_javascript flash.delete(key)}')"
    end.join(';')
  end
  
  def domready(&block)
    content_for :domready, &block
  end
  
  def javascript(&block)
    content_for :javascript, &block
  end
  
  def initialize_facebook_js
    options = ["'reloadIfSessionStateChanged':true"]
    # automatically log in if the user is logged into Facebook
    options << (logged_in? ? "'ifUserNotConnected':'#{logout_path}'" : "'ifUserConnected':'#{login_path}'" )
    init_fb_connect "XFBML", :js => :jquery, :app_settings => "{#{options.join ','}}"
  end
  
  
end