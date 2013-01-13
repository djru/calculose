# Calculus

The Calculus gem implements two methods for estimating the value of an antiderivative over an interval. The gem implements two methods: [Simpsons's Method](http://en.wikipedia.org/wiki/Simpson's_rule) and [Euler's Method](http://en.wikipedia.org/wiki/Euler_method). This gem was the product of frustration at the monotonous nature of summing integrals, and the unwieldily interfaces and UXs on most graphing calculators.

## Installation

Add this line to your application's Gemfile:

    gem 'calculus'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install calculus

## Usage

Simpson's can be called thusly:
    Calculus::Calc.simpson(deltaX, startingXValue, endingXValue) do |x| f(x) end
where f(x) is the base function.

Euler's can be called thusly:
    Calculus::Calc.euler(deltaX, startingXValue, startingYValue, endingXValue) do |x,y| f(x) end```
Note that **both x and y** are passed to the block by the function.

##To do

* CLI
* More algorithms