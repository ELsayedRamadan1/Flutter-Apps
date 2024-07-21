// import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:intl/intl.dart';
// import 'package:news_app/ToDO%20App/shared/cubit/cubit.dart';
// import 'package:news_app/ToDO%20App/shared/cubit/states.dart';
// import '../../News_App/cubit/app_cubit.dart';
// import '../shared/components/components.dart';
//
//
// class HomeScreen extends StatelessWidget {
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//   final formKey = GlobalKey<FormState>();
//   final titleController = TextEditingController();
//   final timeController = TextEditingController();
//   final dateController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (BuildContext context) => ToDoCubit()..createDatabase(),
//       child: BlocConsumer<ToDoCubit, ToDoStates>(
//         listener: (BuildContext context, ToDoStates state) {
//           if (state is AppInsertDatabaseState) {
//             Navigator.pop(context);
//           }
//         },
//         builder: (BuildContext context, state) {
//           ToDoCubit cubit = ToDoCubit.get(context);
//
//           return Scaffold(
//             key: scaffoldKey,
//             appBar: AppBar(
//               title: Text(cubit.titleScreen[cubit.currentIndex]),
//               actions: [
//                 IconButton(
//                   onPressed: () {
//                     AppCubit.get(context).changeAppMode();
//                   },
//                   icon: Icon(Icons.brightness_4_outlined),
//                 ),
//
//               ],
//             ),
//             body: ConditionalBuilder(
//               condition: state is! AppCreateDatabaseLoadingState,
//               builder: (context) => cubit.bodyScreens[cubit.currentIndex],
//               fallback: (context) => Center(child: CircularProgressIndicator()),
//             ),
//             floatingActionButton: FloatingActionButton(
//               onPressed: () {
//                 if (cubit.isBottomSheetShawn) {
//                   if (formKey.currentState!.validate()) {
//                     cubit.insertToDatabase(
//                         date: dateController.text,
//                         time: timeController.text,
//                         title: titleController.text
//                     );
//                   }
//                 } else {
//                   scaffoldKey.currentState!
//                       .showBottomSheet(
//                         (context) => Container(
//                           color: Colors.white,
//                           padding: EdgeInsets.all(20),
//                           child: Form(
//                             key: formKey,
//                             child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 defaultFormField(
//                                   prefix: Icons.title,
//                                   validate: (val) {
//                                     if (val!.isEmpty) {
//                                       return 'title is empty';
//                                     }
//                                     return null;
//                                   },
//                                   controller: titleController,
//                                   label: 'Task Title',
//                                   type: TextInputType.text,
//                                   keyboardType: TextInputType.text,
//                                   hiddenPassword: true,
//                                 ),
//                                 SizedBox(height: 15),
//                                 defaultFormField(
//                                   prefix: Icons.watch_later_outlined,
//                                   validate: (val) {
//                                     if (val!.isEmpty) {
//                                       return 'time is empty';
//                                     }
//                                     return null;
//                                   },
//                                   controller: timeController,
//                                   label: 'Task Time',
//                                   type: TextInputType.datetime,
//                                   onTap: () {
//                                     showTimePicker(
//                                         context: context,
//                                         initialTime: TimeOfDay.now())
//                                         .then((value) {
//                                       timeController.text = value!.format(context).toString();
//                                     });
//                                   }, keyboardType: TextInputType.text,
//                                   hiddenPassword: true,
//                                 ),
//                                 SizedBox(height: 15),
//                                 defaultFormField(
//                                   prefix: Icons.calendar_today,
//                                   validate: (val) {
//                                     if (val!.isEmpty) {
//                                       return 'Date is empty';
//                                     }
//                                     return null;
//                                   },
//                                   controller: dateController,
//                                   label: 'Task Date',
//                                   type: TextInputType.datetime,
//                                   onTap: () {
//                                     showDatePicker(
//                                             context: context,
//                                             initialDate: DateTime.now(),
//                                             firstDate: DateTime.now(),
//                                             lastDate: DateTime.parse('2033-12-12'))
//                                         .then((value) {
//                                       dateController.text = DateFormat.yMMMd().format(value!);
//                                     });
//                                   }, keyboardType: TextInputType.text,
//                                   hiddenPassword: true,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         elevation: 20,
//                       )
//                       .closed
//                       .then((value) {
//                     cubit.changeBottomSheetState(isShow: false, icon: Icons.edit);
//                   });
//                   cubit.changeBottomSheetState(isShow: true, icon: Icons.add);
//                 }
//               },
//               child: Icon(cubit.fabIcon),
//             ),
//             bottomNavigationBar: BottomNavigationBar(
//               type: BottomNavigationBarType.fixed,
//               currentIndex: cubit.currentIndex,
//               onTap: (index) {
//                 cubit.changeIndex(index);
//               },
//               items: [
//                 BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Tasks'),
//                 BottomNavigationBarItem(icon: Icon(Icons.check_circle_outline), label: 'Done'),
//                 BottomNavigationBarItem(icon: Icon(Icons.archive), label: 'archived'),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
