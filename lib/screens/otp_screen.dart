import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:email_auth/email_auth.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);


  @override
  _OTPScreenState createState() => _OTPScreenState();
}


class _OTPScreenState extends State<OTPScreen>{
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();


  void sendOTP() async{
    EmailAuth.sessionName = "Test Session";
    var res = await EmailAuth.sendOtp(recipientMail : _emailController.text);
    if (res){
      print("OTP Sent");
    }else{
      print("Not Able to Sent OTP");
    }
  }

  void verifyOTP() async{
    var res = EmailAuth.validate(
        recieverMail : _emailController.text , userOTP : _otpController.text);
    if (res) {
      print("OTP Verified");
    } else{
      print("Invalid OTP");
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xff151922),
      appBar: AppBar(
        title: Text('Verify Email'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Enter Email",
                      labelText: "Email",
                      suffixIcon: TextButton(
                        child: Text("Sent OTP"),
                        onPressed: () => sendOTP(),
                      )
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: _otpController,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter OTP",
                    labelText: "OTP",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(child: Text("Verify OTP"),
                  onPressed: () => verifyOTP(),
                ),
              ],

            ),)

        ],
      ),
    );
  }
}