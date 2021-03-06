Callback Request with Bootstrap 4
=================================

Rails gem to show a form for callback request in modal.
To be used with Bootstrap 4 and simple_form.

For Bootstrap 3 - see branch 'bootstrap3'.


Requests for phone callbacks are stored in database.


## Dependencies

* jQuery (jquery, jquery_ujs). use gem jquery-rails
* bootstrap 4 - gem 'bootstrap' (https://github.com/twbs/bootstrap-rubygem)
* form - gem simple_form


# Installation

Gemfile:
```ruby
gem 'callback_request_bootstrap'

gem 'simple_form'
```

```ruby
bundle install
```

install using generator:
```ruby
rails g callback_request_bootstrap:install
```
This will add the migrations.

Migrate the database:
```ruby
rake db:migrate
```
It will add table 'requests' to the database.


Your application should have jquery, jquery_ujs and bootstrap.js installed.
Your application.js might be:
```ruby
//= require jquery
//= require jquery_ujs

//= require popper
//= require bootstrap-sprockets


```

mount engine in config/routes.rb:
```ruby
Rails.application.routes.draw do

  mount CallbackRequestBootstrap::Engine => "/callback"

  ..
end

```

Link to show form in modal:
```ruby
<%=link_to_callback_modal "Request callback", '#', :class=>'btn' %>

```
This helper generates a link with css class 'callback_link'.

or add class 'callback_link' to your link:
```ruby
=link_to 'Request callback', '#', :class=>'btn btn-primary callback_link'
```

include on page (usually at the end of the page where you place the link):
```ruby
<%= render 'callback_request_bootstrap/requests/js_modal'%>
```
This will add necessary scripts for modal.


# Options

## Autoclose
To close modal after a request is sent, use option 'autoclose' for a link:
```ruby
<%=link_to "Show modal with autoclose", '#', :class=>'btn btn-default callback_link', :data=>{'autoclose'=>5} %>
```
This will close modal in 5 seconds.



# Customization

## Form

Use generator to copy views to your application.
Edit views in /app/views/callback_request_bootstrap/.

If you want to edit fields in the form, then edit view '_form.simple_form.html.erb'.


## Localization

 Copy file config/locales/callback_request.en.yml to your application in config/locales/callback_request.LANG.yml.
 Edit the file.


## Callbacks

### Callback after a new request created


```ruby
# config/initializers/callback_request.rb

module CallbackRequestPatch
  extend ActiveSupport::Concern

  included do
    after_create :_my_after_create

  end


  def _my_after_create
    # your code
    
    logger.debug "callback request created"
    
    

  end

end

CallbackRequestBootstrap::Request.send(:include, CallbackRequestPatch)

```