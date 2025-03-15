<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/components/header.jsp" %>
<% 
    // Set page title
    request.setAttribute("pageTitle", "Wedding Dashboard");
    
    // Set date variables for example data
    String currentDate = "2025-03-15 04:01:56";
    String weddingDate = "2025-06-15";
%>

<!-- Hero Section with Particles -->
<div class="container-fluid dashboard-hero py-5 mb-5" id="particleHero">
    <div class="particles-container" id="particles-js"></div>
    
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-6 fade-in-up">
                <h1 class="display-5 fw-bold mb-3">Welcome, <span class="user-name">Janith Deshan</span></h1>
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
            <div class="col-md-6 text-center text-md-end fade-in-up" style="--delay: 300ms">
                <div class="countdown-wrapper">
                    <h5 class="mb-3"><i class="fas fa-hourglass-half me-2"></i> Wedding Day Countdown</h5>
                    <div class="countdown">
                        <div class="countdown-item">
                            <div class="countdown-value">94</div>
                            <div class="countdown-label">days</div>
                        </div>
                        <div class="countdown-item">
                            <div class="countdown-value">12</div>
                            <div class="countdown-label">hours</div>
                        </div>
                        <div class="countdown-item">
                            <div class="countdown-value">47</div>
                            <div class="countdown-label">mins</div>
                        </div>
                        <div class="countdown-item">
                            <div class="countdown-value">16</div>
                            <div class="countdown-label">secs</div>
                        </div>
                    </div>
                    <p class="wedding-date">June 15, 2025</p>
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
            <div class="dashboard-card profile-card fade-in-up" style="--delay: 100ms">
                <div class="card-body text-center">
                    <div class="profile-avatar">
                        <i class="fas fa-user"></i>
                    </div>
                    <h5 class="mt-3">Priya Sharma</h5>
                    <p class="text-muted mb-3">Wedding Date: June 15, 2025</p>
                    <button class="btn-outline-action w-100">
                        <i class="fas fa-user-edit me-1"></i> Edit Profile
                    </button>
                </div>
            </div>
            
            <!-- Budget Card -->
            <div class="dashboard-card budget-card fade-in-up" style="--delay: 200ms">
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
            <div class="dashboard-card guest-card fade-in-up" style="--delay: 300ms">
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
            <div class="dashboard-card tasks-card slide-in-right" style="--delay: 100ms">
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
            <div class="dashboard-card events-card slide-in-right" style="--delay: 200ms">
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
            <div class="dashboard-card vendors-card slide-in-right" style="--delay: 300ms">
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

<style>
    /* Wedding Pink Theme Variables */
    :root {
        --primary: #d35f91;
        --primary-light: #f5a9cb;
        --primary-dark: #b74177;
        --secondary: #6c757d;
        --success: #4caf50;
        --info: #2196f3;
        --warning: #ffc107;
        --danger: #f44336;
        --light: #f8f9fa;
        --dark: #343a40;
        --white: #ffffff;
        --text-color: #333;
        --shadow-sm: 0 2px 10px rgba(211, 95, 145, 0.08);
        --shadow-md: 0 5px 15px rgba(211, 95, 145, 0.12);
        --shadow-hover: 0 8px 25px rgba(211, 95, 145, 0.2);
        --transition-normal: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
    }
    
    /* Updated Hero Background Section with Enhanced Effects */
/* Particles container styling */
.particles-container {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: 1;
    pointer-events: none;
}

/* Make sure content is above particles */
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
    min-height: 350px; /* Ensure enough space for particles */
}

