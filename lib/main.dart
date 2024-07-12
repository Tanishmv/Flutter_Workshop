import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blood donor registration',
      theme: ThemeData(
        primarySwatch: Colors.red,
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
      home: const DonorRegisterPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DonorRegisterPage extends StatefulWidget {
  const DonorRegisterPage({super.key});

  @override
  State<DonorRegisterPage> createState() => _DonorRegisterPageState();
}

class _DonorRegisterPageState extends State<DonorRegisterPage> {
  // Create the controllers
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usnController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController experienceController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController pincodeController = TextEditingController();
  String? gender;
  String? bloodGroup;
  String? platelets;
  String? condition;
  String? drinkingandsmoking;
  String? needy;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Function to clear the form
  void _clearForm() {
    nameController.clear();
    emailController.clear();
    mobileController.clear();
    experienceController.clear();
    phoneController.clear();
    dateController.clear();
    pincodeController.clear();
    numberController.clear();
    usnController.clear();
    ageController.clear();
    setState(() {
      gender = null;
      bloodGroup = null;
      platelets = null;
      condition = null;
      drinkingandsmoking = null;
      needy = null;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center( 
        child: Text('BLOOD DONOR REGISTRATION', 
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        ),
        backgroundColor: Colors.red,
        
      ),
      
      // For the form to be in center
      body: 
      Container(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: ListView(
                shrinkWrap: true,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'Email ID',
                    style: TextStyle(color: Colors.red),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      hintText: 'Enter Email',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '*Please enter your email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Name of the donor',
                    style: TextStyle(color: Colors.red),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      hintText: 'Enter Name',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '*Please enter your name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'USN',
                    style: TextStyle(color: Colors.red),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: usnController,
                    decoration: const InputDecoration(
                      hintText: 'Enter USN',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '*Please enter your USN';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Donor Age',
                    style: TextStyle(color: Colors.red),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: ageController,
                    decoration: const InputDecoration(
                      hintText: 'Enter age',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '*Please enter your age';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Donor Gender',
                    style: TextStyle(color: Colors.red),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey), // Add border around radio buttons
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        RadioListTile<String>(
                          title: const Text('Male'),
                          value: 'Male',
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value;
                            });
                          },
                        ),
                        RadioListTile<String>(
                          title: const Text('Female'),
                          value: 'Female',
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value;
                            });
                          },
                        ),
                        RadioListTile<String>(
                          title: const Text('Non binary'),
                          value: 'nonbinary',
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  if (gender == null)
                    const Padding(
                      padding: EdgeInsets.only(left: 15, bottom: 10),
                      child: Text(
                        '*Please select your gender',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  const SizedBox(height: 20),
                  const Text(
                    'Blood Group',
                    style: TextStyle(color: Colors.red),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey), // Add border around radio buttons
                      borderRadius: BorderRadius.circular(8),
                    ),
                  child: Column(
                    children: [
                        RadioListTile<String>(
                          title: const Text('A RhD positive (A+)'),
                          value: 'A+',
                          groupValue: bloodGroup,
                          onChanged: (value) {
                            setState(() {
                              bloodGroup = value;
                            });
                          },
                        ),
                      
                        RadioListTile<String>(
                          title: const Text('A RhD negative (A-)'),
                          value: 'A-',
                          groupValue: bloodGroup,
                          onChanged: (value) {
                            setState(() {
                              bloodGroup = value;
                            });
                          },
                        ),
                  
                        RadioListTile<String>(
                          title: const Text('B RhD positive (B+)'),
                          value: 'B+',
                          groupValue: bloodGroup,
                          onChanged: (value) {
                            setState(() {
                              bloodGroup = value;
                            });
                          },
                        ),
                      
                        RadioListTile<String>(
                          title: const Text('B RhD negative (B-)'),
                          value: 'B-',
                          groupValue: bloodGroup,
                          onChanged: (value) {
                            setState(() {
                              bloodGroup = value;
                            });
                          },
                        ),

                  
                        RadioListTile<String>(
                          title: const Text('O RhD positive (O+)'),
                          value: 'O+',
                          groupValue: bloodGroup,
                          onChanged: (value) {
                            setState(() {
                              bloodGroup = value;
                            });
                          },
                        ),
                      
                        RadioListTile<String>(
                          title: const Text('O RhD negative (O-)'),
                          value: 'O-',
                          groupValue: bloodGroup,
                          onChanged: (value) {
                            setState(() {
                              bloodGroup = value;
                            });
                          },
                        ),
                      
                      
                        RadioListTile<String>(
                          title: const Text('AB RhD positive (AB+)'),
                          value: 'AB+',
                          groupValue: bloodGroup,
                          onChanged: (value) {
                            setState(() {
                              bloodGroup = value;
                            });
                          },
                        ),
                      
                        RadioListTile<String>(
                          title: const Text('AB RhD negative (AB-)'),
                          value: 'AB-',
                          groupValue: bloodGroup,
                          onChanged: (value) {
                            setState(() {
                              bloodGroup = value;
                            });
                          },
                        ),
                      
                    ],
                  ),
                  ),
                  if (bloodGroup == null)
                    const Padding(
                      padding: EdgeInsets.only(left: 15, bottom: 10),
                      child: Text(
                        '*Please select your blood group',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  
                  const SizedBox(height: 20),
                  const Text(
                    'Donor Mobile Number',
                    style: TextStyle(color: Colors.red),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: mobileController,
                    decoration: const InputDecoration(
                      hintText: 'Enter Mobile Number',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '*Please enter your mobile number';
                      } else if (value.length != 10) {
                        return '*Mobile number must be 10 digits';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Donor Additional Mobile Number',
                    style: TextStyle(color: Colors.red),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: phoneController,
                    decoration: const InputDecoration(
                      hintText: 'Enter Additional Mobile Number',
                    ),
                    validator: (number) {
                      if (number == null || number.isEmpty) {
                        return '*Please enter additional mobile number';
                      } else if (number.length != 10) {
                        return '*Mobile number must be 10 digits';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Address Pincode',
                    style: TextStyle(color: Colors.red),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: pincodeController,
                    decoration: const InputDecoration(
                      hintText: 'Enter Pincode',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '*Please enter your pincode';
                      } 
                      if (value.length != 6) {
                        return '*Pincode must be 6 digits';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Have you donated platelets',
                    style: TextStyle(color: Colors.red),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey), // Add border around radio buttons
                      borderRadius: BorderRadius.circular(8),
                    ),
                  child: Column(
                    children: [
                        RadioListTile<String>(
                          title: const Text('Yes'),
                          value: 'Yes',
                          groupValue: platelets,
                          onChanged: (value) {
                            setState(() {
                              platelets = value;
                            });
                          },
                        ),
                        RadioListTile<String>(
                title: const Text('No'),
                          value: 'No',
                          groupValue: platelets,
                          onChanged: (value) {
                            setState(() {
                              platelets = value;
                            });
                          },
                        ),
                      ],
                    ),
                    ),
                  
                  if (platelets == null)
                    const Padding(
                      padding: EdgeInsets.only(left: 15, bottom: 10),
                      child: Text(
                        '*Please select your answer',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                   const SizedBox(height: 20),
                  const Text(
                    'Number of donations',
                    style: TextStyle(color: Colors.red),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: numberController,
                    decoration: const InputDecoration(
                      hintText: 'Enter number of donations',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '*Please enter your number of donations';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Last date of donation (dd/mm/yyyy)',
                    style: TextStyle(color: Colors.red),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: dateController,
                    decoration: const InputDecoration(
                      hintText: 'Enter last date of donation',
                    ),
                    
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter date';
                      }
                      return null;
                    }
                  ),


                  const SizedBox(height: 20),
                  const Text(
                    'Are you under any medical condition',
                    style: TextStyle(color: Colors.red),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey), // Add border around radio buttons
                      borderRadius: BorderRadius.circular(8),
                    ),
                  child: Column(
                    children: [
                        RadioListTile<String>(
                          title: const Text('Yes'),
                          value: 'Yes',
                          groupValue: condition,
                          onChanged: (value) {
                            setState(() {
                              condition = value;
                            });
                          },
                        ),
                        RadioListTile<String>(
                title: const Text('No'),
                          value: 'No',
                          groupValue: condition,
                          onChanged: (value) {
                            setState(() {
                              condition = value;
                            });
                          },
                        ),
                      ],
                    ),
                    ),
                  
                  if (condition == null)
                    const Padding(
                      padding: EdgeInsets.only(left: 15, bottom: 10),
                      child: Text(
                        '*Please select your answer',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),

                 
                  const SizedBox(height: 20),
                  const Text(
                    'Drinking and Smoking?',
                    style: TextStyle(color: Colors.red),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey), // Add border around radio buttons
                      borderRadius: BorderRadius.circular(8),
                    ),
                  child: Column(
                    children: [
                        RadioListTile<String>(
                          title: const Text('Yes'),
                          value: 'Yes',
                          groupValue: drinkingandsmoking,
                          onChanged: (value) {
                            setState(() {
                              drinkingandsmoking = value;
                            });
                          },
                        ),
                        RadioListTile<String>(
                title: const Text('No'),
                          value: 'No',
                          groupValue: drinkingandsmoking,
                          onChanged: (value) {
                            setState(() {
                              drinkingandsmoking = value;
                            });
                          },
                        ),
                      ],
                    ),
                    ),
                  
                  if (drinkingandsmoking == null)
                    const Padding(
                      padding: EdgeInsets.only(left: 15, bottom: 10),
                      child: Text(
                        '*Please select your answer',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),

                  
                  const SizedBox(height: 20),
                  const Text(
                    'Will you donate blood if you stay close to needy',
                    style: TextStyle(color: Colors.red),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey), // Add border around radio buttons
                      borderRadius: BorderRadius.circular(8),
                    ),
                  child: Column(
                    children: [
                        RadioListTile<String>(
                          title: const Text('Yes'),
                          value: 'Yes',
                          groupValue: needy,
                          onChanged: (value) {
                            setState(() {
                              needy = value;
                            });
                          },
                        ),
                        RadioListTile<String>(
                title: const Text('No'),
                          value: 'No',
                          groupValue: needy,
                          onChanged: (value) {
                            setState(() {
                              needy = value;
                            });
                          },
                        ),
                      ],
                    ),
                    ),
                  
                  if (needy == null)
                    const Padding(
                      padding: EdgeInsets.only(left: 15, bottom: 10),
                      child: Text(
                        '*Please select your answer',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),

                  const SizedBox(height: 20),
                  const Text(
                    'Write a few lines about your blood donation experience',
                    style: TextStyle(color: Colors.red),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: experienceController,
                    decoration: const InputDecoration(
                      hintText: 'Enter experience',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '*Please enter your experience';
                      }
                      return null;
                    },
                  ),
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      const Text(
                        'Upload Blood donation photo',
                        style: TextStyle(color: Colors.red),
                      ),
                      const SizedBox(height: 5),
                      ElevatedButton(
                        onPressed: () {
                          // Functionality for Upload button
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                          backgroundColor: Colors.grey, 
                        ),
                        child: const Text(
                          'Upload',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: double.infinity, 
                        child: ElevatedButton(
                          onPressed: () {
                            final name = nameController.text.trim();
                            final email = emailController.text.trim();
                            final usn = usnController.text.trim();
                            final age = ageController.text.trim();
                            final mobile = mobileController.text.trim();
                            final phone = phoneController.text.trim();
                            final pincode = pincodeController.text.trim();
                            final number = numberController.text.trim();
                            final date = dateController.text.trim();
                            final experience = experienceController.text.trim();

                            if (_formKey.currentState!.validate());

                              if (name.isEmpty || email.isEmpty || usn.isEmpty || age.isEmpty || mobile.isEmpty || phone.isEmpty || pincode.isEmpty || number.isEmpty || date.isEmpty || experience.isEmpty || gender == null || bloodGroup == null || needy == null || drinkingandsmoking == null || condition == null) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Please fill all the fields'),
                                    duration: Duration(
                                      seconds: 3),
                                    ),
                                    );
                              } else if (_formKey.currentState!.validate() && gender != null &&
                                bloodGroup != null &&
                                needy != null &&
                                drinkingandsmoking != null &&
                                condition != null) {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text('Form Submitted'),
                                    content: const Text('Thank you for registering as a blood donor!'),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                            backgroundColor: Colors.red, // Button background color
                          ),
                          child: const Text(
                            'Register',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity, // Makes buttons take full width
                        child: ElevatedButton(
                          onPressed: () {
                            _clearForm();
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                            backgroundColor: Colors.blue, // Button background color
                          ),
                          child: const Text(
                            'Clear',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}