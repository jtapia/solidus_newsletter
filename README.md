# Solidus Newsletter
[![Build Status](https://travis-ci.org/jtapia/solidus_newsletter.svg?branch=master)](https://travis-ci.org/jtapia/solidus_newsletter)<br />

Basic Overview
-----

Add a newsletter to the homepage of your Solidus site, and manage the newsletter content on the Admin panel.

Setup
-----

Add this extension to your Gemfile:

```ruby
gem 'solidus_newsletter', github: 'jtapia/solidus_newsletter'
```

Then run:

```
bundle exec rails g solidus_newsletter:install
```

Using the newsletter form
-----

```ruby
<%= render partial: 'spree/shared/newsletter' %>
```