import 'package:flutter/material.dart';

class ContactDetails{
  final String name;
  final String? address;
  final int  phoneNumber;
  final String? email;

  ContactDetails({required this.name,  this.address, required this.phoneNumber,  this.email});


}