# RData
[![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/samdunne/rdata)
[![Build Status](https://secure.travis-ci.org/samdunne/rdata.png?branch=master)](https://travis-ci.org/samdunne/rdata)
[![Dependency Status](https://gemnasium.com/samdunne/rdata.png)](https://gemnasium.com/samdunne/rdata)
[![Coverage Status](https://coveralls.io/repos/samdunne/rdata/badge.png?branch=master)](https://coveralls.io/r/samdunne/rdata)

## Purpose

Project goal is to provide a very clear and concise library of datastructures and algorithms in Ruby.

## Data Structures

* [Stacks](#stacks)
* [Queue](#queues)

## Installation
```ruby
gem install rdata
```

Or in a Gemfile

```ruby
gem 'rdata'
```

## Usage
```ruby
require 'rdata'
```

##<a name='stacks'>Stacks</a>

### Initialization

```ruby
@stack = RData::Stack.new
```

### Operations

```ruby
@stack.push(x) 		# => Returns 'x'
@stack.pop 			# => Returns 'top'
@stack.top 			# => Returns 'top'
@stack.is_empty? 	# => Returns true/false
```

### More on Stacks
[Stacks - Wiki Link](https://github.com/samdunne/rdata/wiki/Stacks)

##<a name='queues'>Queues</a>

### Initialization

```ruby
@queue = RData::Queue.new
```

### Operations

```ruby
@queue.enqueue(9) 	# => Returns '9'
@queue.dequeue 			# => Returns 'head'
@queue.peek 				# => Returns 'head' without removing it
@queue.is_empty? 		# => Returns true/false
```

### More on Queues
Coming Soon...




