<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${pageTitle != null ? pageTitle : "Wedding Planner"}</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <!-- Google Fonts - Poppins & Great Vibes -->
    <link href="https://fonts.googleapis.com/css2?family=Great+Vibes&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/animations.css" rel="stylesheet">
    
    <style>
        /* Enhanced Header Styles with Wedding Pink Theme */
        :root {
            --primary-color: #d35f91; /* Wedding pink */
            --primary-light: #f5a9cb; /* Light pink */
            --primary-dark: #b74177; /* Darker pink */
            --secondary-color: #f8d7e3; /* Very light pink */
            --accent-color: #a076dc; /* Purple accent */
            --text-color: #333;
            --light-bg: #faf4f7;
            --white: #ffffff;
            --shadow-sm: 0 2px 10px rgba(211, 95, 145, 0.08);
            --shadow-md: 0 5px 15px rgba(211, 95, 145, 0.12);
            --transition-fast: all 0.2s ease;
            --transition-normal: all 0.3s ease;
        }
        
        body {
            font-family: 'Poppins', sans-serif;
            color: var(--text-color);
        }
        
        /* Cursive elements */
        .cursive-text {
            font-family: 'Great Vibes', cursive;
        }
        
        /* Navbar styling */
        .navbar {
            padding: 0.75rem 1rem;
            transition: var(--transition-normal);
            background: var(--white) !important;
            box-shadow: var(--shadow-sm);
        }
        
        .navbar.scrolled {
            padding: 0.5rem 1rem;
            box-shadow: var(--shadow-md);
        }
        
        .navbar-brand {
            font-weight: 700;
            font-size: 1.4rem;
            position: relative;
            transition: var(--transition-normal);
            display: flex;
            align-items: center;
        }
        
        .navbar-brand .logo-text {
            font-family: 'Great Vibes', cursive;
            font-size: 1.8rem;
        }
        
        .navbar-brand i {
            color: var(--primary-color);
            transition: var(--transition-normal);
            font-size: 1.5rem;
            margin-right: 8px;
        }
        
        .navbar-brand:hover {
            transform: translateY(-2px);
        }
        
        .navbar-brand:hover i {
            transform: scale(1.2) rotate(-5deg);
        }
        
        /* Nav links styling */
        .nav-link {
            position: relative;
            padding: 0.75rem 1rem !important;
            font-weight: 500;
            transition: var(--transition-normal);
            color: var(--text-color) !important;
        }
        
        .nav-link::after {
            content: "";
            position: absolute;
            bottom: 0;
            left: 50%;
            width: 0;
            height: 2px;
            background-color: var(--primary-color);
            transition: var(--transition-normal);
            transform: translateX(-50%);
        }
        
        .nav-link:hover {
            color: var(--primary-color) !important;
        }
        
        .nav-link:hover::after {
            width: 50%;
        }
        
        .nav-link:hover i {
            transform: translateY(-3px);
            color: var(--primary-color);
        }
        
        .nav-link i {
            transition: var(--transition-normal);
        }
        
        /* Avatar styling */
        .avatar-circle {
            width: 36px;
            height: 36px;
            background: linear-gradient(135deg, var(--primary-color), var(--primary-dark));
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--white);
            box-shadow: 0 3px 10px rgba(211, 95, 145, 0.3);
            transition: var(--transition-normal);
            overflow: hidden;
            border: 2px solid white;
        }
        
        .avatar-circle:hover {
            transform: scale(1.1);
        }
        
        .dropdown-toggle::after {
            display: none; /* Remove default dropdown arrow */
        }
        
        /* User dropdown styling */
        .dropdown-menu {
            border: none;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(211, 95, 145, 0.15);
            overflow: hidden;
            transform: translateY(10px);
            transition: var(--transition-normal);
            opacity: 0;
            visibility: hidden;
            display: block;
        }
        
        .dropdown-menu.show {
            transform: translateY(0);
            opacity: 1;
            visibility: visible;
        }
        
        .dropdown-header {
            padding: 1rem;
            background: linear-gradient(135deg, var(--primary-color) 0%, var(--primary-dark) 100%);
            border-bottom: none;
        }
        
        .dropdown-header h6, .dropdown-header small {
            color: var(--white);
        }
        
        .dropdown-item {
            padding: 0.75rem 1.5rem;
            font-weight: 500;
            color: var(--text-color);
            transition: var(--transition-normal);
            position: relative;
        }
        
        .dropdown-item i {
            width: 1.5rem;
            margin-right: 0.5rem;
            text-align: center;
            transition: var(--transition-normal);
            color: var(--primary-color);
        }
        
        .dropdown-item:hover, .dropdown-item:focus {
            background-color: var(--light-bg);
            color: var(--primary-color);
        }
        
        .dropdown-item:hover i, .dropdown-item:focus i {
            color: var(--primary-dark);
            transform: translateX(3px);
        }
        
        /* Clock styling */
        .navbar-text {
            padding: 0.5rem 0.75rem;
            background-color: var(--light-bg);
            border-radius: 20px;
            transition: var(--transition-normal);
            font-size: 0.85rem;
        }
        
        .navbar-text:hover {
            box-shadow: 0 3px 10px rgba(211, 95, 145, 0.15);
        }
        
        .navbar-text i {
            color: var(--primary-color);
        }
        
        /* Login button styling */
        .btn-login {
            background: linear-gradient(135deg, var(--primary-color), var(--primary-dark));
            color: white;
            border: none;
            border-radius: 25px;
            padding: 0.5rem 1.25rem;
            font-weight: 600;
            transition: var(--transition-normal);
            box-shadow: 0 4px 10px rgba(211, 95, 145, 0.3);
        }
        
        .btn-login:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(211, 95, 145, 0.4);
            color: white;
        }
        
        .btn-login i {
            margin-right: 5px;
            transition: var(--transition-normal);
        }
        
        .btn-login:hover i {
            transform: translateX(-3px);
        }
        
        .btn-register {
            background: transparent;
            color: var(--primary-color);
            border: 2px solid var(--primary-color);
            border-radius: 25px;
            padding: 0.4rem 1.25rem;
            font-weight: 600;
            transition: var(--transition-normal);
            margin-left: 0.5rem;
        }
        
        .btn-register:hover {
            background: var(--primary-light);
            color: var(--primary-dark);
            transform: translateY(-2px);
        }
        
        .btn-register i {
            margin-right: 5px;
            transition: var(--transition-normal);
        }
        
        .btn-register:hover i {
            transform: rotate(90deg);
        }
        
        /* Responsive toggle button */
        .navbar-toggler {
            border: none;
            padding: 0.25rem 0.5rem;
            border-radius: 5px;
            transition: var(--transition-normal);
        }
        
        .navbar-toggler:focus {
            box-shadow: none;
            outline: none;
        }
        
        .navbar-toggler-icon {
            background-image: none;
            display: inline-block;
            width: 1.5em;
            height: 1.5em;
            position: relative;
        }
        
        .navbar-toggler span {
            display: block;
            position: absolute;
            height: 2px;
            width: 100%;
            background: var(--primary-color);
            border-radius: 9px;
            opacity: 1;
            left: 0;
            transform: rotate(0deg);
            transition: var(--transition-normal);
        }
        
        .navbar-toggler span:nth-child(1) {
            top: 0;
        }
        
        .navbar-toggler span:nth-child(2), .navbar-toggler span:nth-child(3) {
            top: 8px;
        }
        
        .navbar-toggler span:nth-child(4) {
            top: 16px;
        }
        
        .navbar-toggler.open span:nth-child(1) {
            top: 8px;
            width: 0%;
            left: 50%;
        }
        
        .navbar-toggler.open span:nth-child(2) {
            transform: rotate(45deg);
        }
        
        .navbar-toggler.open span:nth-child(3) {
            transform: rotate(-45deg);
        }
        
        .navbar-toggler.open span:nth-child(4) {
            top: 8px;
            width: 0%;
            left: 50%;
        }
        
        /* Animations */
        /* Pulse animation for notifications */
        @keyframes pulse {
            0% {
                transform: scale(1);
                opacity: 1;
            }
            50% {
                transform: scale(1.1);
                opacity: 0.7;
            }
            100% {
                transform: scale(1);
                opacity: 1;
            }
        }
        
        .pulse {
            animation: pulse 1.5s infinite;
        }
        
        /* Floating animation */
        @keyframes floating {
            0% { transform: translateY(0px); }
            50% { transform: translateY(-5px); }
            100% { transform: translateY(0px); }
        }
        
        .floating {
            animation: floating 3s ease-in-out infinite;
        }
        
        /* Spin on hover */
        .spin-hover:hover {
            animation: spin 0.7s ease-in-out;
        }
        
        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
        
        /* Bounce animation */
        @keyframes bounce {
            0%, 20%, 50%, 80%, 100% {transform: translateY(0);}
            40% {transform: translateY(-15px);}
            60% {transform: translateY(-7px);}
        }
        
        .bounce-hover:hover {
            animation: bounce 0.8s ease;
        }
    </style>
