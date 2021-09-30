import 'package:beklenen_yasam_suresi/user_data.dart';

class Calculate{

  UserData _userData;
  Calculate(this._userData);

  double CalculateLife(){

    double result;

    result = 90 + _userData.sporgunleri - _userData.icilensigara;
    result = result + (_userData.kilo/_userData.boy);
    if(_userData.secilicinsiyet == 'Kadın'){
      return result+5;
    }
    else{ return result; }

  }


}