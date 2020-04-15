import 'dart:convert'; // Contains the JSON encoder

import 'dart:io';
import 'package:http/http.dart'; // Contains a client for making API calls
import 'package:html/parser.dart'; // Contains HTML parsers to generate a Document object
import 'package:html/dom.dart';
import 'package:path/path.dart'; // Contains DOM related classes for extracting data from elements


Future initiate(BaseClient client) async 
{
  Response response = await client.get('https://news.ycombinator.com');
  if (response.statusCode != 200) 
  {
    return response.body;
  }
  print(response.body);
  var document = parse(response.body);
  List<Element> links = document.querySelectorAll('td.title > a.storylink');
  List<Map<String, dynamic>> linkMap = [];

  for(var link in links)
  {
    linkMap.add
    (
      {
        'title': link.text,
        'href': link.attributes['href'],
      }
    );
  }

  return json.encode(linkMap);
}

Future WebsiteHasChanged(BaseClient client) async
{
  Response response = await client.get('https://randomtextgenerator.com/');
  if (response.statusCode != 200) return response.body;
  print(response.headers);
  print(response.body);

  String pathToFile = join(dirname(Platform.script.toFilePath()), '..', 'resources', 'data.txt');
  print(pathToFile);
  File file = File(pathToFile);
  String contents;
  List<Map<String, dynamic>> webContentHashes = [];

  webContentHashes.add(
    {
      'School': 'Umich',
      'Length': response.body.toString().replaceAll(RegExp(r'[\W\d]'), '').length,
    }
  );

  webContentHashes.add(
    {
      'School': 'UCSC',
      'Hash': '23678',
      'Length': 12,
    }
  );

  if(await file.exists())
  {
    contents = await file.readAsString();
    var jsonContent = jsonDecode(contents);
    print(jsonContent);
    print(jsonContent[0]['School']);
    await file.writeAsString(json.encode(webContentHashes));
  }
  else{
    file.openWrite();
  }
}

