// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }
// class MyApp  extends StatefulWidget {
//   const MyApp ({super.key});

//   @override
//   State<MyApp > createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp > {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(appBar: AppBar(title: Text(
//         'Login Screen',)
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment:CrossAxisAlignment.center ,
//         children: [
//           Text(
//             'Login',style: TextStyle(fontSize: 35,
//             color:Color.fromARGB(255, 85, 183, 225),
//              fontWeight: FontWeight.bold ),
//           ),

//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 30),
//             child: Form(
//               child: Column(
//                 children:
//             [
//                Padding(
//               padding: EdgeInsets.symmetric(horizontal: 15),
//               child: TextFormField(
//                 keyboardType: TextInputType.visiblePassword,
//                 decoration: InputDecoration(labelText: 'Name',
//                 hintText: 'Enter name', prefixIcon: Icon(Icons.wifi_password),
//                 border:OutlineInputBorder(),
//                 ),
//                onChanged: (String value) {

//                },
//                validator:(value){
//                 return value!.isEmpty ?'please enter name': null;
//                },
//               ),
//             ),
//             SizedBox(height: 30,),

//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 15),
//                 child: TextFormField(
//                 keyboardType: TextInputType.emailAddress,
//                 decoration: InputDecoration(labelText: 'Email',
//                 hintText: 'Enter email', prefixIcon: Icon(Icons.email),
//                 border:OutlineInputBorder(),
//                 ),
//                            onChanged: (String value) {

//                            },
//                            validator:(value){
//                 return value!.isEmpty ?'please enter email':null;
//                            },
//                           ),
//               ),
//             SizedBox(height: 30,),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 15),
//               child: TextFormField(
//                 keyboardType: TextInputType.visiblePassword,
//                 decoration: InputDecoration(labelText: 'Password',
//                 hintText: 'Enter password', prefixIcon: Icon(Icons.password),
//                 border:OutlineInputBorder(),
//                 ),
//                onChanged: (String value) {

//                },
//                validator:(value){
//                 return value!.isEmpty ?'please enter password': null;
//                },
//               ),
//             ),
//             SizedBox(height: 30,),

//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 35),
//               child: MaterialButton(
//                 minWidth: double.infinity,
//                 onPressed:(){},
//                 child: Text('Login'),
//                 color:Color.fromARGB(255, 85, 183, 225)
//                 ),
//             )
//             ],)),
//           )
//         ],
//       ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text('Login Screen'),
          actions: [
            Icon(
              Icons.search,
              size: 40,
            ),
            Icon(
              Icons.more_vert,
              size: 40,
            )
          ],
          // leading: Icon(Icons.menu),
        ),
        
       
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(
                fontSize: 35,
                color: Color.fromARGB(255, 85, 183, 225),
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Form(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: 'Name',
                          hintText: 'Enter your name',
                          prefixIcon: Icon(Icons.create), // Change icon here
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value) {},
                        validator: (value) {
                          return value!.isEmpty ? 'Please enter your name' : null;
                        },
                      ),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter your email',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value) {},
                        validator: (value) {
                          return value!.isEmpty ? 'Please enter your email' : null;
                        },
                      ),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter your password',
                          prefixIcon: Icon(Icons.password),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value) {},
                        validator: (value) {
                          return value!.isEmpty ? 'Please enter your password' : null;
                        },
                      ),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        onPressed: () {},
                        child: Text('Login'),
                        color: Color.fromARGB(255, 85, 183, 225),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
         floatingActionButton: FloatingActionButton(onPressed: (){},
         child: Icon
         (Icons.message),
         backgroundColor: Color.fromARGB(255, 100, 182, 232),
         elevation: 10,
         hoverColor: Colors.black,
         foregroundColor: const Color.fromARGB(255, 250, 251, 251),),
      ),
    );
  }
}