.dashboard-hero .container {
    position: relative;
    z-index: 5;
}
    
    .user-name {
        color: var(--primary);
        position: relative;
    }
    
    .user-name::after {
        content: '';
        position: absolute;
        bottom: -5px;
        left: 0;
        width: 100%;
        height: 2px;
        background: linear-gradient(90deg, var(--primary), transparent);
    }
    
    /* Button styles */
    .btn-primary-action {
        display: inline-flex;
        align-items: center;
        justify-content: center;
        background: linear-gradient(135deg, var(--primary), var(--primary-dark));
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
        color: var(--primary);
        border: 2px solid var(--primary);
        padding: 8px 20px;
        border-radius: 50px;
        font-weight: 600;
        transition: var(--transition-normal);
        cursor: pointer;
        text-decoration: none;
    }
    
    .btn-outline-action:hover {
        background-color: var(--primary-light);
        color: var(--primary-dark);
        transform: translateY(-3px);
    }
    
    .btn-outline-action.btn-sm {
        padding: 5px 15px;
        font-size: 0.85rem;
    }
    
    .btn-action {
        display: inline-flex;
        align-items: center;
        background: var(--light);
        color: var(--primary);
        border: none;
        padding: 6px 12px;
        border-radius: 8px;
        font-size: 0.9rem;
        font-weight: 500;
        transition: var(--transition-normal);
        cursor: pointer;
    }
    
    .btn-action.add {
        background: var(--primary-light);
        color: var(--primary-dark);
    }
    
    .btn-action.add:hover {
        background: var(--primary);
        color: white;
    }
    
    .btn-icon {
        width: 36px;
        height: 36px;
        display: flex;
        align-items: center;
        justify-content: center;
        border-radius: 50%;
        border: none;
        background: #f5f5f5;
        color: var(--primary);
        transition: var(--transition-normal);
        cursor: pointer;
    }
    
    .btn-icon:hover {
        background: var(--primary-light);
        color: var(--primary-dark);
        transform: translateY(-3px);
    }
    
    /* Countdown Styling */
    .countdown-wrapper {
        background: white;
        padding: 1.5rem;
        border-radius: 20px;
        box-shadow: var(--shadow-md);
        display: inline-block;
        border-left: 4px solid var(--primary);
    }
    
    .countdown-wrapper h5 {
        color: var(--primary);
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
        color: var(--primary);
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
        color: var(--primary);
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
        box-shadow: var(--shadow-hover);
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
        color: var(--primary);
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
        background: linear-gradient(135deg, var(--primary), var(--primary-dark));
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
        color: var(--danger);
    }
    
    .budget-value.remaining {
        color: var(--success);
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
        background: linear-gradient(to right, var(--success), #a8e063);
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
        background-color: var(--primary);
        border-color: var(--primary);
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
        color: var(--success);
    }
    
    .task-badge.warning {
        background-color: rgba(255, 193, 7, 0.1);
        color: var(--warning);
    }
    
    .task-badge.urgent {
        background-color: rgba(244, 67, 54, 0.1);
        color: var(--danger);
    }
    
    .task-badge.info {
        background-color: rgba(33, 150, 243, 0.1);
        color: var(--info);
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
        color: var(--primary);
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
        color: var(--primary);
        width: 16px;
    }
    
    .event-actions {
        display: flex;
        align-items: center;
    }
    
    /* View All Link */
    .view-all {
        color: var(--primary);
        text-decoration: none;
        font-weight: 500;
        transition: var(--transition-normal);
        display: inline-block;
    }
    
    .view-all:hover {
        color: var(--primary-dark);
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
    
    /* Animation keyframes */
    @keyframes fadeInUp {
        from {
            opacity: 0;
            transform: translateY(30px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
    
    @keyframes slideInRight {
        from {
            opacity: 0;
            transform: translateX(50px);
        }
        to {
            opacity: 1;
            transform: translateX(0);
        }
    }
    
    /* Animation classes */
    .fade-in-up {
        opacity: 0;
    }
    
    .fade-in-up.animated {
        animation: fadeInUp 0.6s ease forwards;
        animation-delay: var(--delay, 0s);
    }
    
    .slide-in-right {
        opacity: 0;
    }
    
    .slide-in-right.animated {
        animation: slideInRight 0.6s ease forwards;
        animation-delay: var(--delay, 0s);
    }
    
    /* Add this to your style section for better particle effects */
.simple-particle {
    pointer-events: none;
    position: absolute;
    background-color: rgba(211, 95, 145, 0.8);
    border-radius: 50%;
    animation: float-particle 15s infinite ease-in-out;
    z-index: 2;
}

/* Some particles should have different shapes */
.simple-particle:nth-child(3n) {
    clip-path: polygon(50% 0%, 100% 50%, 50% 100%, 0% 50%);
    border-radius: 0;
}

.simple-particle:nth-child(5n) {
    clip-path: polygon(50% 0%, 100% 38%, 82% 100%, 18% 100%, 0% 38%);
    border-radius: 0;
}

/* Floating animation for particles */
@keyframes float-particle {
    0% {
        transform: translateY(0) rotate(0deg);
        opacity: 0.8;
    }
    50% {
        transform: translateY(-30px) rotate(180deg);
        opacity: 0.4;
    }
    100% {
        transform: translateY(0) rotate(360deg);
        opacity: 0.8;
    }
}

</style>

<script>

document.addEventListener('DOMContentLoaded', function() {
    // Update current datetime in header
    const headerDatetime = document.querySelector('.navbar-text small');
    if (headerDatetime) {
        headerDatetime.innerHTML = '<i class="far fa-clock me-1"></i> 2025-03-15 04:24:45';
    }
    
    // Set user login in header
    const userDropdown = document.querySelector('#navbarDropdown .d-none.d-md-inline');
    if (userDropdown) {
        userDropdown.textContent = 'IT24102137';
    }
    
    // Animate elements as they scroll into view
    const animateOnScroll = function() {
        const elements = document.querySelectorAll('.fade-in-up, .slide-in-right');
        
        elements.forEach(element => {
            const position = element.getBoundingClientRect();
            
            // If element is in viewport
            if(position.top < window.innerHeight * 0.9 && position.bottom >= 0) {
                // Add animation class if not already animated
                if (!element.classList.contains('animated')) {
                    element.classList.add('animated');
                }
            }
        });
    };
    
    // Run animation check initially and on scroll
    animateOnScroll();
    window.addEventListener('scroll', animateOnScroll);
    
    // Task checkbox functionality
    document.querySelectorAll('.form-check-input').forEach(checkbox => {
        checkbox.addEventListener('change', function() {
            const taskItem = this.closest('.task-item');
            const label = taskItem.querySelector('.form-check-label');
            
            if (this.checked) {
                taskItem.classList.add('completed');
                label.classList.add('text-decoration-line-through');
                
                // Update the badge to "Completed"
                const badge = taskItem.querySelector('.task-badge');
                badge.textContent = 'Completed';
                badge.className = 'task-badge completed';
            } else {
                taskItem.classList.remove('completed');
                label.classList.remove('text-decoration-line-through');
                
                // You would need actual data to restore the original badge
                // This is a placeholder:
                const badge = taskItem.querySelector('.task-badge');
                badge.textContent = 'Pending';
                badge.className = 'task-badge warning';
            }
        });
    });
    
    // Live countdown timer
    function updateCountdown() {
        // Wedding date from the page
        const weddingDate = new Date('2025-06-15T00:00:00');
        const now = new Date();
        
        const diff = weddingDate - now;
        
        // Calculate days, hours, minutes, seconds
        const days = Math.floor(diff / (1000 * 60 * 60 * 24));
        const hours = Math.floor((diff % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        const minutes = Math.floor((diff % (1000 * 60 * 60)) / (1000 * 60));
        const seconds = Math.floor((diff % (1000 * 60)) / 1000);
        
        // Update the countdown elements
        document.querySelectorAll('.countdown-value')[0].textContent = days;
        document.querySelectorAll('.countdown-value')[1].textContent = hours;
        document.querySelectorAll('.countdown-value')[2].textContent = minutes;
        document.querySelectorAll('.countdown-value')[3].textContent = seconds;
    }
    
    // Update the countdown every second
    setInterval(updateCountdown, 1000);
    updateCountdown(); // Initial call
    
    // Add hover animations to buttons
    document.querySelectorAll('.btn-primary-action, .btn-outline-action').forEach(button => {
        button.addEventListener('mouseenter', function() {
            const icon = this.querySelector('i');
            if (icon) {
                icon.style.transition = 'transform 0.3s ease';
                icon.style.transform = 'translateY(-3px)';
            }
        });
        
        button.addEventListener('mouseleave', function() {
            const icon = this.querySelector('i');
            if (icon) {
                icon.style.transform = 'translateY(0)';
            }
        });
    });
    
    // Stats circles animation on hover
    document.querySelectorAll('.stat-circle').forEach(circle => {
        circle.addEventListener('mouseenter', function() {
            this.style.transform = 'scale(1.1)';
        });
        
        circle.addEventListener('mouseleave', function() {
            this.style.transform = 'scale(1)';
        });
    });
    
    // Countdown item pulse animation
    function pulseCountdown() {
        const countdownItems = document.querySelectorAll('.countdown-item');
        countdownItems.forEach((item, index) => {
            setTimeout(() => {
                item.style.transform = 'translateY(-5px)';
                
                setTimeout(() => {
                    item.style.transform = 'translateY(0)';
                }, 300);
            }, index * 200);
        }); 
    }
    
    // Pulse countdown every 5 seconds
    setInterval(pulseCountdown, 5000);
    
    // Add particles to hero section
    const heroSection = document.querySelector('.dashboard-hero');
    if (heroSection) {
        // Create particles container if it doesn't exist
        let particlesContainer = document.getElementById('particles-js');
        if (!particlesContainer) {
            particlesContainer = document.createElement('div');
            particlesContainer.id = 'particles-js';
            particlesContainer.className = 'particles-container';
            heroSection.insertBefore(particlesContainer, heroSection.firstChild);
        }
        
     // Create particles
        for (let i = 0; i < 30; i++) {
            const particle = document.createElement('div');
            particle.className = 'simple-particle';
            
            // Random properties
            const size = Math.random() * 8 + 3; // 3-11px
            const opacity = Math.random() * 0.6 + 0.2; // 0.2-0.8
            
            particle.style.cssText = `
                position: absolute;
                top: ${Math.random() * 100}%;
                left: ${Math.random() * 100}%;
                width: ${size}px;
                height: ${size}px;
                opacity: ${opacity};
                background-color: rgba(211, 95, 145, 0.8);
                border-radius: 50%;
                pointer-events: none;
                z-index: 2;
            `;
            
            particlesContainer.appendChild(particle);
            
            // Animate each particle
            animateParticle(particle);
        }
    }
    
    function animateParticle(particle) {
        // Initial position
        const startX = Math.random() * 100;
        const startY = Math.random() * 100;
        
        // Animation duration and delay
        const duration = Math.random() * 20000 + 10000; // 10-30 seconds
        const delay = Math.random() * 5000; // 0-5 seconds delay
        
        // Set initial position
        particle.style.left = `${startX}%`;
        particle.style.top = `${startY}%`;
        
        // Start animation after delay
        setTimeout(() => {
            moveParticle(particle, startX, startY, duration);
        }, delay);
    }
    
    function moveParticle(particle, startX, startY, duration) {
        // Random target position
        const targetX = Math.random() * 100;
        const targetY = Math.random() * 100;
        
        // Animation start time
        const startTime = performance.now();
        
        // Animate
        function step(timestamp) {
            // Calculate progress (0 to 1)
            const progress = Math.min((timestamp - startTime) / duration, 1);
            
            // Calculate current position using easing
            const easeProgress = easeInOutCubic(progress);
            const currentX = startX + (targetX - startX) * easeProgress;
            const currentY = startY + (targetY - startY) * easeProgress;
            
            // Update position
            particle.style.left = `${currentX}%`;
            particle.style.top = `${currentY}%`;
            
            // Continue animation if not complete
            if (progress < 1) {
                requestAnimationFrame(step);
            } else {
                // Start new animation when complete
                moveParticle(particle, targetX, targetY, duration);
            }
        }
        
        // Start animation
        requestAnimationFrame(step);
    }
    
    // Easing function for smooth motion
    function easeInOutCubic(x) {
        return x < 0.5 ? 4 * x * x * x : 1 - Math.pow(-2 * x + 2, 3) / 2;
    }
});
</script>

<%@ include file="/WEB-INF/components/footer.jsp" %>