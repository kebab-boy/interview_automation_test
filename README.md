## Installation instructions:
Install google chrome

Install rvm: 
follow instructions at https://rvm.io/

Install ruby 2.4.2:
rvm install 2.4.2

Install bundler:
gem install bundler

Install gems:
cd interview_automation_test
bundle install

## Running instructions:
(from root of project)
cucumber --tags ~@wip

## Notes
Hands up - I went a bit over the 2 hour limit - I wouldn't be able to sleep at night if I hadn't checked in at least one working test! There's obviously a few things I would improve if I had more time - probably the separate modules for elements - generally at my current company we use more of a SitePrism style approach, but I thought it would be over-engineering to implement this for just two pages! Also, I didn't waste time trying to implement headless tests because I have no experience with this. My approach if I was doing this in sprint, would be to implement the tests for chrome, as MVP, and then maybe make a separate technical task for the headless version of the tests, when I have time to investigate how to do it properly. 
