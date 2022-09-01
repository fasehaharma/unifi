import 'package:flutter/material.dart';
import 'package:unify/data-holder-singleton.dart';

class PlanWidgetListProvided extends StatelessWidget{

  PlanWidgetListProvided();
  DataHolderSingleton dataHolderSingleton = new DataHolderSingleton();

  @override
  Widget build(BuildContext context) {

    String plan = dataHolderSingleton.planArgument?.plan??'';
    if(plan == '800Mbps'){
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text('1. FREE Internet for 30days'),
          Text('2. Unlimited internet 300Mbps'),
          Text('3. Wi-Fi 6 certified router'),
          Text('4. Voice - FREE 600 minutes talk time to all lines'),
          Text('5. unifi TV Ultimate pack'),
          Text('   > Disney+ Hotstar'),
          Text('   > beIN SPORTS CONNECT'),
          Text('   > SPOTV NOW'),
          Text('   > BBC Player'),
          Text('   > Family & Kids channels'),
          Text('   > Drama Series channels'),
          Text('   > Movies channels'),
          Text('   > Sports channels'),
          Text('   > Korean & Japanese channels'),
          Text('   > News channels'),
          Text('   > Lifestyle & Knowledge channels'),
          Text('   > FREE unifi Plus Box'),
        ],
      );
    } else if(plan == '500Mbps'){
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text('1. FREE Internet for 30days'),
          Text('2. Unlimited internet 300Mbps'),
          Text('3. Wi-Fi 6 certified router'),
          Text('4. Voice - FREE 600 minutes talk time to all lines'),
          Text('5. unifi TV Ultimate pack'),
          Text('   > Disney+ Hotstar'),
          Text('   > beIN SPORTS CONNECT'),
          Text('   > SPOTV NOW'),
          Text('   > BBC Player'),
          Text('   > Family & Kids channels'),
          Text('   > Drama Series channels'),
          Text('   > Movies channels'),
          Text('   > Sports channels'),
          Text('   > Korean & Japanese channels'),
          Text('   > News channels'),
          Text('   > Lifestyle & Knowledge channels'),
          Text('   > FREE unifi Plus Box'),
        ],
      );
    } else if(plan == '300Mbps'){
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text('1. FREE Internet for 30days'),
          Text('2. Unlimited internet 300Mbps'),
          Text('3. Wi-Fi 6 certified router'),
          Text('4. Voice - FREE 600 minutes talk time to all lines'),
          Text('5. unifi TV Ultimate pack'),
          Text('   > Disney+ Hotstar'),
          Text('   > beIN SPORTS CONNECT'),
          Text('   > SPOTV NOW'),
          Text('   > BBC Player'),
          Text('   > Family & Kids channels'),
          Text('   > Drama Series channels'),
          Text('   > Movies channels'),
          Text('   > Sports channels'),
          Text('   > Korean & Japanese channels'),
          Text('   > News channels'),
          Text('   > Lifestyle & Knowledge channels'),
          Text('   > FREE unifi Plus Box'),
        ],
      );
    } else if(plan == '100Mbps'){
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text('1. FREE Internet for 30days'),
          Text('2. Unlimited internet 300Mbps'),
          Text('3. Wi-Fi 6 certified router'),
          Text('4. Voice - FREE 600 minutes talk time to all lines'),
          Text('5. unifi TV Ultimate pack'),
          Text('   > Disney+ Hotstar'),
          Text('   > beIN SPORTS CONNECT'),
          Text('   > SPOTV NOW'),
          Text('   > BBC Player'),
          Text('   > Family & Kids channels'),
          Text('   > Drama Series channels'),
          Text('   > Movies channels'),
          Text('   > Sports channels'),
          Text('   > Korean & Japanese channels'),
          Text('   > News channels'),
          Text('   > Lifestyle & Knowledge channels'),
          Text('   > FREE unifi Plus Box'),
        ],
      );
    } else if(plan == '30Mbps'){
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text('1. FREE Internet for 30days'),
          Text('2. Unlimited internet 300Mbps'),
          Text('3. Wi-Fi 6 certified router'),
          Text('4. Voice - FREE 600 minutes talk time to all lines'),
          Text('5. unifi TV Ultimate pack'),
          Text('   > Disney+ Hotstar'),
          Text('   > beIN SPORTS CONNECT'),
          Text('   > SPOTV NOW'),
          Text('   > BBC Player'),
          Text('   > Family & Kids channels'),
          Text('   > Drama Series channels'),
          Text('   > Movies channels'),
          Text('   > Sports channels'),
          Text('   > Korean & Japanese channels'),
          Text('   > News channels'),
          Text('   > Lifestyle & Knowledge channels'),
          Text('   > FREE unifi Plus Box'),
        ],
      );
    }
    else{
      return Text('data not found');
    }
  }
}