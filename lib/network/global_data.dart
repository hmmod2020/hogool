
import 'dart:ffi';

import 'package:flutter/material.dart';

class DataManeger {

static String base_url='http://mihadkh2021.pythonanywhere.com/';
static String _user_token="";
static String _account_type="";



static void setUpToken(String token){
_user_token=token;
}

static String getToken(){

return _user_token;
}
static void deleteToken(){
  _user_token="";
}


static void changeUrl(String newUrl){
  base_url=newUrl;

}

static setAccountType(String type){
  _account_type=type;
}

static String getAccountType(){
  return _account_type;
}
}