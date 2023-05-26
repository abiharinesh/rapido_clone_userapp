import 'package:firebase_auth/firebase_auth.dart';
import 'package:users_app/models/direction_details_info.dart';
import 'package:users_app/models/user_model.dart';

final FirebaseAuth fAuth = FirebaseAuth.instance;
User? currentFirebaseUser;
UserModel? userModelCurrentInfo;
List dList = []; //online-active drivers Information List
DirectionDetailsInfo? tripDirectionDetailsInfo;
String?  chosenDriverId ="";
String cloudMessagingServerToken = "key=AAAAx8WGcM0:APA91bHd63BBt-_R8BQZ8qK0XgVP1qEXCjO963v6AE45N1sS6gkXn4w3ZzJCOLRDSEyyqmKbMtOtt5a_93fSQTeaeb4ajnGyIcjEyJUfK8ICCVAW1h0Zij7hwU5d6agzx-h7yo5zKoA7";
String userDropOffAddress = "";
String driverCarDetails="";
String driverName="";
String driverPhone="";
double countRatingStars=0.0;
String titleStarsRating="";