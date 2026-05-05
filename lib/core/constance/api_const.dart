class ApiConst {
 //base url
 static const String baseUrl = "https://vcare.integration25.com/api";
 //end points
 static const String login = "$baseUrl/auth/login";
 static const String register = "$baseUrl/auth/register";
 static const String getHome = "$baseUrl/home/index";
 static const String getAllDocs = "$baseUrl/doctor/index";
 static const String doctorSearch = "/doctor/doctor-search";
 static const String getAllAppointments = "$baseUrl/appointment/index";
 static const String storeAppointments = "$baseUrl/appointment/store";


}