</head>
<body>
<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm sticky-top">
    <div class="container">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">
            <i class="fas fa-heart"></i>
            <span class="logo-text">Wedding Planner</span>
        </a>
        
        <!-- Mobile Toggle Button -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
        </button>
        
        <!-- Navigation items -->
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/index.jsp">
                        <i class="fas fa-home me-1"></i> Home
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/user/vendors.jsp">
                        <i class="fas fa-store me-1"></i> Vendors
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/user/events.jsp">
                        <i class="fas fa-calendar-check me-1"></i> Events
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/user/dashboard.jsp">
                        <i class="fas fa-th-large me-1"></i> Dashboard
                    </a>
                </li>
            </ul>

            <div class="navbar-text me-3 d-none d-md-block">
                <small>
                    <i class="far fa-clock me-1"></i> <span id="current-time">Loading...</span>
                </small>
            </div>

            <ul class="navbar-nav">
                <% if (session.getAttribute("username") != null) { %>
                    <!-- User is logged in -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <div class="d-flex align-items-center">
                                <div class="avatar-circle me-2">
                                    <i class="fas fa-user-alt"></i>
                                </div>
                                <span class="d-none d-md-inline">${sessionScope.username}</span>
                            </div>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                            <li>
                                <div class="dropdown-header">
                                    <div class="d-flex align-items-center">
                                        <div class="avatar-circle me-2">
                                            <i class="fas fa-user-alt"></i>
                                        </div>
                                        <div>
                                            <h6 class="mb-0">${sessionScope.fullName != null ? sessionScope.fullName : "User"}</h6>
                                            <small>${sessionScope.username}</small>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/user/profile.jsp"><i class="fas fa-id-card"></i>My Profile</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/user/dashboard.jsp"><i class="fas fa-th-large"></i>Dashboard</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/user/settings.jsp"><i class="fas fa-cog spin-hover"></i>Settings</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/LoginServlet?logout=true"><i class="fas fa-sign-out-alt"></i>Logout</a></li>
                        </ul>
                    </li>
                <% } else { %>
                    <!-- User is not logged in -->
                    <li class="nav-item d-flex">
                        <a href="${pageContext.request.contextPath}/login.jsp" class="btn btn-login">
                            <i class="fas fa-sign-in-alt"></i> Login
                        </a>
                        <a href="${pageContext.request.contextPath}/register.jsp" class="btn btn-register">
                            <i class="fas fa-user-plus"></i> Register
                        </a>
                    </li>
                <% } %>
            </ul>
        </div>
    </div>
