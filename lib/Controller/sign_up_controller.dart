

import 'package:get/get_state_manager/get_state_manager.dart';

class SignupController extends GetxController{

 bool switchValue =false;
 int radioButtonValue = 0;
 String? dropdownValue;

 toggleSwitch(bool value){
   switchValue = value;
   radioButtonValue = 0;
   dropdownValue = null;
   update();
 }

 changeRadioButton(int value){
   radioButtonValue = value;
  update();

 }

 changeDropdownButtonValue(String value){
   dropdownValue = value;
  update();
 }

}