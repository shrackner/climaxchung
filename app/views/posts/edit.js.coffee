$("#post-<%= @post.id %>").html("<%= escape_javascript(render 'about_form') %>")
