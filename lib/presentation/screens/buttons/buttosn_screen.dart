import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class ButtosnScreen extends StatelessWidget {
  static const String name= 'buttons_screen';
  const ButtosnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Screen"),
      ),
      body: const _buttonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.pop();
        },
        child: Icon( Icons.arrow_back_ios_new_outlined ),
        ),
    );
  }
}

class _buttonsView extends StatelessWidget {
  const _buttonsView();

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {} , child: const Text("Elevet")), 
            const ElevatedButton(onPressed: null , child: Text("Elevet Disabled")), 
            ElevatedButton.icon(
              onPressed: (){}, 
              label: const Text('Elevated Icon'),
              icon: const Icon( Icons.access_alarm_rounded)), 
              FilledButton(onPressed: (){}, child: const Text('Filled')),
              FilledButton.icon(
                onPressed: (){}, 
                icon: const Icon(Icons.account_balance_wallet_rounded),
                label: const Text('Filled Icon'),
                ),
                OutlinedButton(onPressed: (){}, child: const Text("outline")),
                OutlinedButton.icon(onPressed: (){}, label: const Text("outline Icon"), icon: const Icon(Icons.access_alarms_outlined)),
                TextButton(onPressed: (){}, child: const Text('text')),
                TextButton.icon(onPressed: (){}, label: const Text('Text Icon'), icon: const Icon(Icons.airline_seat_flat_angled_outlined),), 
                const CustomButton(),
                IconButton(onPressed: (){}, icon: const Icon(Icons.add_home_work_rounded)), 
                 
                
          ]
        )
      ),
    );
  }
}


class CustomButton extends StatelessWidget {
  const CustomButton({super.key});
  
  @override
  
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text("Hola Mundo", style: TextStyle(color: Colors.white),)),
        ),
      ),
    );
  }
}