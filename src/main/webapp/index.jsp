<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home | Wedding Planner</title>
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    
    <!-- FontAwesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- AOS - Animate On Scroll Library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css" />
    
    <!-- Google Fonts - Poppins and Great Vibes -->
    <link href="https://fonts.googleapis.com/css2?family=Great+Vibes&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    
    <style>
        /* Variables for consistent theming - Updated to wedding pink theme */
        :root {
            --primary: #d35f91; /* Wedding pink */
            --primary-dark: #b74177; /* Darker pink */
            --secondary: #f5a9cb; /* Light pink */
            --light: #f8f9fa;
            --dark: #333;
            --text-light: #fff;
            --gradient-primary: linear-gradient(135deg, #d35f91, #f5a9cb);
            --gradient-secondary: linear-gradient(135deg, #b74177, #d35f91);
            --gradient-overlay: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.6));
            --box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            --box-shadow-hover: 0 10px 25px rgba(0, 0, 0, 0.15);
            --transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
        }
        
        /* General styles */
        body {
            font-family: 'Poppins', sans-serif;
            color: var(--dark);
            overflow-x: hidden;
            scroll-behavior: smooth;
        }
        
        h1, h2, h3, h4, h5, h6 {
            font-weight: 700;
        }
        
        section {
            position: relative;
            overflow: hidden;
        }
        
        /* Cursive headings for wedding theme */
        .cursive-heading {
            font-family: 'Great Vibes', cursive;
            color: var(--primary);
        }
        
        /* Navbar styles - Enhanced */
        .navbar {
            background-color: rgba(255, 255, 255, 0.98) !important;
            box-shadow: 0 2px 20px rgba(0, 0, 0, 0.1);
            padding: 15px 0;
            transition: var(--transition);
            z-index: 1000;
        }
        
        .navbar.scrolled {
            padding: 10px 0;
        }
        
        .navbar-brand {
            font-weight: 700;
            color: var(--primary) !important;
            display: flex;
            align-items: center;
            transition: var(--transition);
        }
        
        .navbar-brand:hover {
            transform: translateY(-2px);
        }
        
        .navbar-brand i {
            margin-right: 8px;
            font-size: 1.5rem;
            transition: var(--transition);
        }
        
        .navbar-brand:hover i {
            transform: rotate(15deg);
        }
        
        .nav-link {
            color: var(--dark);
            font-weight: 500;
            position: relative;
            padding: 0.5rem 1rem;
            margin: 0 0.25rem;
            transition: var(--transition);
        }
        
        .nav-link::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            width: 0;
            height: 2px;
            background: var(--primary);
            transition: var(--transition);
            transform: translateX(-50%);
        }
        
        .nav-link:hover {
            color: var(--primary);
        }
        
        .nav-link:hover::after {
            width: 70%;
        }
        
        /* Hero section styles - Enhanced */
        .hero-section {
            background: var(--gradient-overlay), url('assets/images/wedding-backgrounds/hero.jpg') no-repeat center center;
            background-size: cover;
            background-attachment: fixed; /* Parallax effect */
            color: white;
            padding: 180px 0 160px;
            text-align: center;
            position: relative;
        }
        
        .hero-section::before {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            height: 80px;
            background: linear-gradient(to top, rgba(255,255,255,1) 20%, rgba(255,255,255,0) 100%);
        }
        
        .hero-section h1 {
            font-family: 'Great Vibes', cursive;
            font-size: 4.5rem;
            text-shadow: 2px 2px 8px rgba(0,0,0,0.5);
            margin-bottom: 1.5rem;
        }
        
        .hero-section p {
            font-size: 1.4rem;
            font-weight: 400;
            text-shadow: 1px 1px 4px rgba(0,0,0,0.6);
            max-width: 800px;
            margin: 0 auto 2.5rem;
        }
        
        /* Enhanced buttons */
        .btn {
            border-radius: 25px;
            padding: 12px 28px;
            font-weight: 600;
            letter-spacing: 0.5px;
            transition: var(--transition);
            position: relative;
            overflow: hidden;
            z-index: 1;
        }
        
        .btn::after {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 0;
            height: 0;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 50%;
            transform: translate(-50%, -50%);
            transition: width 0.6s, height 0.6s;
            z-index: -1;
        }
        
        .btn:hover::after {
            width: 300px;
            height: 300px;
        }
        
        .btn-primary {
            background: var(--gradient-primary);
            border: none;
            box-shadow: 0 4px 15px rgba(211, 95, 145, 0.4);
        }
        
        .btn-primary:hover, .btn-primary:focus {
            background: var(--gradient-primary);
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(211, 95, 145, 0.5);
        }
        
        .btn-outline-light {
            border: 2px solid white;
            background-color: transparent;
        }
        
        .btn-outline-light:hover {
            background-color: white;
            color: var(--primary) !important;
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(255, 255, 255, 0.4);
        }
        
        .btn i {
            transition: var(--transition);
        }
        
        .btn:hover i {
            transform: translateX(3px);
        }
        
        /* Enhanced Features Section */
        #features {
            padding: 100px 0;
            background: linear-gradient(180deg, rgba(248,249,250,1) 0%, rgba(255,255,255,1) 100%);
        }
        
        #features h2 {
            font-family: 'Great Vibes', cursive;
            font-size: 3.5rem;
            position: relative;
            padding-bottom: 20px;
            margin-bottom: 60px;
            color: var(--primary);
        }
        
        #features h2:after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 3px;
            background: var(--primary);
        }
        
        .card {
            border: none;
            border-radius: 15px;
            padding: 1.5rem;
            height: 100%;
            box-shadow: var(--box-shadow);
            transition: var(--transition);
            position: relative;
            overflow: hidden;
        }
        
        .card:hover {
            transform: translateY(-10px);
            box-shadow: var(--box-shadow-hover);
        }
        
        .card::before {
            content: '';
            position: absolute;
            top: -100px;
            left: -100px;
            width: 200px;
            height: 200px;
            border-radius: 50%;
            background: rgba(211, 95, 145, 0.05);
            transition: var(--transition);
            z-index: 0;
        }
        
        .card:hover::before {
            transform: scale(3);
        }
        
        .card-body {
            position: relative;
            z-index: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        
        .card i {
            color: var(--primary);
            background: rgba(211, 95, 145, 0.1);
            width: 80px;
            height: 80px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            margin-bottom: 1.5rem;
            transition: var(--transition);
        }
        
        .card:hover i {
            transform: rotateY(180deg);
            background: var(--primary);
            color: white;
        }
        
        .card-title {
            font-weight: 700;
            margin-bottom: 1rem;
            color: var(--primary-dark);
        }
        
        .card-text {
            color: #6c757d;
            text-align: center;
        }
        
        /* Enhanced Footer */
        footer {
            background: linear-gradient(135deg, #333 0%, #222 100%);
            color: white;
            padding: 60px 0 30px;
        }
        
        footer h5 {
            position: relative;
            padding-bottom: 15px;
            margin-bottom: 20px;
            color: var(--secondary);
        }
        
        footer h5::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 50px;
            height: 2px;
            background: var(--primary);
        }
        
        footer a {
            color: rgba(255,255,255,0.8);
            transition: var(--transition);
            display: inline-block;
            padding: 4px 0;
            text-decoration: none;
        }
        
        footer a:hover {
            color: var(--primary);
            transform: translateX(5px);
        }
        
        footer .contact-info i {
            width: 25px;
            color: var(--primary);
            margin-right: 10px;
        }
        
        footer .social-icons {
            display: flex;
            gap: 15px;
            margin-top: 20px;
        }
        
        footer .social-icons a {
            width: 38px;
            height: 38px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.1);
            display: flex;
            align-items: center;
            justify-content: center;
            transition: var(--transition);
        }
        
        footer .social-icons a:hover {
            background: var(--primary);
            transform: translateY(-5px);
        }
        
        /* Animations */
        .fade-in-up {
            animation: fadeInUp 0.6s ease forwards;
            opacity: 0;
        }
        
        .delay-1 { animation-delay: 0.1s; }
        .delay-2 { animation-delay: 0.2s; }
        .delay-3 { animation-delay: 0.3s; }
        
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translate3d(0, 30px, 0);
            }
            to {
                opacity: 1;
                transform: translate3d(0, 0, 0);
            }
        }
        
        .pulse {
            animation: pulse 1.5s infinite;
        }
        
        @keyframes pulse {
            0% {
                transform: scale(1);
                box-shadow: 0 4px 15px rgba(211, 95, 145, 0.4);
            }
            50% {
                transform: scale(1.05);
                box-shadow: 0 8px 20px rgba(211, 95, 145, 0.6);
            }
            100% {
                transform: scale(1);
                box-shadow: 0 4px 15px rgba(211, 95, 145, 0.4);
            }
        }
        
        /* Floating elements animation */
        .floating {
            animation: floating 3s ease-in-out infinite;
        }
        
        @keyframes floating {
            0% { transform: translateY(0px); }
            50% { transform: translateY(-10px); }
            100% { transform: translateY(0px); }
        }
        
        /* Text highlight for testimonial section */
        .highlight {
            color: var(--primary);
            position: relative;
            display: inline-block;
        }
        
        .highlight::after {
            content: '';
            position: absolute;
            width: 100%;
            height: 8px;
            background: rgba(211, 95, 145, 0.2);
            bottom: 0;
            left: 0;
            z-index: -1;
        }
        
        /* Additional section - Testimonials */
        .testimonials {
            padding: 100px 0;
            background: linear-gradient(180deg, #fff 0%, #f8f9fa 100%);
        }
        
        .testimonial-quote {
            font-size: 24px;
            line-height: 1.6;
            font-style: italic;
            position: relative;
            padding: 0 20px;
        }
        
        .testimonial-quote::before, 
        .testimonial-quote::after {
            content: '"';
            font-size: 60px;
            color: var(--primary);
            line-height: 0;
            position: absolute;
        }
        
        .testimonial-quote::before {
            left: -5px;
            top: 30px;
        }
        
        .testimonial-quote::after {
            right: -5px;
            bottom: -10px;
        }
        
        /* Scroll-to-top button */
        .scroll-to-top {
            position: fixed;
            bottom: 20px;
            right: 20px;
            width: 45px;
            height: 45px;
            background: var(--primary);
            color: white;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            cursor: pointer;
            opacity: 0;
            visibility: hidden;
            transition: var(--transition);
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.2);
            z-index: 999;
        }
        
        .scroll-to-top.active {
            opacity: 1;
            visibility: visible;
        }
        
        .scroll-to-top:hover {
            background: var(--primary-dark);
            transform: translateY(-3px);
        }
        
        /* Custom shapes for design elements */
        .shape-divider {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            overflow: hidden;
            line-height: 0;
        }

        .shape-divider svg {
            position: relative;
            display: block;
            width: calc(100% + 1.3px);
            height: 60px;
        }

        .shape-divider .shape-fill {
            fill: #FFFFFF;
        }
        
        /* Floating heart particles */
        #particles-js {
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            z-index: 1;
            pointer-events: none;
        }
        
        /* Content needs to be above particles */
        .content-wrapper {
            position: relative;
            z-index: 2;
        }
        
        /* Form styles matching login/register */
        .form-control {
            border-radius: 12px; /* Rounded corners */
            border: 1px solid #ced4da;
            padding: 12px 15px;
            height: 55px; /* Taller inputs */
            font-size: 16px;
            transition: all 0.3s ease;
        }
        
        .form-control:focus {
            border-color: var(--primary);
            box-shadow: 0 0 0 0.25rem rgba(211, 95, 145, 0.25);
            background-color: #fff;
        }
        
        .input-group {
            position: relative;
            margin-bottom: 25px; /* More spacing */
        }
        
        .input-group i {
            position: absolute;
            left: 15px;
            top: 50%;
            transform: translateY(-50%);
            color: var(--primary);
            z-index: 3;
            transition: all 0.3s ease;
        }
        
        .input-group input {
            padding-left: 45px;
        }
        
        .input-group .floating-label {
            position: absolute;
            pointer-events: none;
            left: 45px;
            top: 17px;
            transition: 0.2s ease all;
            color: #6c757d;
            background: transparent;
            padding: 0;
            z-index: 3;
        }
        
        .input-group input:focus ~ .floating-label,
        .input-group input:not(:placeholder-shown) ~ .floating-label {
            top: -12px;
            left: 20px;
            font-size: 12px;
            padding: 0 8px;
            background-color: white;
            border-radius: 10px;
            color: var(--primary);
            z-index: 5;
            box-shadow: 0 0 0 1px #fff;
        }
        
        /* Wedding-themed section with pink gradient */
        .wedding-theme-section {
            background: var(--gradient-primary);
            padding: 80px 0;
            color: white;
            text-align: center;
        }
        
        .wedding-theme-section h2 {
            font-family: 'Great Vibes', cursive;
            font-size: 3.5rem;
            margin-bottom: 30px;
        }
       /* New Contact Form Styles */
