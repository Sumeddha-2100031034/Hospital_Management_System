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
    private final MailService mailService;
    
    @Autowired
    private SignUpRepository sr;
    
    @Autowired
    public Rest(AppointmentDAOClass adc, SignUpDAOClass sdc,PaymentDAOClass pdc, MailService mailService) {
        this.adc = adc;
        this.sdc = sdc;
        this.pdc = pdc;
		this.mailService = mailService;
    }
    
    @GetMapping("/")
    public String showMainPage() {
    	return "home";
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
    public String showProfilePage(Model model, HttpSession session) {
        String email = (String) session.getAttribute("email");
        if (email != null) {
            SignUp user = sr.findByEmail(email);
            if (user != null) {
                model.addAttribute("email", user.getEmail());
                model.addAttribute("patientId", user.getPatientId());
                model.addAttribute("dob", user.getDob());
                model.addAttribute("mobile", user.getMobile());
                model.addAttribute("name", user.getName());
            }
        }
        return "profile";
    }

    @PostMapping("/update_profile")
    public String updateProfile(@ModelAttribute("sp2") SignUp updatedUser, Model model, HttpSession session) {
        String email = (String) session.getAttribute("email");
        if (email != null) {
            SignUp existingUser = sr.findByEmail(email);
            if (existingUser != null) {
                existingUser.setName(updatedUser.getName());
                existingUser.setDob(updatedUser.getDob());
                existingUser.setMobile(updatedUser.getMobile());

                // Generate and set Patient ID if not already present
                if (existingUser.getPatientId() == null || existingUser.getPatientId().isEmpty()) {
                    existingUser.setPatientId(sdc.generateUniquePatientId());
                }

                // Save the updated user object
                sr.save(existingUser);
            }
        }
        return "redirect:/profile"; // Redirect to the profile page after update
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
    @PostMapping("/login")
    public String login(@ModelAttribute("sp3") SignUp user, Model model, HttpSession session) {
        String email = user.getEmail();
        String password = user.getPassword();
        System.out.println("Login attempt: " + email + ", " + password);

        if (email == null || email.isEmpty() || password == null || password.isEmpty()) {
            System.out.println("Login failed: Email or password is empty");
            model.addAttribute("error", "Email and password must not be empty");
            return "login"; // Render the login page again with an error message
        }

        SignUp obj = sr.findByEmailAndPassword(email, password);
        if (obj != null) {
            System.out.println("Login successful"); 
            session.setAttribute("profile", obj);
            return "redirect:/profile";
        } else {
            System.out.println("Login failed: Incorrect email or password");
            model.addAttribute("error", "Incorrect email or password");
            return "login"; // Render the login page again with an error message
        }
    }



    @PostMapping("/add_patient")
    public String addPatient(@ModelAttribute("sp2") SignUp user2, Model model) {
        model.addAttribute("sp1", user2);
        sdc.insertdata(user2);
        return "redirect:/home";
    }
    
    @GetMapping("/login")
    public String showloginPage(Model model) {
    	model.addAttribute("sp3", new SignUp());
        return "login";
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
}
