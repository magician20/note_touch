import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_touch/application/auth/auth_bloc.dart';
import 'package:note_touch/presentation/shared/util.dart';


//this will change image depend on user / not implemented yet
class AvatarWidget extends StatelessWidget {
  const AvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var assetImage = AssetImage('assets/icon/icon_app.png');
    return Container(
      // width: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: CustomColors.BlueIcon,
          width: 1.0,
        ),
      ),
      child: PopupMenuButton(
          //create dropdown menu item list
          onSelected: (value) {
            // navigate to login screan 
            if (value == 1){
            BlocProvider.of<AuthBloc>(context).add(const AuthEvent.signedOut());
            }
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                value: 1,
                child: Row(children: [
                  Icon(Icons.logout, color: Theme.of(context).primaryColor),
                  SizedBox(width: 4),
                  Text('Logout',
                      style:  TextStyle(
                        color: Theme.of(context).primaryColorDark,
                        fontSize: 16,
                      )),
                ]),
              ),
            ];
          },
          child: CircleAvatar(
            foregroundImage: assetImage,
            backgroundColor: Theme.of(context).primaryColorLight,
            // ignore: unnecessary_null_comparison
            child: assetImage == null ? const Icon(Icons.face) : Container(),
          )),
    );
  }
}