.contact-card {
    background: #fff;
    border-radius: 20px;
    padding: 40px;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
    border: 1px solid rgba(255, 255, 255, 0.2);
    overflow: hidden;
    position: relative;
}

.contact-card::before {
    content: "";
    position: absolute;
    width: 150%;
    height: 150%;
    background: radial-gradient(circle, rgba(211, 95, 145, 0.1) 0%, rgba(255, 255, 255, 0) 70%);
    top: -25%;
    left: -25%;
    z-index: 0;
}

.contact-input-group {
    position: relative;
    margin-bottom: 15px;
    transition: all 0.3s ease;
    z-index: 1;
}

.contact-icon {
    position: absolute;
    left: 16px;
    top: 50%;
    transform: translateY(-50%);
    color: #d35f91;
    font-size: 18px;
    transition: all 0.3s ease;
    z-index: 2;
}

.contact-input-group .textarea-icon {
    top: 25px;
    transform: none;
}

.contact-input {
    width: 100%;
    padding: 15px 15px 15px 50px;
    border: 1px solid #e0e0e0;
    border-radius: 50px;
    background: #fff;
    font-size: 16px;
    transition: all 0.3s ease;
    color: #444;
}

.contact-input:focus {
    border-color: #d35f91;
    box-shadow: 0 0 0 3px rgba(211, 95, 145, 0.2);
    outline: none;
}

