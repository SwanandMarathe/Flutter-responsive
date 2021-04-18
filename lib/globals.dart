import 'models/app_model.dart';

class Globals {
  static List<AppModel> myApps = [];
}

var appsData = [
  {
    'title': 'Coolbus',
    'summary':
        'Coolbus allows families to leverage their own networks and the networks of trusted relationships in their community to share the load transporting their kids to all their various activities, leaving you with more flexibility, time, and sanity. Driving carpool success for your family to get everyone where they need to be, safely and on time',
    'iosurl': 'https://apps.apple.com/us/app/coolbus/id1517098740',
    'androidurl': '',
    'imageUrl':
        'https://media-exp1.licdn.com/dms/image/C4E0BAQFqVMsOMhv6BQ/company-logo_200_200/0/1572901377303?e=2159024400&v=beta&t=aeDhRYgFzUB-GIMF1YHxBVtpBJabuWjWE7FsAfVVJmY',
  },
  {
    'title': 'BoomNation',
    'summary':
        'BoomNation is built exclusively for the Blue-Collar worker in today’s booming industries including: Construction, Trucking, Industrial/PetroChemical, Manufacturing, Heavy Civil, Oil & Gas/Pipeline, Commercial, Power/Utility, and Agriculture. Take control of your career, apply to the best jobs, promote your skills and connect with millions of other skilled workers. send registration request & enquiries. With the help of the app',
    'iosurl': 'https://apps.apple.com/in/app/boomnation-app/id1515990445',
    'androidurl':
        'https://play.google.com/store/apps/details?id=com.boomnationllc.mobile&hl=en',
    'imageUrl':
        'https://media-exp1.licdn.com/dms/image/C4D0BAQEsm1d6oMoOyw/company-logo_200_200/0/1598627257425?e=2159024400&v=beta&t=LAUWQ2CHbPx_lsiYJqOZg4GnyKcRWcJMUfVPUrul9jg',
  },
  {
    'title': 'Almarai Pro',
    'summary':
        'Almarai Pro App allows Restaurants, Cafes, Hotels, Quick Service Restaurants, Fast Food Outlets, Bakeries & Caterers to enjoy the ease & convenience of ordering Almarai Products for their business needs directly. It is an e-commerce plaaorm for registered Almarai customers, and it also allows one to send registration request & enquiries. With the help of the app customer/business can place order for required Products, create customized order templates for convenient reorder, schedule frequent orders, track delivery status, view full range of Almarai products & promotions etc.',
    'iosurl': 'https://apps.apple.com/us/app/almarai-pro/id1482180114',
    'androidurl':
        'https://play.google.com/store/apps/details?id=com.almarai.almaraipro&hl=en',
    'imageUrl':
        'https://upload.wikimedia.org/wikipedia/en/thumb/d/d7/Almarai_Corporate_Logo.svg/1200px-Almarai_Corporate_Logo.svg.png',
  },
  {
    'title': 'Nube',
    'summary':
        'Nube delivers a complete end-to-end solution that comprises of a Telemetry As A Service (TaaS).The mobile application gives control and total comfort to end consumers, so they will never run out of gas. They can also manage and monitor gas consumption, create alerts, set auto-order, and order gas in one click as and when required. The mobile app lets residential and commercial customers view their tank levels, manage their account, and place an order.',
    'iosurl': 'https://itunes.apple.com/us/app/nube-gs/id1196169168?mt=8',
    'androidurl': 'https://play.google.com/store/apps/details?id=com.nube.gs',
    'imageUrl':
        'https://play-lh.googleusercontent.com/4CgxOdSMggOciT_SkMpfy2NnGhdPk3CHmkXsJHbjknZtqmkaZx3iSxN_QTWQhNUJP7k',
  },
  {
    'title': 'Gas Sultana',
    'summary':
        'Gas Sultana delivers a complete end-to-end solution that comprises of a Telemetry As A Service (TaaS).The mobile application gives control and total comfort to end consumers, so they will never run out of gas. They can also manage and monitor gas consumption, create alerts, set auto-order, and order gas in one click as and when required. The mobile app lets residential and commercial customers view their tank levels, manage their account, and place an order.',
    'iosurl': 'https://apps.apple.com/us/app/gas-sultana/id1470934447',
    'androidurl':
        'https://play.google.com/store/apps/details?id=com.gassultana.gs&hl=en',
    'imageUrl':
        'data:image/png;base64,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',
  },
  {
    'title': 'Timegrab',
    'summary':
        'TimeGrab is a fun & entertaining Mobile Social network especially for teams and athletes. The great mobile features for participants, teams and leagues are designed to make it easy for people to share educational and social content, streamline communication and have fun.',
    'iosurl':
        'https://itunes.apple.com/us/app/timegrab-teams-connect/id1045471703?mt=8',
    'androidurl':
        'https://play.google.com/store/apps/details?id=com.timegrab.timegrab&hl=en',
    'imageUrl':
        'https://pbs.twimg.com/profile_images/651070973060378624/y0iRJyXX_400x400.jpg',
  },
  {
    'title': 'MAWQIFI',
    'summary':
        'The Smart App "MAWQIFI" is the official smart App for Municipality & Planning Department - Ajman to reserve parking in the city of Ajman using smart services, which has been designed and implemented under the supervision of the Municipality and Planning Department in Ajman.',
    'iosurl':
        'https://itunes.apple.com/ae/app/mawqifi-ajman-mparking-app/id973373901?mt=8',
    'androidurl':
        'https://play.google.com/store/apps/details?id=ae.gov.am.mParking&hl=en',
    'imageUrl':
        'https://is4-ssl.mzstatic.com/image/thumb/Purple124/v4/36/9d/4d/369d4d66-4688-8f81-c243-b4806720291a/source/512x512bb.jpg',
  },
  {
    'title': 'Drydock',
    'summary':
        'The Drydock is a Surgeon Library that developed to provide the global orthopedic medical community with on-demand access to the latest Freedom Total Knee(R) System information. From at-a-glance overviews of the system\'s innovative components and instruments, to in-depth design rationale briefs, comprehensive training tools, surgical videos and case studies, the app provides surgeons with the resources needed to assess and implement the best Freedom Total Knee(R) system options for their patients.',
    'iosurl': 'https://apps.apple.com/us/app/freedom-knee/id930657101',
    'androidurl':
        'https://play.google.com/store/apps/details?id=com.drydock.maxxbookshelf&hl=en',
    'imageUrl':
        'https://is3-ssl.mzstatic.com/image/thumb/Purple114/v4/04/09/f9/0409f91f-2b17-88cc-74c1-7262da0e79d9/source/512x512bb.jpg',
  }
];
