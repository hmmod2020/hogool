
import 'dart:ffi';

import 'package:flutter/material.dart';

class DataManeger {

static String _base_url="www.googl.com";
static String _user_token="";



static void setUpToken(String token){
_user_token=token;
}

static void deleteToken(){
  _user_token="";
}


static void changeUrl(String newUrl){
  _base_url=newUrl;

}
}