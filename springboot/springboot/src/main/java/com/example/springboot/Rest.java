package com.example.springboot;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class Rest {
    private final AppointmentDAOClass adc;
    private final SignUpDAOClass sdc;
    private final PaymentDAOClass pdc;
    @Autowired
    public Rest(AppointmentDAOClass adc, SignUpDAOClass sdc,PaymentDAOClass pdc) {
        this.adc = adc;
        this.sdc = sdc;
        this.pdc = pdc;
    }

    @GetMapping("/home")
    public String showHomePage() {
        return "home";
    }
    
    @GetMapping("/index")
    public String showIndexPage() {
        return "index";
    }
    
    @GetMapping("/profile")
    public String showProfilePage() {
        return "profile";
    }
    
    @GetMapping("/specialities")
    public String showspecialitiesPage() {
        return "specialities";
    }
    
    @GetMapping("/buy_medicine")
    public String showbuy_medicinePage() {
        return "buy_medicine";
    }
    
    @GetMapping("/aboutus")
    public String showaboutusPage() {
        return "aboutus";
    }
    
    @GetMapping("/contact")
    public String showcontactPage() {
        return "contact";
    }
    
    @GetMapping("/book_appointment")
    public String showbook_appointmentPage() {
        return "book_appointment";
    }
    
    @GetMapping("/branches")
    public String showbranchesPage() {
        return "branches";
    }
    
    @GetMapping("/display")
    public String showDisplayPage() {
        return "display";
    }
    
    @GetMapping("/ajaybahadur")
    public String showAjayBahadurPage() {
        return "ajaybahadur";
    }
    @GetMapping("/akileshjain")
    public String showakileshjainPage() {
        return "akileshjain";
    }
    @GetMapping("/akbardhan")
    public String showakbardhanPage() {
        return "akbardhan";
    }
    @GetMapping("/sreenivaskumar")
    public String showsreenivaskumarPage() {
        return "sreenivaskumar";
    }

    
    @GetMapping("/procedures")
    public String showProceduresPage() {
        return "procedures";
    }
    
    @GetMapping("/diseases")
    public String showDiseasesPage() {
        return "diseases";
    }
    
    @GetMapping("/heart")
    public String showHeartPage() {
        return "heart";
    }
    
    @GetMapping("/orthopedics")
    public String showOrthopedicsPage() {
        return "orthopedics";
    }
    
    @GetMapping("/spine")
    public String showSpinePage() {
        return "spine";
    }
    
    @GetMapping("/one_page")
    public String showOne_PagePage() {
        return "one_page";
    }
    
    @GetMapping("/medicine")
    public String showMedicinePage() {
        return "medicine";
    }
    
    
    
    
    @GetMapping("/appointment")
    public String showForm(Model model) {
        model.addAttribute("app2", new Appointment());
        return "appointment";
    }
    @PostMapping("/insert")
    public String addAppointment(@ModelAttribute("app2") Appointment user, Model model) {
        model.addAttribute("app1", user);
        adc.insertDetails(user);
        return "home";
    }
    
    @GetMapping("/signup")
    public String signup(Model model) {
        model.addAttribute("sp2", new SignUp());
        return "signup";
    }
    

    @PostMapping("/add_patient")
    public String addPatient(@ModelAttribute("sp2") SignUp user2, Model model) {
        model.addAttribute("sp1", user2);
        sdc.insertdata(user2);
        return "home";
    }
    
    @GetMapping("/login")
    public String showloginPage(Model model) {
    	model.addAttribute("sp3", new Login());
        return "login";
    }
    
    @PostMapping("/check")
    public String login(@ModelAttribute("sp3") Login user3, Model model) {
        String email = user3.getEmail();
        String pswd = user3.getPwd();
        Optional<SignUp> l = sdc.findpatbyId(email);
        SignUp l1 = l.orElse(new SignUp()); // You should handle the case where l is empty.
        if (l.isPresent() && pswd.equals(l1.getConfpassword())) {
            // Successful login, you can set session variables here
            return "index"; // Redirect to the index page after successful login
        } else {
            model.addAttribute("loginFailed", true);
            return "error"; // Redirect back to the login page with a message
        }
    }

    
    @GetMapping("/payment")
    public String showPayment(Model model) {
        model.addAttribute("p2", new Payment());
        return "payment";
    }
    
    @PostMapping("/add_pay")
    public String addPay(@ModelAttribute("p2") Payment user, Model model) {
        model.addAttribute("p1", user);
        pdc.insertDetails(user);
        return "home";
    }
    
  /*  @Autowired
    NotificationManager M; // Inject NotificationManager

    // Chatbot endpoint
    @PostMapping("/chatbot/chat")
    public String chat(@RequestParam String message) {
        String senderEmail = "your_email@gmail.com"; // Set your email here
        String toEmail = "recipient_email@gmail.com"; // Set recipient's email here

        String subject = "Chatbot Response";
        String response = "Chatbot received message: " + message;

        M.sendEmail(senderEmail, toEmail, subject, response);

        // You can return a response or redirect to another page
        return "chatbot_response_page"; // Change to the appropriate page
    }*/
    
   /* @GetMapping("/med")
    public String showMedPage() {
        return "med";
    }

    @PostMapping("/example")
    public String processExampleForm(@RequestParam("paramName") String paramValue) {
        // Handle the form submission here
        // You can access the submitted data using the 'paramValue' parameter
        // You can perform any necessary processing and return an appropriate response page.
        return "example"; // For example, you can redirect back to the "example" page with a success message.
    }
*/
}
