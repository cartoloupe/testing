---
layout: post
title:  "diffcount.sh"
date:   2015-04-05 14:38:07
categories: jekyll update
---

Given two files `a` and `b`, how can you count the number of lines that differ between them?

I found this link: [a unix stack exchange link][the unix stack exchange link]

and this link: [another unix stack exchange link][th unix stack exchange link]

This seems to be one way to do it:


{% highlight bash %}
diff -y --suppress-common-lines a b | grep '^' | wc -l
{% endhighlight %}

You can wrap this in a shell script:

`diffcount.sh`:
{% highlight bash %}
#!/bin/bash
diff -y --suppress-common-lines $1 $2 |  grep '^' | wc -l
{% endhighlight %}

And use it like this:
{% highlight bash %}
./diffcount.sh a b
31
{% endhighlight %}































You’ll find this post in your `_posts` directory. Go ahead and edit it and re-build the site to see your changes. You can rebuild the site in many different ways, but the most common way is to run `jekyll serve`, which launches a web server and auto-regenerates your site when a file is updated.

To add new posts, simply add a file in the `_posts` directory that follows the convention `YYYY-MM-DD-name-of-post.ext` and includes the necessary front matter. Take a look at the source for this post to get an idea about how it works.

Jekyll also offers powerful support for code snippets:

{% highlight ruby %}
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}

Check out the [Jekyll docs][jekyll] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll’s dedicated Help repository][jekyll-help].

[jekyll]:      http://jekyllrb.com
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-help]: https://github.com/jekyll/jekyll-help

[the unix stack exchange link]: http://unix.stackexchange.com/questions/53719/get-correct-number-of-lines-in-diff-output#answer-53723
