# powerset

Generates the [power set][powerset] of an iterable. Works for infinite
iterables.

## Usage

A simple usage example:

    import 'package:powerset/powerset.dart';

    main() {
      print(powerset([1, 2, 3]));
      // prints [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]
    }

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[powerset]: https://en.wikipedia.org/wiki/Power_set
[tracker]: http://github.com/hterkelsen/powerset/issues
