# testing



## what testing is
### the hot soup problem
 - boxes of hot soup to be delivered
 - how to determine how many parallel packers?

### basic test principles
#### the pyramid
##### the simple version
<img src="/images/martin_fowler_pyramid.png" width="400">

^ [martin fowler](http://martinfowler.com/bliki/TestPyramid.html)

^ [mike cohn](http://www.mountaingoatsoftware.com/)

##### another version
<img src="/images/anand_bagmar_pyramid.jpg" width="400">

^ [anand bagmar](http://www.slideshare.net/abagmar/anand-bagmar-behavior-driven-testing-bdt-in-agile)

-> [google testing blog's 30 min video on unit tests](http://googletesting.blogspot.com/2008/11/clean-code-talks-unit-testing.html)

#### the blocks
<img src="/images/hodgson_blocks.png" width="400">

^ [pete hodgson](http://www.catchtalk.tv/events/confreaks/videos/railsconf-2014-rails-as-an-soa-client-by-pete-hodgson)

##### unit tests
##### integration tests
##### acceptance tests




#### write tests first
##### red green refactor

#### orbit





## why you should test
### cost of change
### light bulb
### canary
### guide design
### near instant feedback
### know which X broke Y

## testing in action
### tdd game of life
### static sites
- jekyll
#### broken links
<img src="/images/broken_link1.png" width="400">
<img src="/images/broken_link2.png" width="400">
#### spell checker
#### cliche checker

### dynamic sites
### front end challenge

### more examples
#### mvc
#### unit tests
#### integration tests
#### acceptance tests
#### continuous
##### ci
##### travis
##### jenkins
##### guard



## tools
### JAVASCRIPT
 - npm built in script
 - gulp, grunt
   - [ben gladwell’s fridgewords repo for gulp](https://github.com/bengladwell/fridgewords)
 - mocha
 - chai
 - sinon
 - jasmine
 - [frisbyjs](http://frisbyjs.com/) - REST API test tool

### RUBY/RAILS
 - rspec
 - minitest
 - cucumber
 - guard
 - rake
 - binding.pry
 - pry-rescue
 - pry-stack_explorer
 - rspec-given
 - httpie


### PYTHON/DJANGO
 - lettuce
 - behave

### browser
 - postman

### shell
 - curl


### the end
![testing_over](/images/testing_over.png)
^ [play this game](http://www.rapitasystems.com/blog/tetris_coverage_challenge)
