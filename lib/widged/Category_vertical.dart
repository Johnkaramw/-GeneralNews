import 'package:flutter/material.dart';

class CategoryVertical extends StatelessWidget {
  const CategoryVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          
          width: 340,
          height: 200,
          decoration: BoxDecoration(
            
            image: DecorationImage(
              image: AssetImage('assets/images/vertcial.jpg'),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, right: 15),
          child: Text(
              'john karam william hanna ;fdjlf k,fndk, hjkehfdj fheh kfdh khfjhe jkbrekhjke kehekwre krbhfkebfwkef ffberf;.erkfuer '),
        )
      ],
    );
  }
}
