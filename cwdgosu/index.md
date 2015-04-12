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

### front end challenge
- shopify about page

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
