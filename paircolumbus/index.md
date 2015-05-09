# testing



## what testing is
### the hot soup problem
 - boxes of hot soup to be delivered
 - how to determine how many parallel packers?

### basic test principles
#### the pyramid
##### the simple version
<img src="/images/martin_fowler_pyramid.png" width="600">

^ [martin fowler](http://martinfowler.com/bliki/TestPyramid.html)

^ [mike cohn](http://www.mountaingoatsoftware.com/)

##### another version
<img src="/images/anand_bagmar_pyramid.jpg" width="600">

^ [anand bagmar](http://www.slideshare.net/abagmar/anand-bagmar-behavior-driven-testing-bdt-in-agile)

-> [google testing blog's 30 min video on unit tests](http://googletesting.blogspot.com/2008/11/clean-code-talks-unit-testing.html)

#### the blocks
<img src="/images/hodgson_blocks.png" width="600">

^ [pete hodgson](http://www.catchtalk.tv/events/confreaks/videos/railsconf-2014-rails-as-an-soa-client-by-pete-hodgson)

##### unit tests
- take the smallest piece of testable software in the application
- isolate it from the remainder of the code
- determine whether it behaves exactly as you expect
  > [wiki](http://en.wikipedia.org/wiki/Unit_testing)


<img src="/images/a_unit_test.png" width="600">

##### integration tests
- individual software modules are combined and tested as a group
```cucumber
  When I visit the login page
  And fill out the account signup
  I should receive an email about it
  And I should be logged in
```

##### acceptance tests
- contract
- the soup should not be cold
- the soup should not be less than 90 degrees
- the soup should not be less than 90 degrees Fahrenheit

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
### exercises
- [pair columbus](http://paircolumbus.org/)

### tdd game of life
- [wiki](http://en.wikipedia.org/wiki/Conway%27s_Game_of_Life)
- [prime number generator](http://www.conwaylife.com/w/index.php?title=Primer)

### static sites
- jekyll
- middleman

#### broken links
<img src="/images/broken_link1.png" width="600">
<img src="/images/broken_link2.png" width="600">

#### spell checker
#### cliche checker

### dynamic sites
- sinatra
- rails
- express

#### tests
- basic login test

### front end challenges
- [shopify about page](http://www.shopify.com/about)

<img src="/images/shopify_about_page.png" width="600">

  - browsers
  - cache


### more examples
#### mvc
- unit tests
```ruby
    describe '#normalize!' do
      it 'normalizes coordinates to "[0,x],[60,y]" form' do
        coordinate = Coordinate.new(300,3,240,4)
        coordinate.normalize!
        expect(coordinate.coordinates).to eq [[0,3], [60,-7]]
      end
    end
```

- integration tests
<img src="/images/integration_test_hartl.png" width="600">

^ [flash persistence test](https://www.railstutorial.org/book/log_in_log_out#code-flash_persistence_test)

^ [hartl's rails tutorial](https://www.railstutorial.org/book)


- acceptance tests

#### continuous
- travis
  - [jekyll's travis](http://jekyllrb.com/docs/continuous-integration/)
- jenkins
- [guard](https://github.com/guard/guard)


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
 - [guard](https://github.com/guard/guard)
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
```bash
curl "localhost:4000"
```


### the end
![testing_over](/images/testing_over.png)
^ [play this game](http://www.rapitasystems.com/blog/tetris_coverage_challenge)
