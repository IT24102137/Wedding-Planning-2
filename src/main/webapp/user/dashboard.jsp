<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard | Wedding Planner</title>
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    
    <!-- FontAwesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Google Fonts - Poppins and Great Vibes -->
    <link href="https://fonts.googleapis.com/css2?family=Great+Vibes&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- AOS - Animate On Scroll Library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css" />
<% 
    // User details (in real application, this would come from session/database)
    String userName = "Priya Sharma";
    
    // Wedding date - for countdown calculation
    String weddingDate = "2025-06-15";
%>
</head>
<body>
<!-- User Dashboard -->
<div class="wedding-dashboard">
    <!-- Top Navigation Bar -->
    <nav class="user-topbar">
        <div class="container-fluid">
            <div class="row align-items-center">
                <div class="col-md-5">
                    <div class="user-breadcrumb">
                        <div class="user-logo">
                            <i class="fas fa-heart"></i> WeddingPro
                        </div>
                        <span class="separator">/</span>
                        <span class="current-page">Dashboard</span>
                    </div>
                </div>
                <div class="col-md-2 text-center">
                    <div class="system-time">
                        <i class="far fa-clock pulse"></i>
                        <span class="time-display" id="current-time"></span>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="user-menu dropdown">
                        <div class="user-info" data-bs-toggle="dropdown" aria-expanded="false">
                            <div class="quick-actions">
                                <button class="btn-icon" title="Notifications">
                                    <i class="fas fa-bell"></i>
                                    <span class="badge">3</span>
                                </button>
                                <button class="btn-icon" title="Messages">
                                    <i class="fas fa-envelope"></i>
                                    <span class="badge">5</span>
                                </button>
                            </div>
                            <div class="user-avatar">
                                <i class="fas fa-user"></i>
                                <div class="user-status online"></div>
                            </div>
                            <div class="user-details">
                                <h6><%= userName %></h6>
                                <p>Wedding Date: <%= weddingDate %></p>
                            </div>
                            <i class="fas fa-chevron-down"></i>
                        </div>
                        <ul class="dropdown-menu dropdown-menu-end user-dropdown">
                            <li class="dropdown-header">User Options</li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-user-circle"></i> My Profile</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-cog"></i> Settings</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-bell"></i> Notifications <span class="badge float-end">3</span></a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item text-danger" href="${pageContext.request.contextPath}/login.jsp"><i class="fas fa-sign-out-alt"></i> Log Out</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <!-- Hero Section with Particles -->
    <div class="container-fluid dashboard-hero py-5 mb-5" id="particleHero">
        <div class="particles-container" id="particles-js"></div>
        
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6" data-aos="fade-up">
                    <h1 class="display-5 fw-bold mb-3">Welcome, <span class="user-name"><%= userName %></span></h1>
                    <p class="lead mb-4">Your wedding planning dashboard</p>
                    <div class="d-flex gap-3">
                        <a href="${pageContext.request.contextPath}/user/events.jsp" class="btn-primary-action">
                            <i class="fas fa-calendar-plus me-2"></i> Plan an Event
                        </a>
                        <a href="${pageContext.request.contextPath}/user/vendors.jsp" class="btn-outline-action">
                            <i class="fas fa-search me-2"></i> Find Vendors
                        </a>
                    </div>
                </div>
                <div class="col-md-6 text-center text-md-end" data-aos="fade-up" data-aos-delay="300">
                    <div class="countdown-wrapper">
                        <h5 class="mb-3"><i class="fas fa-hourglass-half me-2"></i> Wedding Day Countdown</h5>
                        <div class="countdown" id="wedding-countdown">
                            <div class="countdown-item">
                                <div class="countdown-value" id="countdown-days">0</div>
                                <div class="countdown-label">days</div>
                            </div>
                            <div class="countdown-item">
                                <div class="countdown-value" id="countdown-hours">0</div>
                                <div class="countdown-label">hours</div>
                            </div>
                            <div class="countdown-item">
                                <div class="countdown-value" id="countdown-mins">0</div>
                                <div class="countdown-label">mins</div>
                            </div>
                            <div class="countdown-item">
                                <div class="countdown-value" id="countdown-secs">0</div>
                                <div class="countdown-label">secs</div>
                            </div>
                        </div>
                        <p class="wedding-date"><%= weddingDate %></p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Main Dashboard Content -->
    <div class="container mb-5">
        <div class="row">
            <!-- Left Column - Quick Stats -->
            <div class="col-lg-4">
                <!-- Profile Card -->
                <div class="dashboard-card profile-card" data-aos="fade-up" data-aos-delay="100">
                    <div class="card-body text-center">
                        <div class="profile-avatar">
                            <i class="fas fa-user"></i>
                        </div>
                        <h5 class="mt-3"><%= userName %></h5>
                        <p class="text-muted mb-3">Wedding Date: <%= weddingDate %></p>
                        <button class="btn-outline-action w-100">
                            <i class="fas fa-user-edit me-1"></i> Edit Profile
                        </button>
                    </div>
                </div>
                
                <!-- Budget Card -->
                <div class="dashboard-card budget-card" data-aos="fade-up" data-aos-delay="200">
                    <div class="card-header">
                        <h5><i class="fas fa-money-bill-wave me-2"></i> Budget Overview</h5>
                    </div>
                    <div class="card-body">
                        <div class="budget-item">
                            <span>Total Budget:</span>
                            <span class="budget-value">$25,000</span>
                        </div>
                        <div class="budget-item">
                            <span>Spent:</span>
                            <span class="budget-value spent">$9,850</span>
                        </div>
                        <div class="budget-item">
                            <span>Remaining:</span>
                            <span class="budget-value remaining">$15,150</span>
                        </div>
                        
                        <div class="budget-progress">
                            <div class="progress-bar" style="width: 39%;"></div>
                        </div>
                        <div class="budget-percent">
                            <small>39% of budget spent</small>
                        </div>
                        
                        <button class="btn-outline-action w-100 mt-3">
                            <i class="fas fa-chart-pie me-2"></i> Budget Details
                        </button>
                    </div>
                </div>
                
                <!-- Guest List Stats -->
                <div class="dashboard-card guest-card" data-aos="fade-up" data-aos-delay="300">
                    <div class="card-header">
                        <h5><i class="fas fa-users me-2"></i> Guest List</h5>
                    </div>
                    <div class="card-body">
                        <div class="guest-stats">
                            <div class="guest-stat">
                                <div class="stat-circle invited">
                                    <span>120</span>
                                </div>
                                <p>Invited</p>
                            </div>
                            <div class="guest-stat">
                                <div class="stat-circle confirmed">
                                    <span>68</span>
                                </div>
                                <p>Confirmed</p>
                            </div>
                            <div class="guest-stat">
                                <div class="stat-circle declined">
                                    <span>12</span>
                                </div>
                                <p>Declined</p>
                            </div>
                        </div>
                        
                        <button class="btn-outline-action w-100 mt-3">
                            <i class="fas fa-envelope me-2"></i> Send Invitations
                        </button>
                    </div>
                </div>
            </div>
            
            <!-- Right Column - Content -->
            <div class="col-lg-8">
                <!-- Tasks Card -->
                <div class="dashboard-card tasks-card" data-aos="fade-up" data-aos-delay="100">
                    <div class="card-header">
                        <h5><i class="fas fa-tasks me-2"></i> Wedding To-Do List</h5>
                        <button class="btn-action add">
                            <i class="fas fa-plus me-1"></i> Add Task
                        </button>
                    </div>
                    <div class="card-body p-0">
                        <ul class="task-list">
                            <li class="task-item completed">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="task1" checked>
                                    <label class="form-check-label" for="task1">
                                        Book wedding venue
                                    </label>
                                </div>
                                <span class="task-badge completed">Completed</span>
                            </li>
                            <li class="task-item completed">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="task2" checked>
                                    <label class="form-check-label" for="task2">
                                        Hire photographer
                                    </label>
                                </div>
                                <span class="task-badge completed">Completed</span>
                            </li>
                            <li class="task-item">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="task3">
                                    <label class="form-check-label" for="task3">
                                        Order wedding cake
                                    </label>
                                </div>
                                <span class="task-badge warning">Due in 2 weeks</span>
                            </li>
                            <li class="task-item">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="task4">
                                    <label class="form-check-label" for="task4">
                                        Finalize menu with caterer
                                    </label>
                                </div>
                                <span class="task-badge urgent">Due this week</span>
                            </li>
                            <li class="task-item">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="task5">
                                    <label class="form-check-label" for="task5">
                                        Book honeymoon flights
                                    </label>
                                </div>
                                <span class="task-badge info">Due in 1 month</span>
                            </li>
                        </ul>
                    </div>
                    <div class="card-footer">
                        <a href="#" class="view-all">View all tasks <i class="fas fa-arrow-right ms-1"></i></a>
                    </div>
                </div>
                
                <!-- Upcoming Events -->
                <div class="dashboard-card events-card" data-aos="fade-up" data-aos-delay="200">
                    <div class="card-header">
                        <h5><i class="fas fa-calendar-check me-2"></i> Upcoming Events</h5>
                    </div>
                    <div class="card-body p-0">
                        <div class="event-list">
                            <!-- Event Item 1 -->
                            <div class="event-item">
                                <div class="event-date">
                                    <div class="month">MAR</div>
                                    <div class="day">20</div>
                                </div>
                                <div class="event-content">
                                    <h6>Venue Tour - Silver Bay Resort</h6>
                                    <p><i class="fas fa-clock me-1"></i> 10:00 AM - 12:00 PM</p>
                                    <p><i class="fas fa-map-marker-alt me-1"></i> 1234 Silver Bay Road</p>
                                </div>
                                <div class="event-actions">
                                    <button class="btn-icon">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                </div>
                            </div>
                            
                            <!-- Event Item 2 -->
                            <div class="event-item">
                                <div class="event-date">
                                    <div class="month">APR</div>
                                    <div class="day">05</div>
                                </div>
                                <div class="event-content">
                                    <h6>Dress Fitting</h6>
                                    <p><i class="fas fa-clock me-1"></i> 2:00 PM - 4:00 PM</p>
                                    <p><i class="fas fa-map-marker-alt me-1"></i> Elegant Bridal Boutique</p>
                                </div>
                                <div class="event-actions">
                                    <button class="btn-icon">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                </div>
                            </div>
                            
                            <!-- Event Item 3 -->
                            <div class="event-item">
                                <div class="event-date">
                                    <div class="month">APR</div>
                                    <div class="day">18</div>
                                </div>
                                <div class="event-content">
                                    <h6>Menu Tasting - Elegance Catering</h6>
                                    <p><i class="fas fa-clock me-1"></i> 6:00 PM - 8:00 PM</p>
                                    <p><i class="fas fa-map-marker-alt me-1"></i> 789 Gourmet Avenue</p>
                                </div>
                                <div class="event-actions">
                                    <button class="btn-icon">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <a href="${pageContext.request.contextPath}/user/events.jsp" class="view-all">
                            View all events <i class="fas fa-arrow-right ms-1"></i>
                        </a>
                    </div>
                </div>
                
                <!-- Recently Viewed Vendors -->
                <div class="dashboard-card vendors-card" data-aos="fade-up" data-aos-delay="300">
                    <div class="card-header">
                        <h5><i class="fas fa-store me-2"></i> Recently Viewed Vendors</h5>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <!-- Vendor Card 1 -->
                            <div class="col-md-6 mb-3">
                                <div class="vendor-card-sm">
                                    <img src="https://images.unsplash.com/photo-1519741347686-c1e0917af82d" 
                                         alt="Royal Palace Venue">
                                    <div class="vendor-info">
                                        <h6>Royal Palace Wedding Venue</h6>
                                        <div class="vendor-rating">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <span>5.0</span>
                                        </div>
                                        <a href="${pageContext.request.contextPath}/vendors.jsp?id=1" class="btn-outline-action btn-sm">
                                            View Details
                                        </a>
                                    </div>
                                </div>
                            </div>
                            
                            <!-- Vendor Card 2 -->
                            <div class="col-md-6 mb-3">
                                <div class="vendor-card-sm">
                                    <img src="https://images.unsplash.com/photo-1606800052052-a08af7148866" 
                                         alt="Perfect Day Planners">
                                    <div class="vendor-info">
                                        <h6>Perfect Day Planners</h6>
                                        <div class="vendor-rating">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <span>5.0</span>
                                        </div>
                                        <a href="${pageContext.request.contextPath}/vendors.jsp?id=5" class="btn-outline-action btn-sm">
                                            View Details
                                        </a>
                                    </div>
                                </div>
                            </div>
                            
                            <!-- Vendor Card 3 -->
                            <div class="col-md-6 mb-3">
                                <div class="vendor-card-sm">
                                    <img src="https://images.unsplash.com/photo-1604017011039-925286b3e11b" 
                                         alt="Eternal Moments Photography">
                                    <div class="vendor-info">
                                        <h6>Eternal Moments Photography</h6>
                                        <div class="vendor-rating">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star-half-alt"></i>
                                            <span>4.5</span>
                                        </div>
                                        <a href="${pageContext.request.contextPath}/vendors.jsp?id=3" class="btn-outline-action btn-sm">
                                            View Details
                                        </a>
                                    </div>
                                </div>
                            </div>
                            
                            <!-- Vendor Card 4 -->
                            <div class="col-md-6 mb-3">
                                <div class="vendor-card-sm">
                                    <img src="https://images.unsplash.com/photo-1414235077428-338989a2e8c0" 
                                         alt="Elegance Gourmet Catering">
                                    <div class="vendor-info">
                                        <h6>Elegance Gourmet Catering</h6>
                                        <div class="vendor-rating">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star-half-alt"></i>
                                            <span>4.5</span>
                                        </div>
                                        <a href="${pageContext.request.contextPath}/vendors.jsp?id=2" class="btn-outline-action btn-sm">
                                            View Details
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <a href="${pageContext.request.contextPath}/user/vendors.jsp" class="view-all">
                            Find more vendors <i class="fas fa-arrow-right ms-1"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Wedding-Themed Footer -->
    <footer class="user-footer">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6">
                    <div class="footer-info">
                        <div class="footer-logo">
                            <i class="fas fa-heart"></i> WeddingPro
                        </div>
                        <p>Making your special day unforgettable</p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="footer-links">
                        <a href="#" class="footer-link"><i class="fas fa-question-circle"></i> Help</a>
                        <a href="#" class="footer-link"><i class="fas fa-address-book"></i> Contact</a>
                        <a href="#" class="footer-link"><i class="fas fa-shield-alt"></i> Privacy Policy</a>
                    </div>
                    <div class="footer-copyright">
                        &copy; 2025 Wedding Planner System | With <i class="fas fa-heart"></i> from IT24102137
                    </div>
                </div>
            </div>
        </div>
    </footer>