textarea.contact-input {
    border-radius: 20px;
    min-height: 130px;
    resize: vertical;
    padding-top: 20px;
}

.contact-input-group:hover .contact-icon,
.contact-input:focus + .contact-icon {
    color: #b74177;
    transform: translateY(-50%) scale(1.2);
}

.contact-input-group:hover .textarea-icon,
textarea.contact-input:focus + .textarea-icon {
    transform: scale(1.2);
}

.contact-btn {
    background: linear-gradient(135deg, #d35f91, #b74177);
    border: none;
    color: white;
    padding: 15px 30px;
    border-radius: 50px;
    font-size: 16px;
    font-weight: 600;
    cursor: pointer;
    transition: all 0.3s ease;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    box-shadow: 0 5px 15px rgba(211, 95, 145, 0.4);
    position: relative;
    overflow: hidden;
}

.contact-btn span {
    z-index: 1;
    transition: all 0.3s ease;
}

.contact-btn i {
    margin-left: 8px;
    transition: all 0.3s ease;
    z-index: 1;
}

.contact-btn::after {
    content: '';
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 100%;
    background: linear-gradient(90deg, rgba(255,255,255,0.2), rgba(255,255,255,0));
    transition: all 0.6s ease;
}

.contact-btn:hover {
    transform: translateY(-3px);
    box-shadow: 0 8px 20px rgba(211, 95, 145, 0.5);
}

.contact-btn:hover i {
    transform: translateX(4px);
}

.contact-btn:hover::after {
    left: 100%;
}

/* Animation for form inputs */
@keyframes focusAnimation {
    0% { transform: translateY(0); }
    50% { transform: translateY(-5px); }
    100% { transform: translateY(0); }
}

.contact-input:focus {
    animation: focusAnimation 0.5s ease;
}

/* Success message animation */
@keyframes successPulse {
    0% { transform: scale(0.8); opacity: 0; }
    70% { transform: scale(1.1); opacity: 1; }
    100% { transform: scale(1); opacity: 1; }
}

.contact-success {
    text-align: center;
    padding: 30px;
    animation: successPulse 0.6s ease-in-out;
}

.contact-success i {
    font-size: 60px;
    color: #2ecc71;
    margin-bottom: 20px;
    display: block;
}

.contact-success h3 {
    margin-bottom: 15px;
    color: #333;
}
    </style>
</head>
<body>
    <!-- Particles.js container for floating hearts -->
    <div id="particles-js"></div>
    
    <!-- Scroll to top button -->
    <div class="scroll-to-top">
        <i class="fas fa-arrow-up"></i>
    </div>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">
                <i class="fa-solid fa-heart"></i> Wedding Planner
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp"><i class="fas fa-home me-1"></i> Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="user/vendors.jsp"><i class="fas fa-store me-1"></i> Vendors</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="user/events.jsp"><i class="fas fa-calendar-heart me-1"></i> Events</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp"><i class="fas fa-sign-in-alt me-1"></i> Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn btn-sm btn-primary text-white ms-2" href="register.jsp"><i class="fas fa-user-plus me-1"></i> Register</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero-section">
        <div class="container content-wrapper">
            <div class="row">
                <div class="col-lg-10 mx-auto text-center">
                    <h1 class="mb-4 fade-in-up delay-1" data-aos="fade-up">Your Perfect Wedding Journey</h1>
                    <p class="lead mb-4 fade-in-up delay-2" data-aos="fade-up" data-aos-delay="100">Plan your dream wedding with our expert wedding planners and premium vendors</p>
                    <div class="fade-in-up delay-3" data-aos="fade-up" data-aos-delay="200">
                        <a href="register.jsp" class="btn btn-primary btn-lg me-3 pulse">
                            <i class="fa-solid fa-heart me-2"></i> Get Started
                        </a>
                        <a href="#features" class="btn btn-outline-light btn-lg scroll-btn">
                            <i class="fa-solid fa-chevron-down me-2"></i> Learn More
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="shape-divider">
            <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
                <path d="M321.39,56.44c58-10.79,114.16-30.13,172-41.86,82.39-16.72,168.19-17.73,250.45-.39C823.78,31,906.67,72,985.66,92.83c70.05,18.48,146.53,26.09,214.34,3V0H0V27.35A600.21,600.21,0,0,0,321.39,56.44Z" class="shape-fill"></path>
            </svg>
        </div>
    </section>

    <!-- Features Section -->
    <section class="py-5" id="features">
        <div class="container">
            <h2 class="text-center mb-5" data-aos="fade-up">Why Choose Our Wedding Planner</h2>
            
            <div class="row">
                <div class="col-md-4 mb-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="card h-100">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-gem fa-3x mb-3"></i>
                            <h3 class="card-title h5">Premium Vendors</h3>
                            <p class="card-text">Access to a curated list of top-rated wedding vendors for every aspect of your special day.</p>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-4 mb-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="card h-100">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-calendar-check fa-3x mb-3"></i>
                            <h3 class="card-title h5">Easy Planning</h3>
                            <p class="card-text">Streamlined planning tools to organize your events, track RSVPs, and manage your budget.</p>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-4 mb-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="card h-100">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-heart fa-3x mb-3"></i>
                            <h3 class="card-title h5">Personal Touch</h3>
                            <p class="card-text">Customizable options to make your wedding uniquely yours with personalized assistance.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Wedding Theme Section (New) -->
    <section class="wedding-theme-section">
        <div class="container">
            <h2 data-aos="fade-up">Create Your Dream Wedding</h2>
            <p class="lead mb-4" data-aos="fade-up" data-aos-delay="100">
                Our team of expert planners will help you design the perfect celebration
            </p>
            <div class="row justify-content-center mt-5">
                <div class="col-md-4 mb-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="text-center">
                        <div class="mb-4">
                            <i class="fas fa-ring fa-3x floating"></i>
                        </div>
                        <h4>Engagement</h4>
                        <p>Begin your journey with beautiful engagement planning</p>
                    </div>
                </div>
                <div class="col-md-4 mb-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="text-center">
                        <div class="mb-4">
                            <i class="fas fa-glass-cheers fa-3x floating"></i>
                        </div>
                        <h4>Ceremony</h4>
                        <p>Perfect ceremonies tailored to your preferences</p>
                    </div>
                </div>
                <div class="col-md-4 mb-4" data-aos="fade-up" data-aos-delay="400">
                    <div class="text-center">
                        <div class="mb-4">
                            <i class="fas fa-music fa-3x floating"></i>
                        </div>
                        <h4>Reception</h4>
                        <p>Memorable receptions with handpicked vendors</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Testimonials Section - Enhanced -->
    <section class="testimonials">
        <div class="container">
            <h2 class="cursive-heading text-center mb-5" data-aos="fade-up">What Our Couples Say</h2>
            
            <div class="row">
                <div class="col-lg-8 mx-auto text-center" data-aos="fade-up">
                    <div class="testimonial-quote mb-4">
                        Planning our wedding was stress-free and amazing with Wedding Planner. Everything was perfect!
                    </div>
                    <div class="d-flex align-items-center justify-content-center">
                        <div class="avatar me-3">
                            <img src="https://via.placeholder.com/60" alt="Testimonial" class="rounded-circle">
                        </div>
                        <div class="text-start">
                            <h5 class="mb-0">Rahul & Priya</h5>
                            <small class="text-muted">Colombo, Sri Lanka</small>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="text-center mt-5" data-aos="fade-up">
                <a href="#" class="btn btn-outline-primary">
                    <i class="fas fa-star me-2"></i> Read More Stories
                </a>
            </div>
        </div>
    </section>
    
    <!-- Contact Form Section - Added -->
    <!-- Fix 1: Replace the broken Contact Form Section with this corrected version -->
<!-- Replace your existing contact form with this corrected version -->
<!-- Replace your existing contact form with this corrected version -->
<!-- New Contact Form Section -->
<section class="py-5 bg-light" id="contact">
    <div class="container">
        <h2 class="cursive-heading text-center mb-5" data-aos="fade-up">Contact Us</h2>
        
        <div class="row">
            <div class="col-lg-8 mx-auto">
                <div class="contact-card" data-aos="fade-up">
                    <form id="contactForm">
                        <div class="row g-3">
                            <!-- Name Input -->
                            <div class="col-md-6">
                                <div class="contact-input-group">
                                    <span class="contact-icon">
                                        <i class="fas fa-user-circle"></i>
                                    </span>
                                    <input type="text" class="contact-input" id="name" placeholder="Your Name" required>
                                </div>
                            </div>
                            
                            <!-- Email Input -->
                            <div class="col-md-6">
                                <div class="contact-input-group">
                                    <span class="contact-icon">
                                        <i class="fas fa-envelope"></i>
                                    </span>
                                    <input type="email" class="contact-input" id="email" placeholder="Email Address" required>
                                </div>
                            </div>
                            
                            <!-- Phone Input -->
                            <div class="col-md-6">
                                <div class="contact-input-group">
                                    <span class="contact-icon">
                                        <i class="fas fa-mobile-alt"></i>
                                    </span>
                                    <input type="tel" class="contact-input" id="phone" placeholder="Phone Number" required>
                                </div>
                            </div>
                            
                            <!-- Subject Input -->
                            <div class="col-md-6">
                                <div class="contact-input-group">
                                    <span class="contact-icon">
                                        <i class="fas fa-tag"></i>
                                    </span>
                                    <input type="text" class="contact-input" id="subject" placeholder="Subject" required>
                                </div>
                            </div>
                            
                            <!-- Message Input -->
                            <div class="col-12">
                                <div class="contact-input-group">
                                    <span class="contact-icon textarea-icon">
                                        <i class="fas fa-comment-dots"></i>
                                    </span>
                                    <textarea class="contact-input" id="message" placeholder="Your Message" rows="5" required></textarea>
                                </div>
                            </div>
                            
                            <!-- Submit Button -->
                            <div class="col-12 text-center mt-4">
                                <button type="submit" class="contact-btn">
                                    <span>Send Message</span>
                                    <i class="fas fa-paper-plane"></i>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

    <!-- Footer -->
    <footer class="mt-5">
        <div class="container">
            <div class="row">
                <div class="col-md-4 mb-4 mb-md-0" data-aos="fade-up">
                    <h5><i class="fa-solid fa-heart me-2"></i> Wedding Planner</h5>
                    <p class="mb-3">Making your special day perfect with expert planning and premium vendors.</p>
                    <div class="social-icons">
                        <a href="https://www.facebook.com/janith.deshan.186"><i class="fab fa-facebook-f"></i></a>
                        <a href="https://www.instagram.com/janith_deshan11/"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-pinterest"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="col-md-4 mb-4 mb-md-0" data-aos="fade-up" data-aos-delay="100">
                    <h5>Quick Links</h5>
                    <ul class="list-unstyled">
                        <li><a href="index.jsp"><i class="fas fa-chevron-right me-2"></i>Home</a></li>
                        <li><a href="user/vendors.jsp"><i class="fas fa-chevron-right me-2"></i>Vendors</a></li>
                        <li><a href="user/events.jsp"><i class="fas fa-chevron-right me-2"></i>Events</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right me-2"></i>About Us</a></li>
                    </ul>
                </div>
                <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                    <h5>Contact Us</h5>
                    <div class="contact-info">
                        <p>
                            <i class="fa-solid fa-envelope"></i> janithmihijaya123@gmail.com
                        </p>
                        <p>
                            <i class="fa-solid fa-phone"></i> +94703638365
                        </p>
                        <p>
                            <i class="fa-solid fa-location-dot"></i> 123 Home ,Homagama , Sri Lanka
                        </p>
                    </div>
                </div>
            </div>
            <hr class="my-4">
            <div class="text-center" data-aos="fade-up">
                <p>&copy; 2025 Janith Deshan. All rights reserved.</p>
            </div>
        </div>
    </footer>
    
    <!-- Bootstrap JS Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
    <!-- AOS - Animate On Scroll -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
    
    <!-- Particles.js for floating hearts -->
    <script src="https://cdn.jsdelivr.net/npm/particles.js@2.0.0/particles.min.js"></script>
    
    <!-- GSAP for advanced animations -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.4/gsap.min.js"></script>
    
    <!-- Custom JavaScript -->
    <script>
        $(document).ready(function() {
            // Initialize AOS
            AOS.init({
                duration: 800,
                easing: 'ease-in-out',
                once: true
            });
            
            // Initialize particles.js with wedding-themed particles
            particlesJS('particles-js', {
                "particles": {
                    "number": {
                        "value": 30, // Fewer particles
                        "density": {
                            "enable": true,
                            "value_area": 800
                        }
                    },
                    "color": {
                        "value": ["#d35f91", "#f5a9cb", "#ffffff"] // Wedding colors
                    },
                    "shape": {
                        "type": ["circle", "heart"], // Heart shapes for wedding theme
                        "stroke": {
                            "width": 0,
                            "color": "#000000"
                        },
                        "image": {
                            "src": "img/github.svg",
                            "width": 100,
                            "height": 100
                        }
                    },
                    "opacity": {
                        "value": 0.6,
                        "random": true,
                    },
                    "size": {
                        "value": 5,
                        "random": true,
                    },
                    "line_linked": {
                        "enable": false // No connecting lines
                    },
                    "move": {
                        "enable": true,
                        "speed": 2,
                        "direction": "none",
                        "random": true,
                        "straight": false,
                        "out_mode": "out",
                        "bounce": false,
                    }
                },
                "interactivity": {
                    "detect_on": "canvas",
                    "events": {
                        "onhover": {
                            "enable": true,
                            "mode": "bubble"
                        },
                        "onclick": {
                            "enable": true,
                            "mode": "push"
                        },
                        "resize": true
                    },
                    "modes": {
                        "bubble": {
                            "distance": 250,
                            "size": 7,
                            "duration": 2,
                            "opacity": 0.8,
                            "speed": 3
                        },
                        "push": {
                            "particles_nb": 4
                        }
                    }
                },
                "retina_detect": true
            });
            
            // Navbar scroll effect
            $(window).scroll(function() {
                if($(window).scrollTop() > 50) {
                    $('.navbar').addClass('scrolled');
                } else {
                    $('.navbar').removeClass('scrolled');
                }
                
                // Show/hide scroll-to-top button
                if($(window).scrollTop() > 300) {
                    $('.scroll-to-top').addClass('active');
                } else {
                    $('.scroll-to-top').removeClass('active');
                }
            });
            
            // Scroll to top functionality
            $('.scroll-to-top').click(function() {
                $('html, body').animate({scrollTop: 0}, 800);
                return false;
            });
            
            // Smooth scroll to sections
            $('.scroll-btn, .nav-link').click(function(e) {
                var target = $($(this).attr('href'));
                if (target.length && $(this).attr('href').startsWith('#')) {
                    e.preventDefault();
                    $('html, body').animate({
                        scrollTop: target.offset().top - 80
                    }, 800);
                }
            });
            
            // Card hover effects
            $('.card').hover(
                function() {
                    $(this).find('i').addClass('fa-bounce');
                },
                function() {
                    $(this).find('i').removeClass('fa-bounce');
                }
            );
            
            // Form input animation
            $(".form-control").on("focus blur", function() {
                if ($(this).val().length > 0) {
                    $(this).siblings(".floating-label").addClass("active");
                } else {
                    if (!$(this).is(":focus")) {
                        $(this).siblings(".floating-label").removeClass("active");
                    }
                }
            }).trigger("blur");
            
            // Contact form submission with animation
            $("#contactForm").submit(function(event) {
                event.preventDefault();
                
                // Add loading state to button
                const submitBtn = $(this).find('button[type="submit"]');
                submitBtn.prop('disabled', true);
                submitBtn.find('.btn-text').addClass('d-none');
                submitBtn.find('.btn-loader').removeClass('d-none');
                
                // Simulate form submission (replace with actual AJAX call)
                setTimeout(function() {
                    // Reset button
                    submitBtn.prop('disabled', false);
                    submitBtn.find('.btn-text').removeClass('d-none');
                    submitBtn.find('.btn-loader').addClass('d-none');
                    
                    // Show success message
                    $("#contactForm").html('<div class="alert alert-success text-center py-4" role="alert">' +
                        '<i class="fas fa-check-circle fa-3x mb-3"></i>' +
                        '<h4>Message Sent!</h4>' +
                        '<p class="mb-0">We\'ll get back to you as soon as possible.</p>' +
                        '</div>');
                }, 1500);
            });
            
            // Initialize GSAP animations
            gsap.timeline()
                .from(".navbar-brand", {y: -20, opacity: 0, duration: 1})
                .from(".navbar .nav-item", {y: -20, opacity: 0, duration: 0.5, stagger: 0.1}, "-=0.5");
            
            // Parallax effect for hero section
            $(window).scroll(function() {
                var scrollPosition = $(window).scrollTop();
                $('.hero-section').css({
                    'background-position': '50% ' + (50 + (scrollPosition * 0.05)) + '%'
                });
            });
        });
        
     // Add this to your existing JavaScript
        $(document).ready(function() {
            $("#contactForm").submit(function(e) {
                e.preventDefault();
                
                // Add sending state
                const submitBtn = $(this).find('.contact-btn');
                const btnText = submitBtn.find('span');
                const btnIcon = submitBtn.find('i');
                
                btnText.text('Sending...');
                btnIcon.removeClass('fa-paper-plane').addClass('fa-spinner fa-spin');
                submitBtn.prop('disabled', true);
                
                // Simulate form submission delay
                setTimeout(function() {
                    // Replace form with success message
                    $("#contactForm").html(`
                        <div class="contact-success">
                            <i class="fas fa-check-circle"></i>
                            <h3>Message Sent Successfully!</h3>
                            <p>We'll get back to you as soon as possible.</p>
                        </div>
                    `);
                    
                    // Reset form after delay (in real application, you would submit via AJAX)
                    setTimeout(function() {
                        // You can reset the form here if needed
                        // $("#contactForm")[0].reset();
                    }, 5000);
                }, 1500);
            });
            
            // Add hover effect to input groups
            $(".contact-input-group").hover(
                function() {
                    $(this).css("transform", "translateY(-2px)");
                },
                function() {
                    $(this).css("transform", "translateY(0)");
                }
            );
        });
    </script>
</body>
</html>