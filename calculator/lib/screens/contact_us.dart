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
  showAlert(BuildContext context) {
    
   
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
       
          elevation: 8.0,
         
          contentPadding: EdgeInsets.all(18.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          content: Container(
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () => launch('tel:' + phoneNumber!),
                  child: Container(
                    height: 50.0,
                    alignment: Alignment.center,
                    child: Text('Call'),
                  ),
                ),
                    Divider(),
                
                InkWell(
                  onTap: () => launch('sms:' + phoneNumber!),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    child: Text('Message'),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () => launch('https://wa.me/' + phoneNumber!),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    child: Text('WhatsApp'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
@override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar:AppBar(title:const Text("Contact Us")),
      
     drawer: const AppDrawer(),
    body: 
    Padding(
        padding: EdgeInsets.all(16),
        
        child: SafeArea(
        
        child: SingleChildScrollView(
          
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
           
              Text(
                companyName,
                style: TextStyle(
                  fontFamily: companyFont ?? 'Pacifico',
                  fontSize: companyFontSize ?? 40.0,
                 
                  fontWeight: companyFontWeight ?? FontWeight.bold,
                ),
              ),
              Visibility(
                visible: tagLine != null,
                child: Text(
                  tagLine ?? "",
                  style: TextStyle(
                    fontFamily: taglineFont ?? 'Pacifico',
                 
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                    fontWeight: taglineFontWeight ?? FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                color: dividerColor ?? Colors.teal[200],
                thickness: dividerThickness ?? 4.0,
                indent: 50.0,
                endIndent: 50.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              
              Visibility(
                visible: phoneNumber != null,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: ListTile(
                    leading: Icon(Typicons.phone),
                    title: Text(
                      phoneNumberText ?? 'Phone Number',
                      style: TextStyle(
                        
                        fontFamily: textFont,
                      ),
                    ),
                    onTap: () => showAlert(context),
                  ),
                ),
              ),
Card(
                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
  child: ListTile(
                  leading: Icon(Typicons.mail),
                  title: Text(
                    emailText ?? 'Email ID',
                    style: TextStyle(
                      
                      fontFamily: textFont,
                    ),
                  ),
                  onTap: () => launch('mailto:' + email),
                ),
              ),
                 Visibility(
                visible: facebookHandle != null,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  
  
