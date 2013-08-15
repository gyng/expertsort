# EXPERTSORT

Expertsort (stylised EXPERTSORT) is a collection of EXPERT PROGRAMMER sorting algorithms.

Ever felt that sorting in Ruby is too fast?

Need a slow algorithm for v0.0.1 of your application?

Is your hardware too fast?

Want to prove that sorting in Ruby is slow as balls?

EXPERTSORT is here to help.

## Installation

Add this line to your application's Gemfile:

    gem 'expertsort'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install expertsort

## Usage

    [5, 4, 3, 1, 2].bogosort
    => [1, 2, 3, 4, 5]

## Sorts

### Bogosort

* `bogosort`, `bogosort!`

### Stoogesort

* `stoogesort`, `stoogesort!`

### Slowestsort

* `slowestsort`, `slowestsort!`

### Sleepsort

* `sleepsort`, `sleepsort!`

Sleepsort raises a `RangeError` if the array contains a negative element.

## Testing

There is a rspec for EXPERTSORT at `spec/expertsort/expertsort_spec.rb`.