</div>

<!-- Custom Dashboard Styles -->
<style>
    /* Wedding Dashboard Theme */
    :root {
        --primary-color: #d35f91;        /* Wedding pink */
        --secondary-color: #f5a9cb;      /* Light pink */
        --tertiary-color: #b74177;       /* Dark pink */
        --accent-color: #8e44ad;         /* Purple accent */
        --success-color: #4caf50;
        --warning-color: #ffc107;
        --danger-color: #f44336;
        --info-color: #2196f3;
        
        --bg-light: #fff3f8;             /* Light pink background */
        --bg-card: #ffffff;
        --border-color: rgba(211, 95, 145, 0.2);
        
        --text-primary: #333333;
        --text-secondary: #666666;
        --text-muted: #999999;
        
        --shadow-sm: 0 5px 15px rgba(211, 95, 145, 0.1);
        --shadow-md: 0 8px 25px rgba(211, 95, 145, 0.15);
        --shadow-lg: 0 15px 35px rgba(211, 95, 145, 0.2);
        --glow-effect: 0 0 20px rgba(211, 95, 145, 0.4);
        
        --transition-fast: all 0.2s ease;
        --transition-normal: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
    }
    
    /* General Dashboard Styling */
    body {
        font-family: 'Poppins', sans-serif;
        margin: 0;
        padding: 0;
        overflow-x: hidden;
        background-color: var(--bg-light);
        color: var(--text-primary);
    }

    .wedding-dashboard {
        position: relative;
        min-height: 100vh;
        overflow-x: hidden;
    }
    
    /* User Top Navigation Bar */
    .user-topbar {
        position: sticky;
        top: 0;
        background: linear-gradient(to right, #ffffff, rgba(255, 255, 255, 0.95));
        backdrop-filter: blur(10px);
        -webkit-backdrop-filter: blur(10px);
        border-bottom: 1px solid var(--border-color);
        padding: 15px 0;
        z-index: 100;
        box-shadow: var(--shadow-sm);
    }
    
    .user-logo {
        font-weight: 700;
        font-size: 1.2rem;
        display: flex;
        align-items: center;
        color: var(--primary-color);
        font-family: 'Great Vibes', cursive;
        padding: 0 15px;
    }
    
    .user-logo i {
        margin-right: 8px;
        font-size: 1.3rem;
    }
    
    .user-breadcrumb {
        display: flex;
        align-items: center;
    }
    
    .user-breadcrumb .separator {
        margin: 0 12px;
        color: var(--text-muted);
    }
    
    .user-breadcrumb .current-page {
        color: var(--primary-color);
        font-weight: 500;
    }
    
    .system-time {
        display: inline-flex;
        align-items: center;
        background: rgba(211, 95, 145, 0.05);
        padding: 8px 15px;
        border-radius: 50px;
        box-shadow: inset 0 0 10px rgba(211, 95, 145, 0.1);
        border: 1px solid var(--border-color);
        color: var(--primary-color);
    }
    
    .system-time i {
        margin-right: 8px;
    }
    
    .time-display {
        font-size: 0.85rem;
        font-weight: 500;
    }
    
    .pulse {
        animation: pulse-animation 2s infinite;
    }
    
    @keyframes pulse-animation {
        0% { opacity: 0.7; transform: scale(1); }
        50% { opacity: 1; transform: scale(1.05); }
        100% { opacity: 0.7; transform: scale(1); }
    }
    
    .user-menu {
        display: flex;
        justify-content: flex-end;
    }
    
    .user-info {
        display: flex;
        align-items: center;
        background: rgba(255, 255, 255, 0.8);
        padding: 8px 15px;
        border-radius: 50px;
        cursor: pointer;
        transition: var(--transition-normal);
        border: 1px solid var(--border-color);
        box-shadow: var(--shadow-sm);
    }
    
    .user-info:hover {
        background: white;
        transform: translateY(-2px);
        box-shadow: var(--shadow-md);
    }
    
    .quick-actions {
        display: flex;
        margin-right: 15px;
        gap: 10px;
    }
    
    .btn-icon {
        position: relative;
        width: 36px;
        height: 36px;
        border-radius: 50%;
        background: white;
        border: 1px solid var(--border-color);
        color: var(--primary-color);
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 0.9rem;
        transition: var(--transition-normal);
        cursor: pointer;
        box-shadow: var(--shadow-sm);
    }
    
    .btn-icon:hover {
        background: var(--secondary-color);
        color: white;
        transform: translateY(-3px);
        box-shadow: var(--shadow-md);
    }
    
    .btn-icon .badge {
        position: absolute;
        top: -5px;
        right: -5px;
        width: 18px;
        height: 18px;
        background-color: var(--danger-color);
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 0.65rem;
        font-weight: 700;
        color: white;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        border: 2px solid white;
    .user-avatar {
        width: 40px;
        height: 40px;
        border-radius: 50%;
        background: linear-gradient(135deg, var(--primary-color), var(--tertiary-color));
        overflow: hidden;
        position: relative;
        margin-right: 12px;
        border: 2px solid white;
        box-shadow: 0 0 0 2px var(--border-color);
        display: flex;
        align-items: center;
        justify-content: center;
        color: white;
        font-size: 1.2rem;
    }
    
    .user-status {
        position: absolute;
        right: 0;
        bottom: 0;
        width: 10px;
        height: 10px;
        border-radius: 50%;
        border: 2px solid white;
    }
    
    .user-status.online {
        background-color: var(--success-color);
        box-shadow: 0 0 8px var(--success-color);
    }
    
    .user-status.away {
        background-color: var(--warning-color);
        box-shadow: 0 0 8px var(--warning-color);
    }
    
    .user-details {
        margin-right: 15px;
    }
    
    .user-details h6 {
        margin: 0;
        font-size: 0.9rem;
        font-weight: 600;
        color: var(--text-primary);
    }
    
    .user-details p {
        margin: 0;
        font-size: 0.7rem;
        color: var(--text-secondary);
    }
    
    /* Enhanced Dropdown Styling */
    .user-dropdown {
        background: white;
        border: 1px solid var(--border-color);
        border-radius: 15px;
        box-shadow: var(--shadow-md);
        backdrop-filter: blur(10px);
        -webkit-backdrop-filter: blur(10px);
        padding: 15px;
        min-width: 250px;
        transform: translateY(15px);
        transition: var(--transition-normal);
        animation: dropdown-reveal 0.3s forwards;
    }
    
    @keyframes dropdown-reveal {
        from { opacity: 0; transform: translateY(30px); }
        to { opacity: 1; transform: translateY(0); }
    }
    
    .dropdown-header {
        color: var(--text-secondary);
        font-size: 0.8rem;
        font-weight: 600;
        padding: 8px 15px;
        letter-spacing: 0.5px;
    }
    
    .dropdown-item {
        color: var(--text-primary);
        border-radius: 10px;
        padding: 10px 15px;
        transition: var(--transition-normal);
        display: flex;
        align-items: center;
    }
    
    .dropdown-item i {
        margin-right: 10px;
        font-size: 0.9rem;
        width: 20px;
        text-align: center;
        color: var(--primary-color);
    }
    
    .dropdown-item:hover {
        background: rgba(211, 95, 145, 0.05);
        color: var(--primary-color);
        transform: translateX(5px);
    }
    
    .dropdown-item.text-danger i {
        color: var(--danger-color);
    }
    
    .dropdown-item.text-danger:hover {
        background: rgba(244, 67, 54, 0.05);
        color: var(--danger-color);
    }
    
    /* Dashboard Hero Section */
    .dashboard-hero {
        background-image: 
            linear-gradient(to right, 
                rgba(255, 255, 255, 0.95) 0%, 
                rgba(255, 255, 255, 0.85) 40%, 
                rgba(245, 169, 203, 0.5) 70%, 
                rgba(211, 95, 145, 0.3) 100%),
            url('https://images.unsplash.com/photo-1511795409834-ef04bbd61622?q=80&w=1920');
        background-size: cover;
        background-position: center right;
        background-attachment: fixed;
        position: relative;
        overflow: hidden;
        padding-top: 3rem;
        padding-bottom: 3rem;
        min-height: 350px;
    }
    
    .particles-container {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        z-index: 1;
        pointer-events: none;
    }
    
    .dashboard-hero .container {
        position: relative;
        z-index: 5;
    }
    
    .user-name {
        color: var(--primary-color);
        position: relative;
    }
    
    .user-name::after {
        content: '';
        position: absolute;
        bottom: -5px;
        left: 0;
        width: 100%;
        height: 2px;
        background: linear-gradient(90deg, var(--primary-color), transparent);
    }
    
    /* Button styles */
    .btn-primary-action {
        display: inline-flex;
        align-items: center;
        justify-content: center;
        background: linear-gradient(135deg, var(--primary-color), var(--tertiary-color));
        color: white;
        border: none;
        padding: 10px 20px;
        border-radius: 50px;
        font-weight: 600;
        transition: var(--transition-normal);
        cursor: pointer;
        box-shadow: 0 4px 10px rgba(211, 95, 145, 0.3);
        text-decoration: none;
    }
    
    .btn-primary-action:hover {
        transform: translateY(-3px);
        box-shadow: 0 6px 15px rgba(211, 95, 145, 0.4);
        color: white;
    }
    
    .btn-outline-action {
        display: inline-flex;
        align-items: center;
        justify-content: center;
        background: transparent;
        color: var(--primary-color);
        border: 2px solid var(--primary-color);
        padding: 8px 20px;
        border-radius: 50px;
        font-weight: 600;
        transition: var(--transition-normal);
        cursor: pointer;
        text-decoration: none;
    }
    
    .btn-outline-action:hover {
        background-color: var(--secondary-color);
        color: white;
        transform: translateY(-3px);
        border-color: var(--secondary-color);
    }
    
    .btn-outline-action.btn-sm {
        padding: 5px 15px;
        font-size: 0.85rem;
    }
    
    .btn-action {
        display: inline-flex;
        align-items: center;
        background: var(--bg-light);
        color: var(--primary-color);
        border: none;
        padding: 6px 12px;
        border-radius: 8px;
        font-size: 0.9rem;
        font-weight: 500;
        transition: var(--transition-normal);
        cursor: pointer;
    }
    
    .btn-action.add {
        background: var(--secondary-color);
        color: white;
    }
    
    .btn-action.add:hover {
        background: var(--primary-color);
        transform: translateY(-3px);
    }
    
    /* Countdown Styling */
    .countdown-wrapper {
        background: white;
        padding: 1.5rem;
        border-radius: 20px;
        box-shadow: var(--shadow-md);
        display: inline-block;
        border-left: 4px solid var(--primary-color);
    }
    
    .countdown-wrapper h5 {
        color: var(--primary-color);
        font-weight: 600;
    }
    
    .countdown {
        display: flex;
        justify-content: center;
        gap: 10px;
        margin-bottom: 10px;
    }
    
    .countdown-item {
        background: linear-gradient(135deg, var(--primary-light), white);
        border-radius: 12px;
        padding: 10px 5px;
        min-width: 70px;
        box-shadow: 0 3px 10px rgba(211, 95, 145, 0.1);
        transition: var(--transition-normal);
    }
    
    .countdown-item:hover {
        transform: translateY(-5px);
    }
    
    .countdown-value {
        font-size: 1.8rem;
        font-weight: 700;
        color: var(--primary-color);
        line-height: 1;
    }
    
    .countdown-label {
        font-size: 0.8rem;
        color: var(--primary-dark);
        margin-top: 5px;
    }
    
    .wedding-date {
        font-family: 'Great Vibes', cursive;
        font-size: 1.5rem;
        color: var(--primary-color);
        margin: 0;
    }
    
    /* Dashboard Cards */
    .dashboard-card {
        background: white;
        border-radius: 20px;
        overflow: hidden;
        box-shadow: var(--shadow-md);
        margin-bottom: 25px;
        border: none;
        transition: var(--transition-normal);
    }
    
    .dashboard-card:hover {
        box-shadow: var(--shadow-lg);
        transform: translateY(-5px);
    }
    
    .dashboard-card .card-header {
        background: white;
        padding: 1.25rem 1.5rem;
        border-bottom: 1px solid #f0f0f0;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    
    .dashboard-card .card-header h5 {
        margin: 0;
        font-weight: 600;
    }
    
    .dashboard-card .card-header h5 i {
        color: var(--primary-color);
    }
    
    .dashboard-card .card-body {
        padding: 1.5rem;
    }
    
    .dashboard-card .card-footer {
        background: #fafafa;
        padding: 1rem;
        border-top: 1px solid #f0f0f0;
        text-align: center;
    }
    
    /* Profile Card */
    .profile-card .card-body {
        padding: 2rem 1.5rem;
    }
    
    .profile-avatar {
        width: 90px;
        height: 90px;
        border-radius: 50%;
        background: linear-gradient(135deg, var(--primary-color), var(--tertiary-color));
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0 auto;
        color: white;
        font-size: 2.5rem;
        box-shadow: 0 5px 15px rgba(211, 95, 145, 0.3);
    }
    
    /* Budget Card */
    .budget-item {
        display: flex;
        justify-content: space-between;
        margin-bottom: 15px;
        font-weight: 500;
    }
    
    .budget-value {
        font-weight: 700;
    }
    
    .budget-value.spent {
        color: var(--danger-color);
    }
    
    .budget-value.remaining {
        color: var(--success-color);
    }
    
    .budget-progress {
        height: 10px;
        background-color: #f0f0f0;
        border-radius: 10px;
        overflow: hidden;
        margin: 15px 0 5px;
    }
    
    .budget-progress .progress-bar {
        height: 100%;
        background: linear-gradient(to right, var(--success-color), #a8e063);
        border-radius: 10px;
    }
    
    .budget-percent {
        text-align: center;
        color: #777;
    }
    
    /* Guest Stats */
    .guest-stats {
        display: flex;
        justify-content: space-between;
        text-align: center;
    }
    
    .guest-stat {
        text-align: center;
    }
    
    .stat-circle {
        width: 80px;
        height: 80px;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0 auto 10px;
        transition: var(--transition-normal);
    }
    
    .stat-circle span {
        font-size: 1.8rem;
        font-weight: 700;
    }
    
    .stat-circle.invited {
        background: linear-gradient(135deg, #f5f7fa, #e4e7eb);
        color: #444;
    }
    
    .stat-circle.confirmed {
        background: linear-gradient(135deg, #a8e063, #56ab2f);
        color: white;
    }
    
    .stat-circle.declined {
        background: linear-gradient(135deg, #ff9a9e, #ff5858);
        color: white;
    }
    
    .guest-stat:hover .stat-circle {
        transform: scale(1.1);
    }
    
    .guest-stat p {
        color: #777;
        font-size: 0.9rem;
        margin: 0;
    }
    
    /* Tasks List */
    .task-list {
        list-style: none;
        padding: 0;
        margin: 0;
    }
    
    .task-item {
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 1rem 1.5rem;
        border-bottom: 1px solid #f0f0f0;
        transition: var(--transition-normal);
    }
    
    .task-item:hover {
        background-color: #fafafa;
    }
    
    .task-item.completed label {
        text-decoration: line-through;
        color: #999;
    }
    
    .form-check {
        display: flex;
        align-items: center;
    }
    
    .form-check-input {
        width: 20px;
        height: 20px;
        margin-right: 10px;
        cursor: pointer;
        border-color: #ddd;
    }
    
    .form-check-input:checked {
        background-color: var(--primary-color);
        border-color: var(--primary-color);
    }
    
    .form-check-label {
        margin-bottom: 0;
        cursor: pointer;
        transition: var(--transition-normal);
    }
    
    .task-badge {
        padding: 5px 12px;
        border-radius: 20px;
        font-size: 0.75rem;
        font-weight: 600;
    }
    
    .task-badge.completed {
        background-color: rgba(76, 175, 80, 0.1);
        color: var(--success-color);
    }
    
    .task-badge.warning {
        background-color: rgba(255, 193, 7, 0.1);
        color: var(--warning-color);
    }
    
    .task-badge.urgent {
        background-color: rgba(244, 67, 54, 0.1);
        color: var(--danger-color);
    }
    
    .task-badge.info {
        background-color: rgba(33, 150, 243, 0.1);
        color: var(--info-color);
    }
    
    /* Event List */
    .event-list {
        display: flex;
        flex-direction: column;
    }
    
    .event-item {
        display: flex;
        padding: 1rem 1.5rem;
        border-bottom: 1px solid #f0f0f0;
        transition: var(--transition-normal);
    }
    
    .event-item:hover {
        background-color: #fafafa;
    }
    
    .event-date {
        background: linear-gradient(135deg, var(--primary-light), white);
        border-radius: 12px;
        padding: 10px;
        min-width: 70px;
        height: min-content;
        text-align: center;
        margin-right: 15px;
        box-shadow: 0 3px 10px rgba(211, 95, 145, 0.1);
    }
    
    .event-date .month {
        font-size: 0.8rem;
        text-transform: uppercase;
        font-weight: 700;
        color: var(--primary-dark);
    }
    
    .event-date .day {
        font-size: 1.8rem;
        font-weight: 700;
        color: var(--primary-color);
    }
    
    .event-content {
        flex-grow: 1;
    }
    
    .event-content h6 {
        margin-bottom: 0.5rem;
        font-weight: 600;
        color: #333;
    }
    
    .event-content p {
        margin-bottom: 0.25rem;
        font-size: 0.85rem;
        color: #666;
    }
    
    .event-content p i {
        color: var(--primary-color);
        width: 16px;
    }
    
    .event-actions {
        display: flex;
        align-items: center;
    }
    
    /* View All Link */
    .view-all {
        color: var(--primary-color);
        text-decoration: none;
        font-weight: 500;
        transition: var(--transition-normal);
        display: inline-block;
    }
    
    .view-all:hover {
        color: var(--tertiary-color);
        transform: translateX(5px);
    }
    
    .view-all i {
        transition: var(--transition-normal);
    }
    
    .view-all:hover i {
        transform: translateX(3px);
    }
    
    /* Vendor Cards */
    .vendor-card-sm {
        display: flex;
        background: white;
        border-radius: 15px;
        overflow: hidden;
        box-shadow: 0 3px 10px rgba(0, 0, 0, 0.05);
        transition: var(--transition-normal);
        height: 100%;
    }
    
    .vendor-card-sm:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 20px rgba(211, 95, 145, 0.15);
    }
    
    .vendor-card-sm img {
        width: 80px;
        height: 80px;
        object-fit: cover;
        border-radius: 12px;
        margin: 10px;
    }
    
    .vendor-info {
        padding: 10px 10px 10px 0;
        flex-grow: 1;
    }
    
    .vendor-info h6 {
        font-weight: 600;
        margin-bottom: 5px;
        font-size: 0.95rem;
    }
    
    .vendor-rating {
        color: #ffc107;
        font-size: 0.8rem;
        margin-bottom: 10px;
    }
    
    .vendor-rating span {
        color: #666;
        margin-left: 3px;
    }
    
    /* Footer Styling */
    .user-footer {
        background: linear-gradient(to right, #fff3f8, #ffffff);
        padding: 30px 0;
        border-top: 1px solid var(--border-color);
        position: relative;
        z-index: 1;
        margin-top: 40px;
    }
    
    .footer-info {
        display: flex;
        flex-direction: column;
        align-items: flex-start;
    }
    
    .footer-logo {
        font-size: 1.4rem;
        font-weight: 700;
        color: var(--primary-color);
        display: flex;
        align-items: center;
        margin-bottom: 10px;
        font-family: 'Great Vibes', cursive;
    }
    
    .footer-logo i {
        margin-right: 10px;
    }
    
    .footer-links {
        display: flex;
        justify-content: flex-end;
        margin-bottom: 15px;
        flex-wrap: wrap;
        gap: 15px;
    }
    
    .footer-link {
        color: var(--primary-color);
        text-decoration: none;
        transition: var(--transition-normal);
        font-size: 0.9rem;
    }
    
    .footer-link:hover {
        color: var(--tertiary-color);
        transform: translateY(-2px);
    }
    
    .footer-link i {
        margin-right: 5px;
    }
    
    .footer-copyright {
        color: var(--text-secondary);
        font-size: 0.8rem;
        text-align: right;
    }
    
    .footer-copyright i {
        color: var(--primary-color);
    }
    
    /* Responsive Adjustments */
    @media (max-width: 992px) {
        .user-topbar .col-md-2 {
            display: none;
        }
        
        .user-info {
            padding: 8px;
        }
        
        .quick-actions {
            margin-right: 8px;
        }
    }
    
    @media (max-width: 768px) {
        .user-breadcrumb .user-logo {
            font-size: 1.1rem;
        }
        
        .user-menu {
            justify-content: center;
            margin-top: 10px;
        }
        
        .system-time {
            display: none;
        }
        
        .footer-links,
        .footer-copyright {
            text-align: center;
            justify-content: center;
        }
        
        .guest-stats {
            flex-direction: column;
            gap: 20px;
        }
    }
    
    @media (max-width: 576px) {
        .user-topbar {
            padding: 10px 0;
        }
        
        .user-breadcrumb {
            justify-content: center;
        }
        
        .user-breadcrumb .separator,
        .user-breadcrumb .current-page {
            display: none;
        }
        
        .countdown {
            gap: 5px;
        }
        
        .countdown-item {
            min-width: 60px;
        }
    }
</style>

<!-- JavaScript for Real-time Clock and Features -->
<script>
    // Initialize the clock as soon as document loads
    document.addEventListener("DOMContentLoaded", function() {
        // Update real-time date/time immediately and then every second
        updateDateTime();
        setInterval(updateDateTime, 1000);
        
        // Initialize countdown timer immediately and then every second
        updateCountdown();
        setInterval(updateCountdown, 1000);
        
        // Initialize AOS animations
        AOS.init({
            duration: 800,
            easing: 'ease-in-out',
            once: true,
            mirror: false
        });
        
        // Initialize task checkboxes
        initTaskCheckboxes();
        
        // Initialize particles.js for background animation
        initParticles();
    });
    
    // Function to update real-time date and time
    function updateDateTime() {
        const timeDisplay = document.getElementById('current-time');
        if (timeDisplay) {
            const now = new Date();
            
            // Format: YYYY-MM-DD HH:MM:SS
            const year = now.getFullYear();
            const month = String(now.getMonth() + 1).padStart(2, '0');
            const day = String(now.getDate()).padStart(2, '0');
            const hours = String(now.getHours()).padStart(2, '0');
            const minutes = String(now.getMinutes()).padStart(2, '0');
            const seconds = String(now.getSeconds()).padStart(2, '0');
            
            const formattedDateTime = `${year}-${month}-${day} ${hours}:${minutes}:${seconds}`;
            timeDisplay.textContent = formattedDateTime;
        }
    }
    
    // Function to update wedding countdown
    function updateCountdown() {
        // Parse the wedding date from the JSP variable
        const weddingDateStr = "<%= weddingDate %>";
        const weddingDate = new Date(weddingDateStr);
        const now = new Date();
        
        // Calculate time difference in milliseconds
        const diff = weddingDate - now;
        
        if (diff > 0) {
            // Convert to days, hours, minutes, seconds
            const days = Math.floor(diff / (1000 * 60 * 60 * 24));
            const hours = Math.floor((diff % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            const mins = Math.floor((diff % (1000 * 60 * 60)) / (1000 * 60));
            const secs = Math.floor((diff % (1000 * 60)) / 1000);
            
            // Update the countdown values
            document.getElementById('countdown-days').textContent = days;
            document.getElementById('countdown-hours').textContent = hours;
            document.getElementById('countdown-mins').textContent = mins;
            document.getElementById('countdown-secs').textContent = secs;
        } else {
            // Wedding date has passed
            document.getElementById('countdown-days').textContent = '0';
            document.getElementById('countdown-hours').textContent = '0';
            document.getElementById('countdown-mins').textContent = '0';
            document.getElementById('countdown-secs').textContent = '0';
        }
    }
    
    // Task checkboxes handling
    function initTaskCheckboxes() {
        const checkboxes = document.querySelectorAll('.task-list .form-check-input');
        
        checkboxes.forEach(checkbox => {
            checkbox.addEventListener('change', function() {
                const taskItem = this.closest('.task-item');
                
                if (this.checked) {
                    taskItem.classList.add('completed');
                    // If there's a badge, update it
                    const badge = taskItem.querySelector('.task-badge');
                    if (badge) {
                        badge.className = 'task-badge completed';
                        badge.textContent = 'Completed';
                    }
                } else {
                    taskItem.classList.remove('completed');
                    // Here you would restore the original badge status
                    // In a real app, this would come from the database
                }
            });
        });
    }
    
    // Initialize particles.js for decorative background
    function initParticles() {
        if (typeof particlesJS !== 'undefined' && document.getElementById('particles-js')) {
            particlesJS('particles-js', {
                "particles": {
                    "number": {
                        "value": 30,
                        "density": {
                            "enable": true,
                            "value_area": 800
                        }
                    },
                    "color": {
                        "value": ["#d35f91", "#f5a9cb", "#ffffff"]
                    },
                    "shape": {
                        "type": ["circle", "heart"],
                        "stroke": {
                            "width": 0,
                            "color": "#000000"
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
                        "enable": false
                    },
                    "move": {
                        "enable": true,
                        "speed": 2,
                        "direction": "top",
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
                            "mode": "repulse"
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
                        "repulse": {
                            "distance": 200,
                            "duration": 0.4
                        }
                    }
                },
                "retina_detect": true
            });
        }
    }
</script>

<!-- Required JS Libraries -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
<script src="https://cdn.jsdelivr.net/npm/particles.js@2.0.0/particles.min.js"></script>
</body>
</html>