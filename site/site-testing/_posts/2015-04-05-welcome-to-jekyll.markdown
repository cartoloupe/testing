---
layout: post
title:  "object double mystery"
date:   2015-04-07 17:22:11
categories: jekyll update
---

I was reading [this book][the book].

And came across this statement, or something like it:

> object_double can be used to create a double from an existing "template" object, from
> which it verifies that any stubbed methods on the double also exist on the template.

^ that is actually from [some rspec docs][rspec docs].

But this is the idea that I wanted to confirm: That using double can verify that methods received are methods on the real object.

This was the test setup:

`spec/test_spec.rb`:
{% highlight ruby %}
  1 require 'rails_helper'
  2 require 'pry'
  3
  4 RSpec.describe 'some test' do
  5   it 'test' do
  6     a = class_double("String")
  7     b = class_double(String)
  8     c = instance_double("String")
  9     d = instance_double(String)
 10     e = object_double(String.new)
 11     binding.pry
 12   end
 13 end
{% endhighlight %}

ran the test:

```bash
bundle exec rspec spec/test_spec.rb
```

got to the `binding.pry`:

{% highlight bash %}
   10:     e = object_double(String.new)
=> 11:     binding.pry
{% endhighlight %}

so, `e` is an object double of a String, and it should be able to receive any method that a String object can receive.

so I expect it to receive the method `reverse`, just like this string object:

```bash
> "some string".reverse
=> "gnirts emos"
> e.reverse
RSpec::Mocks::MockExpectationError: Double "" received unexpected message :reverse with (no args)
from /Users/vpappu/.gem/ruby/2.1.2/gems/rspec-mocks-3.2.0/lib/rspec/mocks/error_generator.rb:267:in `__raise'
```

Why?



[rspec docs]: https://www.relishapp.com/rspec/rspec-mocks/v/3-2/docs/verifying-doubles/using-an-object-double
[the book]: https://pragprog.com/book/nrtest2/rails-4-test-prescriptions
