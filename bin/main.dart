import 'package:http/http.dart';
import 'package:school_web_scraper/school_web_scraper.dart' as school_web_scraper;

void main(List<String> arguments) async 
{
  print(await school_web_scraper.initiate(Client()));
}
