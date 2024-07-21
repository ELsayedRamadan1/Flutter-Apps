// import 'package:flutter/material.dart';
//
// import '../ToDO App/shared/components/components.dart';
// class LoginScreen extends StatefulWidget {
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   var emailController = TextEditingController();
//
//   var passwordController = TextEditingController();
//
//   var formket=GlobalKey<FormState>();
//
//   bool isPassword=true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0), // 20 or 16
//         child: Center(
//           child: SingleChildScrollView(
//             child: Form(
//               key:formket,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Login',
//                     style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 40),
//                   defaultFormField(
//                       controller: emailController,
//                       type: TextInputType.emailAddress,
//                       validate: (value){
//                         if(value!.isEmpty){
//                           return 'email address must not be empty';
//                         }
//                         return null;
//                       },
//                       label: 'Email Address',
//                       prefix: Icons.email_outlined,
//                       keyboardType: TextInputType.text, hiddenPassword: true
//                   ),
//                   SizedBox(height: 15),
//                 defaultFormField(
//                     controller: passwordController,
//                     type: TextInputType.visiblePassword,
//                     validate: (value){
//                       if(value!.isEmpty){
//                         return 'password must not be empty';
//                       }
//                       return null;
//                     },
//                     label: 'Password ',
//                     prefix: Icons.lock,
//                   suffix: isPassword ? Icons.visibility:Icons.visibility_off,
//                   isPassword: isPassword,
//                   suffixPressed: (){
//                       setState(() {
//                         isPassword=!isPassword;
//                       });
//                   }, keyboardType: TextInputType.number, hiddenPassword: true
//
//                 ),
//                   SizedBox(height: 20),
//                   Container(
//                     width: double.infinity,
//                     color: Colors.blue,
//                     child: MaterialButton(
//                       onPressed: () {
//                         if(formket.currentState!.validate()){
//                           print(emailController.text);
//                           print(passwordController.text);
//                         }
//                       },
//                       child: Text(
//                         'Login',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text("Don't have an account?"),
//                       TextButton(onPressed: () {}, child: Text("Register now"))
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
