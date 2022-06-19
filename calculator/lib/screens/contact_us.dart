library contactus;

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:typicons_flutter/typicons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/app_drawer.dart';


///Class for adding contact details/profile details as a complete new page in your flutter app.
class ContactUs extends StatelessWidget {

  static const routeName='/contact-us';

    

  final String? phoneNumber;

  ///Text for Phonenumber
  final String? phoneNumberText;

 

  ///Email ID of company/individual
  final String email;

  ///Text for Email
  final String? emailText;

  ///Twitter Handle of Company/Individual
  final String? twitterHandle;

  ///Facebook Handle of Company/Individual
  final String? facebookHandle;

  ///Linkedin URL of company/individual
  final String? linkedinURL;

  ///Github User Name of the company/individual
  final String? githubUserName;

  ///Name of the Company/individual
  final String companyName;

  ///Font size of Company name
  final double? companyFontSize;

  ///TagLine of the Company or Position of the individual
  final String? tagLine;

  ///Instagram User Name of the company/individual
  final String? instagram;

  ///TextColor of the text which will be displayed on the card.
  
  /// font of text
  final String? textFont;

  /// font of the company/individul to be displayed
  final String? companyFont;

  /// font of the tagline to be displayed
  final String? taglineFont;

  /// divider color which is placed between the tagline & contact informations
  final Color? dividerColor;

  /// divider thickness which is placed between the tagline & contact informations
  final double? dividerThickness;

  ///font weight for tagline and company name
  final FontWeight? companyFontWeight;
  final FontWeight? taglineFontWeight;

  /// avatar radius will place the circularavatar according to developer/UI need
  final double? avatarRadius;
  ContactUs({
    required this.companyName,
   
    required this.email,
    this.emailText,
   
    required this.phoneNumber,
    this.phoneNumberText,
    
    required this.twitterHandle,
    required this.facebookHandle,
    required this.linkedinURL,
    required this.githubUserName,
    this.tagLine,
    required this.instagram,
    this.companyFontSize,
    this.textFont,
    this.companyFont,
    this.taglineFont,
    this.dividerColor,
    this.companyFontWeight,
    this.taglineFontWeight,
    this.avatarRadius,
    this.dividerThickness,
  });
