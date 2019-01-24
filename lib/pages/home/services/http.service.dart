import 'package:http/http.dart' as http;
Future<String> getIncidentData() async {
  var response = await http.get(
      'https://portalapi.threatanalytics.io/api/1.5/incidents/?-Sort%20By=Incident%20Created&Incident%20Status=Open',
      headers: {
        "Authorization": "Bearer ZGV2ZWxvcGVyQGFkdmFuY2VkdGhyZWF0YW5hbHl0aWNzLmNvbTpuMEZXWldpS3lGWk4yejl4eFoxZFdSWUVRUlV0QjdmTA"
      }
    );
  return response.body;
}