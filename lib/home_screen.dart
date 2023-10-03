import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _Homescreenstate();

}
class _Homescreenstate extends State<HomeScreen>{
  final TextEditingController _fieldoneTEController=TextEditingController();
  final TextEditingController _fieldtwoTEController=TextEditingController();
  final GlobalKey<FormState> _formKey=GlobalKey<FormState>();

  double result=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sum calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:Form(
          key: _formKey,
          child: Column(
          children: [
             TextFormField(
               controller: _fieldoneTEController,
              keyboardType: TextInputType.number,
               textInputAction: TextInputAction.next,
               decoration: InputDecoration(
                 hintText: 'Field 1'
               ),
            ),
            TextFormField(
               controller: _fieldtwoTEController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Field 2'
              ),

                 validator: (String? value){
                   if(value?.isEmpty ?? true) {
                     return 'Enter vaild value';
                   }
                   return null;
                 }
            ),
            const SizedBox(height: 16,),
            ButtonBar(
              alignment:MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(onPressed: (){
                  if(_formKey.currentState!.validate()){
                    double firstNumber=double.parse(_fieldoneTEController.text.trim());
                   double secondNumber=double.parse(_fieldtwoTEController.text.trim());
                   print(firstNumber);
                   print(secondNumber);
                   result=firstNumber+secondNumber;
                   setState(() {
                   });
                  }
                  },
                  icon:const Icon(Icons.add) ,
                  label: const Text('add'),),
                ElevatedButton.icon(onPressed: (){
                  if(_formKey.currentState!.validate()){
                    double firstNumber=double.parse(_fieldoneTEController.text.trim());
                    double secondNumber=double.parse(_fieldtwoTEController.text.trim());
                    print(firstNumber);
                    print(secondNumber);
                    result=firstNumber-secondNumber;
                    setState(() {
                    });
                  }
                },
                  icon:const Icon(Icons.remove) ,
                  label: const Text('Minu'),),


                ElevatedButton.icon(onPressed: (){
                  if(_formKey.currentState!.validate()){
                    double firstNumber=double.parse(_fieldoneTEController.text.trim());
                    double secondNumber=double.parse(_fieldtwoTEController.text.trim());
                    print(firstNumber);
                    print(secondNumber);
                    result=firstNumber*secondNumber;
                    setState(() {
                    });
                  }
                },
                  icon:const Icon(Icons.multiple_stop) ,
                  label: const Text('multiple'),),
              ],
            ),
            Text('result is $result',style: const TextStyle(fontSize: 18),),

          ],
        ),
      ),
      ),
    );
  }

}
