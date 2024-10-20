import 'dart:async';
import 'package:flutter/material.dart';
import 'package:TravPlan/forgotpassword.dart';
import 'package:TravPlan/signuppage.dart';
import 'package:TravPlan/firstpage.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTP> {
  final List<TextEditingController> _controllers =
      List.generate(4, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());
  late Timer _timer;
  int _remainingTime = 120; // 2 minutes in seconds

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingTime > 0) {
        setState(() {
          _remainingTime--;
        });
      } else {
        _timer.cancel();
      }
    });
  }

  void _onOtpEntered() {
    String otpCode = _controllers.map((controller) => controller.text).join();
    print("Entered OTP: $otpCode");

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const First(),
      ),
    );
  }

  Widget _buildOtpBox(int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: 50,
      child: TextField(
        controller: _controllers[index],
        focusNode: _focusNodes[index],
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        decoration: const InputDecoration(
          counterText: '',
          border: OutlineInputBorder(),
        ),
        onChanged: (value) {
          if (value.isNotEmpty) {
            if (index < 3) {
              FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
            } else {
              _focusNodes[index].unfocus();
              _onOtpEntered();
            }
          } else if (value.isEmpty && index > 0) {
            FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
          }
        },
      ),
    );
  }

  void _resendCode() {
    setState(() {
      _remainingTime = 120;
    });
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    String getTimerText() {
      final minutes = (_remainingTime ~/ 60).toString().padLeft(2, '0');
      final seconds = (_remainingTime % 60).toString().padLeft(2, '0');
      return '$minutes:$seconds';
    }

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 40,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Forgot(),
                  ),
                );
              },
              child: Image.asset('assets/arrow.png'),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 110),
                  const Text(
                    'OTP Verification',
                    style: TextStyle(fontSize: 25),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Please check your email to see the verification code',
                    style: TextStyle(color: Color.fromARGB(255, 116, 116, 115)),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(4, (index) {
                      return _buildOtpBox(index);
                    }),
                  ),
                  const SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      _onOtpEntered();
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 80),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 33, 54, 243),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          const BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: const Text(
                        'Verify',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    _remainingTime > 0
                        ? 'Resend code in ${getTimerText()}'
                        : 'Didn\'t receive the code?',
                    style: const TextStyle(color: Colors.black54),
                  ),
                  if (_remainingTime == 0)
                    TextButton(
                      onPressed: _resendCode,
                      child: const Text('Resend Code'),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: OTP(),
  ));
}
