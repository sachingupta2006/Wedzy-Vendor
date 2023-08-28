import 'package:wedzy/view/SideMenu/Settings/fingerprintcompleted.dart';
import 'package:wedzy/view/SideMenu/Settings/fingerprintscreenmain.dart';
import 'package:wedzy/view/onBoarding/Home/Products/Jewellery/view_my_product.dart';
import 'package:wedzy/view/SideMenu/ChatBox.dart';
import 'package:wedzy/view/SideMenu/Settings/FeedBack.dart';
import 'package:wedzy/view/SideMenu/Notifications.dart';
import 'package:wedzy/view/SideMenu/Profile.dart';
import 'package:wedzy/view/SideMenu/Settings/ContactUs.dart';
import 'package:wedzy/view/SideMenu/Policy.dart';
import 'package:wedzy/view/SideMenu/Request/orderdetails.dart';
import 'package:wedzy/view/SideMenu/Request/requestmain.dart';
import 'package:wedzy/view/SideMenu/chart_group.dart';
import 'package:wedzy/view/SideMenu/Settings/faqs.dart';
import 'package:wedzy/view/SideMenu/Employee/add_employee.dart';
import 'package:wedzy/view/SideMenu/Employee/edit_employee.dart';
import 'package:wedzy/view/SideMenu/Employee/employee_details.dart';
import 'package:wedzy/view/SideMenu/Employee/employee_list.dart';
import 'package:wedzy/view/onBoarding/LoginScreen.dart';
import 'package:wedzy/view/onBoarding/Registration1.dart';
import 'package:wedzy/view/onBoarding/Registration2.dart';
import 'package:wedzy/view/onBoarding/Registration3.dart';
import 'package:wedzy/view/onBoarding/Registrationotp.dart';
import 'package:wedzy/view/onBoarding/SplashScreen.dart';
import 'package:wedzy/view/Services/Catering_service/cateraddeventform.dart';
import 'package:wedzy/view/Services/Catering_service/cateralbumpage.dart';
import 'package:wedzy/view/Services/Catering_service/caterbookingdone.dart';
import 'package:wedzy/view/Services/Catering_service/caterbookingpage.dart';
import 'package:wedzy/view/Services/Catering_service/catercertificatepage.dart';
import 'package:wedzy/view/Services/Catering_service/caterpackagespage.dart';
import 'package:wedzy/view/Services/Catering_service/caterportfolio.dart';
import 'package:wedzy/view/Services/Catering_service/caterrequiredinfopage.dart';
import 'package:wedzy/view/Services/Catering_service/catershoppreview.dart';
import 'package:wedzy/view/Services/Choreography_service/choreoaddeventform.dart';
import 'package:wedzy/view/Services/Choreography_service/choreoalbumpage.dart';
import 'package:wedzy/view/Services/Choreography_service/choreobookingdone.dart';
import 'package:wedzy/view/Services/Choreography_service/choreobookingpage.dart';
import 'package:wedzy/view/Services/Choreography_service/choreocertificatepage.dart';
import 'package:wedzy/view/Services/Choreography_service/choreopackagepage.dart';
import 'package:wedzy/view/Services/Choreography_service/choreoportfolio.dart';
import 'package:wedzy/view/Services/Choreography_service/choreorequiredinfo.dart';
import 'package:wedzy/view/Services/Choreography_service/choreoshoppreview.dart';
import 'package:wedzy/view/Services/Decorator_service/decoraddeventform.dart';
import 'package:wedzy/view/Services/Decorator_service/decoralbum.dart';
import 'package:wedzy/view/Services/Decorator_service/decorbookingdone.dart';
import 'package:wedzy/view/Services/Decorator_service/decorbookingpage.dart';
import 'package:wedzy/view/Services/Decorator_service/decorcertificate.dart';
import 'package:wedzy/view/Services/Decorator_service/decorequiredinfo.dart';
import 'package:wedzy/view/Services/Decorator_service/decorpackagepage.dart';
import 'package:wedzy/view/Services/Decorator_service/decorportfoliopage.dart';
import 'package:wedzy/view/Services/Decorator_service/decorshoppreview.dart';
import 'package:wedzy/view/Services/Dj_service/djaddeventform.dart';
import 'package:wedzy/view/Services/Dj_service/djalbum.dart';
import 'package:wedzy/view/Services/Dj_service/djbookingdone.dart';
import 'package:wedzy/view/Services/Dj_service/djbookingpage.dart';
import 'package:wedzy/view/Services/Dj_service/djcertificate.dart';
import 'package:wedzy/view/Services/Dj_service/djpackage.dart';
import 'package:wedzy/view/Services/Dj_service/djportfoliopage.dart';
import 'package:wedzy/view/Services/Dj_service/djrequiredinfopage.dart';
import 'package:wedzy/view/Services/Dj_service/djshoppreview.dart';
import 'package:wedzy/view/onBoarding/bookingsdetails.dart';
import '../../view/onBoarding/Home/Products/Jewellery/view_my_product.dart';
import '../../view/SideMenu/Settings/FeedBack.dart';
import '../../view/SideMenu/Notifications.dart';
import '../../view/SideMenu/Profile.dart';
import '../../view/SideMenu/Settings/ContactUs.dart';
import '../../view/SideMenu/Policy.dart';
import '../../view/SideMenu/Request/orderdetails.dart';
import '../../view/SideMenu/Request/requestmain.dart';
import '../../view/SideMenu/Employee/add_employee.dart';
import '../../view/SideMenu/Employee/edit_employee.dart';
import '../../view/SideMenu/Employee/employee_details.dart';
import '../../view/SideMenu/Employee/employee_list.dart';
import '../../view/onBoarding/LoginScreen.dart';
import '../../view/onBoarding/Registration1.dart';
import '../../view/onBoarding/Registration2.dart';
import '../../view/onBoarding/Registration3.dart';
import '../../view/onBoarding/Registrationotp.dart';
import '../../view/onBoarding/SplashScreen.dart';
import 'package:wedzy/view/Services/Bartender/certificatepage.dart';
import 'package:wedzy/view/Services/Bartender/shopdetailpreview.dart';
import 'package:wedzy/view/Services/Cake_service/cakeaddeventform.dart';
import 'package:wedzy/view/Services/Cake_service/cakealbumpage.dart';
import 'package:wedzy/view/Services/Cake_service/cakebookingdone.dart';
import 'package:wedzy/view/Services/Cake_service/cakebookingpage.dart';
import 'package:wedzy/view/Services/Cake_service/cakecertificatepage.dart';
import 'package:wedzy/view/Services/Cake_service/cakepackagespage.dart';
import 'package:wedzy/view/Services/Cake_service/cakeportfoliopage.dart';
import 'package:wedzy/view/Services/Cake_service/cakeshopdetailpage.dart';
import 'package:wedzy/view/Services/Cake_service/requiredinfopage.dart';
import 'package:wedzy/view/Services/Makeup_service/makeupaddeventform.dart';
import 'package:wedzy/view/Services/Makeup_service/makeupalbum.dart';
import 'package:wedzy/view/Services/Makeup_service/makeupbookingdone.dart';
import 'package:wedzy/view/Services/Makeup_service/makeupbookingpage.dart';
import 'package:wedzy/view/Services/Makeup_service/makeupcertificate.dart';
import 'package:wedzy/view/Services/Makeup_service/makeuppackage.dart';
import 'package:wedzy/view/Services/Makeup_service/makeupportfolio.dart';
import 'package:wedzy/view/Services/Makeup_service/makeuprequiredinfo.dart';
import 'package:wedzy/view/Services/Makeup_service/makeupshopprevier.dart';
import 'package:wedzy/view/Services/Mehandi_service/mehandiaddeventform.dart';
import 'package:wedzy/view/Services/Mehandi_service/mehandialbum.dart';
import 'package:wedzy/view/Services/Mehandi_service/mehandibookingdone.dart';
import 'package:wedzy/view/Services/Mehandi_service/mehandibookingpage.dart';
import 'package:wedzy/view/Services/Mehandi_service/mehandicertificate.dart';
import 'package:wedzy/view/Services/Mehandi_service/mehandipackagepage.dart';
import 'package:wedzy/view/Services/Mehandi_service/mehandiportfoliopage.dart';
import 'package:wedzy/view/Services/Mehandi_service/mehandirequiredinfo.dart';
import 'package:wedzy/view/Services/Mehandi_service/mehandishoppreview.dart';
import 'package:wedzy/view/Services/Photography_service/photoaddeventform.dart';
import 'package:wedzy/view/Services/Photography_service/photoalbumpage.dart';
import 'package:wedzy/view/Services/Photography_service/photobookingdone.dart';
import 'package:wedzy/view/Services/Photography_service/photobookingspage.dart';
import 'package:wedzy/view/Services/Photography_service/photocertificate.dart';
import 'package:wedzy/view/Services/Photography_service/photopackagepage.dart';
import 'package:wedzy/view/Services/Photography_service/photoportfolio.dart';
import 'package:wedzy/view/Services/Photography_service/photorequiredinfo.dart';
import 'package:wedzy/view/Services/Photography_service/photoshoppreview.dart';
import 'package:wedzy/view/SideMenu/Settings/FeedBack.dart';
import 'package:wedzy/view/SideMenu/Messages.dart';
import 'package:wedzy/view/SideMenu/Notifications.dart';
import 'package:wedzy/view/SideMenu/Settings/PasswordAndSecurity.dart';
import 'package:wedzy/view/SideMenu/Profile.dart';
import 'package:wedzy/view/SideMenu/Settings/ContactUs.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:wedzy/view/Services/Bartender/addeventformpage.dart';
import 'package:wedzy/view/Services/Bartender/bookingdonepage.dart';
import 'package:wedzy/view/Services/Bartender/bookingspage.dart';
import 'package:wedzy/view/Services/Bartender/packagespage.dart';
import 'package:wedzy/view/Services/Bartender/portfoliopage.dart';
import 'package:wedzy/view/Services/Bartender/portfoliopage1.dart';
import 'package:wedzy/view/Services/Bartender/requiredinfopage.dart';
import 'package:wedzy/view/Services/Talent_service/talentaddeventform.dart';
import 'package:wedzy/view/Services/Talent_service/talentalbumpage.dart';
import 'package:wedzy/view/Services/Talent_service/talentbookingdone.dart';
import 'package:wedzy/view/Services/Talent_service/talentbookingpage.dart';
import 'package:wedzy/view/Services/Talent_service/talentcertificate.dart';
import 'package:wedzy/view/Services/Talent_service/talentpackagepage.dart';
import 'package:wedzy/view/Services/Talent_service/talentportfolio.dart';
import 'package:wedzy/view/Services/Talent_service/talentrequiredinfo.dart';
import 'package:wedzy/view/Services/Talent_service/talentshoppreview.dart';
import 'package:wedzy/view/Services/Venue_service/Venuepackages/banquethall.dart';
import 'package:wedzy/view/Services/Venue_service/Venuepackages/hotelpackage.dart';
import 'package:wedzy/view/Services/Venue_service/Venuepackages/venuedecorandcatering.dart';
import 'package:wedzy/view/Services/Venue_service/Venuepackages/venuepackagemain.dart';
import 'package:wedzy/view/Services/Venue_service/venueaddeventform.dart';
import 'package:wedzy/view/Services/Venue_service/venuealbumpage.dart';
import 'package:wedzy/view/Services/Venue_service/venuebookingdone.dart';
import 'package:wedzy/view/Services/Venue_service/venuebookingspage.dart';
import 'package:wedzy/view/Services/Venue_service/venuecertificatepage.dart';
import 'package:wedzy/view/Services/Venue_service/venueportfoliopage.dart';
import 'package:wedzy/view/Services/Venue_service/venuerequiredinfo.dart';
import 'package:wedzy/view/Services/Venue_service/venueshopdetailpreview.dart';
import 'package:wedzy/view/Services/service.dart';
import 'package:wedzy/view/SideMenu/Policy.dart';
import 'package:wedzy/view/SideMenu/Request/orderdetails.dart';
import 'package:wedzy/view/SideMenu/Request/requestmain.dart';
import 'package:wedzy/view/SideMenu/Policy.dart';
import 'package:wedzy/view/SideMenu/SetPin.dart';
import 'package:wedzy/view/SideMenu/SetPin2.dart';
import 'package:wedzy/view/SideMenu/Settings.dart';
import 'package:wedzy/view/SideMenu/Employee/add_employee.dart';
import 'package:wedzy/view/SideMenu/Employee/edit_employee.dart';
import 'package:wedzy/view/SideMenu/Employee/employee_details.dart';
import 'package:wedzy/view/SideMenu/Employee/employee_list.dart';
import 'package:wedzy/view/onBoarding/LoginScreen.dart';
import 'package:wedzy/view/onBoarding/Registration1.dart';
import 'package:wedzy/view/onBoarding/Registration2.dart';
import 'package:wedzy/view/onBoarding/Registration3.dart';
import 'package:wedzy/view/onBoarding/Registrationotp.dart';
import 'package:wedzy/view/onBoarding/SplashScreen.dart';
import 'package:wedzy/view/SideMenu/Profile.dart';
import 'package:get/get.dart';
import 'package:wedzy/resources/routes/route_name.dart';
import 'package:wedzy/view/onBoarding/onBoarding.dart';
import 'package:wedzy/view/onBoarding/onBoarding2.dart';
import 'package:wedzy/view/onBoarding/Home/Products/Jewellery/already_user.dart';
import 'package:wedzy/view/onBoarding/Home/Products/Jewellery/add_product.dart';
import 'package:wedzy/view/onBoarding/Home/Products/Jewellery/shop_preview.dart';
import 'package:wedzy/view/onBoarding/Home/Products/Jewellery/certificate.dart';
import 'package:wedzy/view/onBoarding/Home/Products/Jewellery/new_user.dart';
import 'package:wedzy/view/onBoarding/Home/Products/Jewellery/product.dart';
import 'package:wedzy/view/onBoarding/Home/Products/Jewellery/product_preview.dart';
import 'package:wedzy/view/onBoarding/Home/Products/Jewellery/add_required_info.dart';
import 'package:wedzy/view/onBoarding/Home/Products/wedding_were/wedding_product.dart';
import 'package:wedzy/view/onBoarding/Home/Products/wedding_were/wedding_product_preview.dart';
import 'package:wedzy/view/onBoarding/Home/Products/wedding_were/wedding_view_product.dart';
import 'package:wedzy/view/SideMenu/chart_group.dart';
import 'package:wedzy/view/SideMenu/creategroup.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteName.splashScreen,
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: RouteName.loginScreen,
          page: () => const LoginScreen(),
        ),
        GetPage(name: RouteName.profileScreen, page: () => const Profile()),
        GetPage(name: RouteName.contactUsScreen, page: () => const ContactUs()),
        GetPage(name: RouteName.feedback, page: () => const FeedBack()),
        GetPage(name: RouteName.settings, page: () => const Settings()),
        GetPage(name: RouteName.setpin, page: () => const SetPin()),
        GetPage(name: RouteName.setpin2, page: () => const SetPin2()),
        GetPage(
            name: RouteName.passwordAndSecurity,
            page: () => const PasswordAndSecurity()),
        // GetPage(
        //     name: RouteName.notification, page: () =>  Notifications(index: ,)),
        GetPage(name: RouteName.message, page: () => const Messages()),
        GetPage(name: RouteName.chatbox, page: () => const ChatBox()),
        GetPage(
          name: RouteName.policy,
          page: () => const Policy(),
        ),
        GetPage(
          name: RouteName.requestmain,
          page: () => Requestmain(),
        ),
        GetPage(
          name: RouteName.orderdetails,
          page: () => Orderdetails(),
        ),
        GetPage(
          name: RouteName.onboarding,
          page: () => const Onboarding(),
        ),
        GetPage(
          name: RouteName.onboarding2,
          page: () => const Onboarding2(),
        ),
        GetPage(
          name: RouteName.registration1,
          page: () => Registration1(),
        ),
        GetPage(
          name: RouteName.service,
          page: () => Service(),
        ),
        GetPage(
          name: RouteName.requiredinfobartender,
          page: () => RequiredInfo(),
        ),
        GetPage(
          name: RouteName.portfoliopage,
          page: () => Portfoliopage(),
        ),
        GetPage(
          name: RouteName.portfolioalbum,
          page: () => Portfolioalbumpage(),
        ),
        GetPage(
          name: RouteName.packagespage,
          page: () => Packagespage(),
        ),
        GetPage(
          name: RouteName.bookingspage,
          page: () => Bookingspage(),
        ),
        GetPage(
          name: RouteName.addeventform,
          page: () => Addeventform(),
        ),
        GetPage(
          name: RouteName.bookingdone,
          page: () => Bokkingdone(),
        ),
        GetPage(
          name: RouteName.registrationotp,
          page: () => Registrationotp(),
        ),
        GetPage(
          name: RouteName.registration2,
          page: () => Registration2(),
        ),
        GetPage(
          name: RouteName.registration3,
          page: () => Registration3(),
        ),
        GetPage(
          name: RouteName.employeelist,
          page: () => EmployeeList(),
        ),
        GetPage(
          name: RouteName.employeedetail,
          page: () => EmployeeDetails(),
        ),
        GetPage(
          name: RouteName.editemployee,
          page: () => EditEmployee(),
        ),
        GetPage(
          name: RouteName.addemployee,
          page: () => AddEmployee(),
        ),

        GetPage(
          name: RouteName.already_user,
          page: () => Already_user(),
        ),
        GetPage(
          name: RouteName.view_my_product,
          page: () => View_my_product(),
        ),
        GetPage(
          name: RouteName.add_product,
          page: () => Add_product(),
        ),
        GetPage(
          name: RouteName.jewellery_shoppreview,
          page: () => Jewellery_shoppreview(),
        ),
        GetPage(
          name: RouteName.certificate,
          page: () => Certificate(),
        ),
        GetPage(
          name: RouteName.new_user,
          page: () => New_user(),
        ),
        GetPage(
          name: RouteName.product_preview,
          page: () => Product_preview(),
        ),
        GetPage(
          name: RouteName.product,
          page: () => Product(),
        ),
        GetPage(
          name: RouteName.add_required_info,
          page: () => Add_required(),
        ),
        GetPage(
          name: RouteName.shopdetailpreview,
          page: () => BartenderShoppreview(),
        ),
        GetPage(
          name: RouteName.certificatepage,
          page: () => Certificatepage(),
        ),
        GetPage(
          name: RouteName.requiredinfocake,
          page: () => RequiredInfoCake(),
        ),
        GetPage(
          name: RouteName.cakeportfolio,
          page: () => CakePortfoliopage(),
        ),
        GetPage(
          name: RouteName.cakealbumpage,
          page: () => Cakealbumpage(),
        ),
        GetPage(
          name: RouteName.cakepackage,
          page: () => CakePackagespage(),
        ),
        GetPage(
          name: RouteName.cakebooking,
          page: () => Cakebookingspage(),
        ),
        GetPage(
          name: RouteName.cakeaddeventform,
          page: () => Cakeaddeventform(),
        ),
        GetPage(
          name: RouteName.cakebookingdone,
          page: () => Cakebookingdone(),
        ),
        GetPage(
          name: RouteName.cakeshoppreview,
          page: () => CakeShoppreview(),
        ),
        GetPage(
          name: RouteName.cakecertificate,
          page: () => Cakeertificatepage(),
        ),
        GetPage(
          name: RouteName.venuerequiredinfo,
          page: () => VenueRequiredInfo(),
        ),
        GetPage(
          name: RouteName.venueportfoliopage,
          page: () => VenuePortfoliopage(),
        ),
        GetPage(
          name: RouteName.venuealbumpage,
          page: () => Venuealbumpage(),
        ),
        GetPage(
          name: RouteName.venuepackagemain,
          page: () => Venuepackagemain(),
        ),
        GetPage(
          name: RouteName.hotelpackage,
          page: () => Hotelpackagespage(),
        ),
        GetPage(
          name: RouteName.venuebookingpage,
          page: () => Venuebookingspage(),
        ),
        GetPage(
          name: RouteName.venueaddeventform,
          page: () => Venueaddeventform(),
        ),
        GetPage(
          name: RouteName.venuebookingdone,
          page: () => Venuebookingdone(),
        ),
        GetPage(
          name: RouteName.venuebanquethall,
          page: () => Banquethallpackagespage(),
        ),
        GetPage(
          name: RouteName.decorandcateringpage,
          page: () => DecorandCateringpackagespage(),
        ),
        GetPage(
          name: RouteName.venueshopdetailpreview,
          page: () => VenueShoppreview(),
        ),
        GetPage(
          name: RouteName.photorequiredpage,
          page: () => PhotoRequiredInfo(),
        ),
        GetPage(
          name: RouteName.photoportfolio,
          page: () => PhotoPortfoliopage(),
        ),
        GetPage(
          name: RouteName.photoalbum,
          page: () => Photoalbumpage(),
        ),
        GetPage(
          name: RouteName.photopackagepage,
          page: () => Photopackagespage(),
        ),
        GetPage(
          name: RouteName.venuecertificate,
          page: () => Venuecertificatepage(),
        ),
        GetPage(
          name: RouteName.photobookingpage,
          page: () => Photobookingspage(),
        ),
        GetPage(
          name: RouteName.photoaddeventform,
          page: () => Photoaddeventform(),
        ),
        GetPage(
          name: RouteName.photobookingdone,
          page: () => Photpbookingdone(),
        ),
        GetPage(
          name: RouteName.photoshoppreview,
          page: () => PhotoShoppreview(),
        ),
        GetPage(
          name: RouteName.photocertificate,
          page: () => Photocertificatepage(),
        ),
        GetPage(
          name: RouteName.mehandirequiredinfo,
          page: () => MehandiRequiredInfo(),
        ),
        GetPage(
          name: RouteName.mehandiportfolio,
          page: () => MehandiPortfoliopage(),
        ),
        GetPage(
          name: RouteName.mehandialbum,
          page: () => Mehandialbumpage(),
        ),
        GetPage(
          name: RouteName.mehandipackage,
          page: () => Mehandipackagespage(),
        ),
        GetPage(
          name: RouteName.mehandibookingpage,
          page: () => Mehandibookingspage(),
        ),
        GetPage(
          name: RouteName.mehandiaddeventform,
          page: () => Mehandiaddeventform(),
        ),
        GetPage(
          name: RouteName.mehandibookingdone,
          page: () => Mehandibookingdone(),
        ),
        GetPage(
          name: RouteName.mehandishoppreview,
          page: () => MehandiShoppreview(),
        ),
        GetPage(
          name: RouteName.mehandicertificate,
          page: () => Mehandicertificatepage(),
        ),
        GetPage(
          name: RouteName.talentrequiredinfo,
          page: () => TalentRequiredInfo(),
        ),
        GetPage(
          name: RouteName.talentportfolio,
          page: () => Talentportfoliopage(),
        ),
        GetPage(
          name: RouteName.talentalbumpage,
          page: () => Talentalbumpage(),
        ),
        GetPage(
          name: RouteName.talentpackage,
          page: () => Talentpackagespage(),
        ),
        GetPage(
          name: RouteName.talentbookingpage,
          page: () => Talentbookingspage(),
        ),
        GetPage(
          name: RouteName.talentaddeventform,
          page: () => Talentaddeventform(),
        ),
        GetPage(
          name: RouteName.talentbookingdone,
          page: () => Talentbookingdone(),
        ),
        GetPage(
          name: RouteName.talentshoppreview,
          page: () => TalentShoppreview(),
        ),
        GetPage(
          name: RouteName.talentcertificate,
          page: () => Talentcertificatepage(),
        ),
        GetPage(
          name: RouteName.wedding_Product,
          page: () => wedding_Product(),
        ),
        GetPage(
          name: RouteName.wedding_view_product,
          page: () => wedding_view_product(),
        ),
        GetPage(
          name: RouteName.wedding_Product_preview, 
          page: () => wedding_Product_preview()
        ),
        GetPage(
          name: RouteName.chart_group, 
          page: () => Chart_group()
        ),
        GetPage(
          name: RouteName.creategroup, 
          page: () => Creategroup()
        ),
        GetPage(
          name: RouteName.makeuprequiredinfo,
          page: () => MakeupRequiredInfo(),
        ),
        GetPage(
          name: RouteName.makeupportfolio,
          page: () => MakeupPortfoliopage(),
        ),
        GetPage(
          name: RouteName.makeupalbum,
          page: () => Makeupalbumpage(),
        ),
        GetPage(
          name: RouteName.makeuppackagepage,
          page: () => MakeupPackagespage(),
        ),
        GetPage(
          name: RouteName.makeupbookingpage,
          page: () => Makeupbookingspage(),
        ),
        GetPage(
          name: RouteName.makeupaddeventform,
          page: () => Makeupaddeventform(),
        ),
         GetPage(
          name: RouteName.makeupbookingdone,
          page: () => Makeupbookingdone(),
        ),
        GetPage(
          name: RouteName.makeupshoppreview,
          page: () => Makeupshoppreview(),
        ),
        GetPage(
          name: RouteName.makeupcertificate,
          page: () => Makeupcertificatepage(),
        ),
        GetPage(
          name: RouteName.djequiredinfopage,
          page: () => DjrequiredInfo(),
        ),
        GetPage(
          name: RouteName.djportfoliopage,
          page: () => Djportfoliopage(),
        ),
        GetPage(
          name: RouteName.djalbum,
          page: () => Djalbumpage(),
        ),
        GetPage(
          name: RouteName.djpackagepage,
          page: () => Djpackagespage(),
        ),
        GetPage(
          name: RouteName.djbookingpage,
          page: () => Djbookingspage(),
        ),
        GetPage(
          name: RouteName.djaddevent,
          page: () => Djaddeventform(),
        ),
         GetPage(
          name: RouteName.djbookingdone,
          page: () => Djbookingdone(),
        ),
        GetPage(
          name: RouteName.djshoppreview,
          page: () => Djshoppreview(),
        ),
        GetPage(
          name: RouteName.djcertificate,
          page: () => Djcertificatepage(),
        ),
        GetPage(
          name: RouteName.caterrequiredinfo,
          page: () => Cateringrequiredinfo(),
        ),
        GetPage(
          name: RouteName.caterportfolio,
          page: () => Caterportfoliopage(),
        ),
        GetPage(
          name: RouteName.cateralbumpage,
          page: () => Cateralbumpage(),
        ),
         GetPage(
          name: RouteName.caterpackagepage,
          page: () => Caterpackagespage(),
        ),
        GetPage(
          name: RouteName.caterbookingpage,
          page: () => Caterbookingspage(),
        ),
        GetPage(
          name: RouteName.cateraddeventform,
          page: () => Cateraddeventform(),
        ),
        GetPage(
          name: RouteName.caterbookingdone,
          page: () => Caterbookingdone(),
        ),
        GetPage(
          name: RouteName.catershoppreview,
          page: () => Catershoppreview(),
        ),
        GetPage(
          name: RouteName.catercertificate,
          page: () => Catercertificatepage(),
        ),
         GetPage(
          name: RouteName.choreorequiredinfopage,
          page: () => Choreographyrequiredinfo(),
        ),
        GetPage(
          name: RouteName.choreoportfoliopage,
          page: () => Choreoportfoliopage(),
        ),
        GetPage(
          name: RouteName.choreoalbumpage,
          page: () => Choreoalbumpage(),
        ),
        GetPage(
          name: RouteName.choreopackagepage,
          page: () => Choreopackagespage(),
        ),
        GetPage(
          name: RouteName.choreobookingpage,
          page: () => Choreobookingspage(),
        ),
        GetPage(
          name: RouteName.choreoaddeventform,
          page: () => Choreoaddeventform(),
        ),
        GetPage(
          name: RouteName.choreobookingdone,
          page: () => Choreobookingdone(),
        ),
        GetPage(
          name: RouteName.choreoshoppreview,
          page: () => Choreoshoppreview(),
        ),
        GetPage(
          name: RouteName.choreocertificate,
          page: () => Choreocertificatepage(),
        ),
        GetPage(
          name: RouteName.decorequiredinfo,
          page: () => DecoratorrequiredInfo(),
        ),
        GetPage(
          name: RouteName.decorportfoliopage,
          page: () => Decorportfoliopage(),
        ),
        GetPage(
          name: RouteName.decoralbum,
          page: () => Decoralbumpage(),
        ),
        GetPage(
          name: RouteName.decorpackage,
          page: () => Decorpackagespage(),
        ),
        GetPage(
          name: RouteName.decorbookingpage,
          page: () => Decorbookingspage(),
        ),
        GetPage(
          name: RouteName.decoraddeventform,
          page: () => Decoraddeventform(),
        ),
        GetPage(
          name: RouteName.decorbookingdone,
          page: () => Decorbookingdone(),
        ),
        GetPage(
          name: RouteName.decorshoppreview,
          page: () => Decorshoppreview(),
        ),
        GetPage(
          name: RouteName.decorcertificate,
          page: () => Decorcertificatepage(),
        ),
        GetPage(
          name: RouteName.faqs,
          page: () => Faqs(),
        ),
        GetPage(
          name: RouteName.bookingdetails,
          page: () => Bookingsdetails(),
        ),
        GetPage(
          name: RouteName.fingerprintmain,
          page: () => Fingerprintmain(),
        ),
        GetPage(
          name: RouteName.fingercompleted,
          page: () => Fingercompleted(),
        ),
      ];
      
}
