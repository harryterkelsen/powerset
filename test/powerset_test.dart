// Copyright (c) 2015, Harry Terkelsen. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library powerset.test;

import 'package:powerset/powerset.dart';
import 'package:test/test.dart';

void main() {
  group('powerset', () {
    test('should work for the empty set', () {
      expect(powerset([]), equals([[]]));
    });

    test('should work for single-element sets', () {
      expect(
          powerset(['a']),
          equals([
            [],
            ['a']
          ]));
    });

    test('should return the power set of a set', () {
      expect(
          powerset([1, 2, 3]),
          equals([
            [],
            [1],
            [2],
            [1, 2],
            [3],
            [1, 3],
            [2, 3],
            [1, 2, 3]
          ]));
    });

    test('should work for an infinite iterable', () {
      Iterable naturals() sync* {
        var n = 1;
        while (true) {
          yield n++;
        }
      }

      expect(
          powerset(naturals()).take(8),
          equals([
            [],
            [1],
            [2],
            [1, 2],
            [3],
            [1, 3],
            [2, 3],
            [1, 2, 3]
          ]));
    });
  });
}