</nav>

<!-- Main Content -->

<script>
    // JavaScript for enhanced interactions
    document.addEventListener('DOMContentLoaded', function() {
        // Navbar scroll effect
        window.addEventListener('scroll', function() {
            const navbar = document.querySelector('.navbar');
            if (window.scrollY > 10) {
                navbar.classList.add('scrolled');
            } else {
                navbar.classList.remove('scrolled');
            }
        });
        
        // Hamburger toggle animation
        const navbarToggler = document.querySelector('.navbar-toggler');
        navbarToggler.addEventListener('click', function() {
            this.classList.toggle('open');
        });
        
        // Icon animation effects for dropdown items
        const addHoverEffects = (elements, effect) => {
            elements.forEach(item => {
                const icon = item.querySelector('i');
                if (icon) {
                    item.addEventListener('mouseenter', () => {
                        icon.classList.add(effect);
                    });
                    item.addEventListener('mouseleave', () => {
                        icon.classList.remove(effect);
                    });
                }
            });
        };
        
        // Add hover effects to different elements
        addHoverEffects(document.querySelectorAll('.dropdown-item'), 'fa-bounce');
        addHoverEffects(document.querySelectorAll('.nav-link:not(.dropdown-toggle)'), 'floating');
        
        // Fix for dropdown animation with Bootstrap
        const dropdownToggle = document.querySelector('.dropdown-toggle');
        const dropdownMenu = document.querySelector('.dropdown-menu');
        
        if (dropdownToggle && dropdownMenu) {
            // Add proper event handlers for dropdown animation
            dropdownToggle.addEventListener('click', function(e) {
                e.preventDefault();
                e.stopPropagation();
                
                if (dropdownMenu.classList.contains('show')) {
                    dropdownMenu.classList.remove('show');
                } else {
                    dropdownMenu.classList.add('show');
                }
            });
            
            // Close dropdown when clicking outside
            document.addEventListener('click', function(e) {
                if (!dropdownToggle.contains(e.target) && !dropdownMenu.contains(e.target)) {
                    dropdownMenu.classList.remove('show');
                }
            });
        }
        
        // Update clock with beautiful format
        function updateClock() {
            const now = new Date();
            
            // Format date as YYYY-MM-DD
            const year = now.getFullYear();
            const month = String(now.getMonth() + 1).padStart(2, '0');
            const day = String(now.getDate()).padStart(2, '0');
            
            // Format time as HH:MM:SS
            const hours = String(now.getHours()).padStart(2, '0');
            const minutes = String(now.getMinutes()).padStart(2, '0');
            const seconds = String(now.getSeconds()).padStart(2, '0');
            
            // Combine date and time
            const formattedDateTime = `${year}-${month}-${day} ${hours}:${minutes}:${seconds}`;
            
            document.getElementById('current-time').textContent = formattedDateTime;
        }
        
        // Update clock every second
        setInterval(updateClock, 1000);
        updateClock();
    });
</script>