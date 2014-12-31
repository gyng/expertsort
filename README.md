# EXPERTSORT

[![Build Status](https://travis-ci.org/gyng/expertsort.svg?branch=master)](https://travis-ci.org/gyng/expertsort)

Expertsort (stylised EXPERTSORT) is a collection of EXPERT PROGRAMMER sorting algorithms.

Need help with sorting homework? EXPERTSORT is here to help.

## Installation

Add this line to your application's Gemfile:

    gem 'expertsort'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install expertsort

## Usage

    require 'expertsort'

    [5, 4, 3, 1, 2].bogosort
    => [1, 2, 3, 4, 5]

## Sorts

### Bogosort

* `bogosort`, `bogosort!`

### Bogobogosort

* `bogobogosort`, `bogobogosort!`

### Stoogesort

* `stoogesort`, `stoogesort!`

### Slowestsort

* `slowestsort`, `slowestsort!`

### Sleepsort

* `sleepsort`, `sleepsort!`

Sleepsort raises a `RangeError` if the array contains a negative element.

## Testing

There is a rspec for EXPERTSORT at `spec/expertsort/expertsort_spec.rb`.
