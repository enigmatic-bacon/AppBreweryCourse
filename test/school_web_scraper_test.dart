import 'dart:convert';

import 'package:test/test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:school_web_scraper/school_web_scraper.dart' as school_web_scraper;

void main() {
  MockClient client = null;

  test('calling initiate(client) returns a list of storylinks', () async {
    // Arrange
    client = MockClient((req) => Future(() => Response('''
      <body>
        <table><tbody><tr>
        <td class="title">
          <a class="storylink" href="https://dartlang.org">Get started with Dart</a>
        </td>
        </tr></tbody></table>
      </body>
    ''', 200)));

    // Act
    var response = await school_web_scraper.initiate(client);

    // Assert
    expect(
        response,
        equals(json.encode([
          {
            'title': 'Get started with Dart',
            'href': 'https://dartlang.org',
          }
        ])));
  });

    test('calling initiate(client) should silently fail', () async {
    // Arrange
    client = MockClient((req) => Future(() => Response('Failed', 400)));

    // Act
    var response = await school_web_scraper.initiate(client);

    // Assert
    expect(response, equals('Failed'));
  });
}