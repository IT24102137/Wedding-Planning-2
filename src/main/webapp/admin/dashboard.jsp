<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard | Wedding Planner</title>
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    
    <!-- FontAwesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Google Fonts - Poppins and Great Vibes -->
    <link href="https://fonts.googleapis.com/css2?family=Great+Vibes&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- AOS - Animate On Scroll Library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css" />
<% 
    // Current admin details (in real application, this would come from session/database)
    String adminName = "IT24102137";
    String adminRole = "System Administrator";
    String adminAvatar = "https://ui-avatars.com/api/?name=IT+Admin&background=d35f91&color=fff";
    
    // Second admin for account switching demo
    String secondAdminName = "Wedding Admin";
    String secondAdminRole = "Content Manager";
    String secondAdminAvatar = "https://ui-avatars.com/api/?name=Wedding+Admin&background=f5a9cb&color=fff";
    
    // Determine current logged in admin (from session in real app)
    boolean isFirstAdmin = true; // Toggle this based on session data
    
    String currentAdminName = isFirstAdmin ? adminName : secondAdminName;
    String currentAdminRole = isFirstAdmin ? adminRole : secondAdminRole;
    String currentAdminAvatar = isFirstAdmin ? adminAvatar : secondAdminAvatar;
%>

</head>
<body>
<!-- Load required JS libraries -->
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.9.1/dist/chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-gradient@0.5.1/dist/chartjs-plugin-gradient.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.4/gsap.min.js"></script>

<!-- Futuristic Admin Dashboard -->
<div class="admin-dashboard">
    <!-- Animated background elements -->
    <div class="background-elements">
        <div class="bg-circle circle-1"></div>
        <div class="bg-circle circle-2"></div>
        <div class="bg-circle circle-3"></div>
        <div class="bg-grid"></div>
    </div>

    <!-- Admin Top Navigation Bar -->
    <nav class="admin-topbar">
        <div class="container-fluid">
            <div class="row align-items-center">
                <div class="col-md-5">
                    <div class="admin-breadcrumb">
                        <div class="admin-logo">
                            <i class="fas fa-heart"></i> WeddingPro Admin
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
                    <div class="admin-user-menu dropdown">
                        <div class="admin-user-info" data-bs-toggle="dropdown" aria-expanded="false">
                            <div class="admin-quick-actions">
                                <button class="btn-icon" title="Notifications">
                                    <i class="fas fa-bell"></i>
                                    <span class="badge">3</span>
                                </button>
                                <button class="btn-icon" title="Messages">
                                    <i class="fas fa-envelope"></i>
                                    <span class="badge">5</span>
                                </button>
                            </div>
                            <div class="admin-avatar">
                                <img src="<%= currentAdminAvatar %>" alt="Admin">
                                <div class="admin-status online"></div>
                            </div>
                            <div class="admin-details">
                                <h6><%= currentAdminName %></h6>
                                <p><%= currentAdminRole %></p>
                            </div>
                            <i class="fas fa-chevron-down"></i>
                        </div>
                        <ul class="dropdown-menu dropdown-menu-end admin-dropdown">
                            <li class="dropdown-header">Admin Control Panel</li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-user-circle"></i> My Profile</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-cog"></i> Settings</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-bell"></i> Notifications <span class="badge float-end">3</span></a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li class="dropdown-header">Switch Account</li>
                            <li>
                                <a class="dropdown-item admin-account <%= isFirstAdmin ? "active" : "" %>" href="#">
                                    <div class="admin-mini-avatar">
                                        <img src="<%= adminAvatar %>" alt="<%= adminName %>">
                                        <div class="admin-status online"></div>
                                    </div>
                                    <div class="admin-mini-details">
                                        <h6><%= adminName %></h6>
                                        <p><%= adminRole %></p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item admin-account <%= !isFirstAdmin ? "active" : "" %>" href="#">
                                    <div class="admin-mini-avatar">
                                        <img src="<%= secondAdminAvatar %>" alt="<%= secondAdminName %>">
                                        <div class="admin-status away"></div>
                                    </div>
                                    <div class="admin-mini-details">
                                        <h6><%= secondAdminName %></h6>
                                        <p><%= secondAdminRole %></p>
                                    </div>
                                </a>
                            </li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item text-danger" href="${pageContext.request.contextPath}/login.jsp"><i class="fas fa-sign-out-alt"></i> Log Out</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <div class="container-fluid py-4">
        <!-- Welcome Header -->
        <div class="row mb-4">
            <div class="col-12">
                <div class="welcome-banner">
                    <div class="welcome-content">
                        <div class="welcome-title">
                            <h2 class="animate-text">Welcome back, <%= currentAdminName.split(" ")[0] %></h2>
                            <p>Here's what's happening with your wedding planning platform today</p>
                        </div>
                        <div class="welcome-actions">
                            <button class="btn-holographic"><i class="fas fa-rocket"></i> Live View</button>
                            <button class="btn-holographic"><i class="fas fa-sliders-h"></i> Settings</button>
                        </div>
                    </div>
                    <div class="decoration-orbs">
                        <div class="orb orb-1"></div>
                        <div class="orb orb-2"></div>
                        <div class="orb orb-3"></div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Stats Cards -->
        <div class="row mb-4">
            <div class="col-md-3 mb-4">
                <div class="neo-card stats-card" data-aos="fade-up" data-aos-delay="100">
                    <div class="stats-icon users">
                        <i class="fas fa-users"></i>
                    </div>
                    <div class="stats-info">
                        <h3>Total Users</h3>
                        <div class="d-flex align-items-end">
                            <div class="stats-value" data-counter="124">0</div>
                            <div class="stats-change positive ms-2">
                                <i class="fas fa-caret-up"></i> 15%
                            </div>
                        </div>
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 65%" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="col-md-3 mb-4">
                <div class="neo-card stats-card" data-aos="fade-up" data-aos-delay="200">
                    <div class="stats-icon bookings">
                        <i class="fas fa-calendar-check"></i>
                    </div>
                    <div class="stats-info">
                        <h3>Total Bookings</h3>
                        <div class="d-flex align-items-end">
                            <div class="stats-value" data-counter="87">0</div>
                            <div class="stats-change positive ms-2">
                                <i class="fas fa-caret-up"></i> 23%
                            </div>
                        </div>
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 78%" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="col-md-3 mb-4">
                <div class="neo-card stats-card" data-aos="fade-up" data-aos-delay="300">
                    <div class="stats-icon vendors">
                        <i class="fas fa-store"></i>
                    </div>
                    <div class="stats-info">
                        <h3>Active Vendors</h3>
                        <div class="d-flex align-items-end">
                            <div class="stats-value" data-counter="42">0</div>
                            <div class="stats-change positive ms-2">
                                <i class="fas fa-caret-up"></i> 7%
                            </div>
                        </div>
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 45%" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="col-md-3 mb-4">
                <div class="neo-card stats-card" data-aos="fade-up" data-aos-delay="400">
                    <div class="stats-icon revenue">
                        <i class="fas fa-chart-line"></i>
                    </div>
                    <div class="stats-info">
                        <h3>Revenue</h3>
                        <div class="d-flex align-items-end">
                            <div class="stats-value" data-prefix="$" data-counter="18000">0</div>
                            <div class="stats-change positive ms-2">
                                <i class="fas fa-caret-up"></i> 12%
                            </div>
                        </div>
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 68%" aria-valuenow="68" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Quick Actions -->
        <div class="row mb-4">
            <div class="col-12">
                <div class="neo-card" data-aos="fade-up" data-aos-delay="500">
                    <div class="card-header">
                        <h5 class="mb-0"><i class="fas fa-bolt me-2"></i> Quick Actions</h5>
                    </div>
                    <div class="card-body">
                        <div class="quick-actions">
                            <a href="${pageContext.request.contextPath}/admin/users-management.jsp" class="action-tile users-tile">
                                <div class="action-icon">
                                    <i class="fas fa-user-cog"></i>
                                </div>
                                <h4>Manage Users</h4>
                                <div class="action-info">
                                    <span>124 active users</span>
                                </div>
                                <div class="hover-info">
                                    <i class="fas fa-arrow-right"></i>
                                </div>
                            </a>
                            
                            <a href="${pageContext.request.contextPath}/admin/vendors-management.jsp" class="action-tile vendors-tile">
                                <div class="action-icon">
                                    <i class="fas fa-store-alt"></i>
                                </div>
                                <h4>Manage Vendors</h4>
                                <div class="action-info">
                                    <span>42 active vendors</span>
                                </div>
                                <div class="hover-info">
                                    <i class="fas fa-arrow-right"></i>
                                </div>
                            </a>
                            
                            <a href="${pageContext.request.contextPath}/admin/events-management.jsp" class="action-tile events-tile">
                                <div class="action-icon">
                                    <i class="fas fa-calendar-alt"></i>
                                </div>
                                <h4>Manage Events</h4>
                                <div class="action-info">
                                    <span>87 active events</span>
                                </div>
                                <div class="hover-info">
                                    <i class="fas fa-arrow-right"></i>
                                </div>
                            </a>
                            
                            <a href="#" class="action-tile settings-tile">
                                <div class="action-icon">
                                    <i class="fas fa-cog"></i>
                                </div>
                                <h4>System Settings</h4>
                                <div class="action-info">
                                    <span>Configure platform</span>
                                </div>
                                <div class="hover-info">
                                    <i class="fas fa-arrow-right"></i>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <!-- Recent Activity with Enhanced Timeline -->
            <div class="col-lg-7 mb-4">
                <div class="neo-card h-100" data-aos="fade-up" data-aos-delay="600">
                    <div class="card-header">
                        <h5 class="mb-0"><i class="fas fa-history me-2"></i> Recent Activity</h5>
                        <div class="card-actions">
                            <button class="btn-card-action" id="refreshTimeline" title="Refresh">
                                <i class="fas fa-sync-alt"></i>
                            </button>
                            <button class="btn-card-action" title="More Options">
                                <i class="fas fa-ellipsis-v"></i>
                            </button>
                        </div>
                    </div>
                    <div class="card-body p-0">
                        <div class="futuristic-timeline">
                            <div class="timeline-item">
                                <div class="timeline-marker vendor">
                                    <i class="fas fa-store"></i>
                                </div>
                                <div class="timeline-content">
                                    <h6>New vendor registered - Floral Elegance</h6>
                                    <p class="timestamp"><i class="far fa-clock me-1"></i> Today, 14:32</p>
                                    <div class="timeline-actions">
                                        <button class="btn-neo view" title="View Details"><i class="fas fa-eye"></i></button>
                                        <button class="btn-neo approve" title="Approve"><i class="fas fa-check"></i></button>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="timeline-item">
                                <div class="timeline-marker event">
                                    <i class="fas fa-calendar-check"></i>
                                </div>
                                <div class="timeline-content">
                                    <h6>Event booking completed - Johnson Wedding</h6>
                                    <p class="timestamp"><i class="far fa-clock me-1"></i> Today, 12:15</p>
                                    <div class="timeline-actions">
                                        <button class="btn-neo view" title="View Details"><i class="fas fa-eye"></i></button>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="timeline-item">
                                <div class="timeline-marker alert">
                                    <i class="fas fa-exclamation-triangle"></i>
                                </div>
                                <div class="timeline-content">
                                    <h6>User complaint submitted - Vendor no-show</h6>
                                    <p class="timestamp"><i class="far fa-clock me-1"></i> Yesterday, 20:45</p>
                                    <div class="timeline-actions">
                                        <button class="btn-neo view" title="View Details"><i class="fas fa-eye"></i></button>
                                        <button class="btn-neo resolve" title="Resolve"><i class="fas fa-check-double"></i></button>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="timeline-item">
                                <div class="timeline-marker system">
                                    <i class="fas fa-server"></i>
                                </div>
                                <div class="timeline-content">
                                    <h6>System maintenance completed</h6>
                                    <p class="timestamp"><i class="far fa-clock me-1"></i> Yesterday, 03:30</p>
                                    <div class="timeline-actions">
                                        <button class="btn-neo view" title="View Log"><i class="fas fa-file-alt"></i></button>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="timeline-item">
                                <div class="timeline-marker feature">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="timeline-content">
                                    <h6>New feature deployed - Vendor ratings</h6>
                                    <p class="timestamp"><i class="far fa-clock me-1"></i> March 10, 2025</p>
                                    <div class="timeline-actions">
                                        <button class="btn-neo view" title="View Details"><i class="fas fa-eye"></i></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <a href="#" class="btn-link-neo">
                            View All Activities <i class="fas fa-arrow-right ms-1"></i>
                        </a>
                    </div>
                </div>
            </div>
            
            <!-- Alerts and Notifications with Animated Icons -->
            <div class="col-lg-5 mb-4">
                <div class="neo-card h-100" data-aos="fade-up" data-aos-delay="700">
                    <div class="card-header">
                        <h5 class="mb-0"><i class="fas fa-bell me-2"></i> Alerts & Notifications</h5>
                        <div class="card-actions">
                            <button class="btn-card-action" id="markAllRead" title="Mark All Read">
                                <i class="fas fa-check-double"></i>
                            </button>
                            <button class="btn-card-action" title="More Options">
                                <i class="fas fa-ellipsis-v"></i>
                            </button>
                        </div>
                    </div>
                    <div class="card-body p-0">
                        <div class="alerts-list">
                            <div class="alert-item unread">
                                <div class="alert-icon danger pulse-alert">
                                    <i class="fas fa-exclamation-triangle"></i>
                                </div>
                                <div class="alert-content">
                                    <h6>System Update Required</h6>
                                    <p>Security patches available for installation</p>
                                </div>
                                <div class="alert-action">
                                    <div class="notification-dot"></div>
                                    <button class="btn-circle"><i class="fas fa-chevron-right"></i></button>
                                </div>
                            </div>
                            
                            <div class="alert-item unread">
                                <div class="alert-icon warning">
                                    <i class="fas fa-user-clock"></i>
                                </div>
                                <div class="alert-content">
                                    <h6>5 Vendors Pending Approval</h6>
                                    <p>Waiting for over 24 hours</p>
                                </div>
                                <div class="alert-action">
                                    <div class="notification-dot"></div>
                                    <button class="btn-circle"><i class="fas fa-chevron-right"></i></button>
                                </div>
                            </div>
                            
                            <div class="alert-item">
                                <div class="alert-icon info">
                                    <i class="fas fa-money-bill-wave"></i>
                                </div>
                                <div class="alert-content">
                                    <h6>Payments to Process</h6>
                                    <p>12 payments waiting for processing</p>
                                </div>
                                <div class="alert-action">
                                    <button class="btn-circle"><i class="fas fa-chevron-right"></i></button>
                                </div>
                            </div>
                            
                            <div class="alert-item">
                                <div class="alert-icon success">
                                    <i class="fas fa-chart-pie"></i>
                                </div>
                                <div class="alert-content">
                                    <h6>Monthly Report Ready</h6>
                                    <p>March 2025 analytics are ready to view</p>
                                </div>
                                <div class="alert-action">
                                    <button class="btn-circle"><i class="fas fa-chevron-right"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <a href="#" class="btn-link-neo">
                            View All Alerts <i class="fas fa-arrow-right ms-1"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Chart and Form Row -->
        <div class="row">
            <!-- Chart Section -->
            <div class="col-md-7 mb-4">
                <div class="neo-card h-100" data-aos="fade-up" data-aos-delay="800">
                    <div class="card-header">
                        <h5 class="mb-0"><i class="fas fa-chart-bar me-2"></i> System Performance</h5>
                        <div class="card-actions">
                            <div class="chart-period">
                                <button class="btn-period active">Day</button>
                                <button class="btn-period">Week</button>
                                <button class="btn-period">Month</button>
                                <button class="btn-period">Year</button>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="chart-container">
                            <canvas id="performanceChart" height="250"></canvas>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Admin Quick Message Form -->
            <div class="col-md-5 mb-4">
                <div class="neo-card h-100" data-aos="fade-up" data-aos-delay="900">
                    <div class="card-header">
                        <h5 class="mb-0"><i class="fas fa-paper-plane me-2"></i> Quick Message</h5>
                        <div class="card-actions">
                            <button class="btn-card-action" id="clearForm" title="Clear Form">
                                <i class="fas fa-eraser"></i>
                            </button>
                            <button class="btn-card-action" title="More Options">
                                <i class="fas fa-ellipsis-v"></i>
                            </button>
                        </div>
                    </div>
                    <div class="card-body">
                        <form id="quickMessageForm">
                            <div class="form-group mb-4">
                                <div class="neo-input">
                                    <i class="fas fa-user input-icon"></i>
                                    <input type="text" id="recipientName" placeholder="Recipient Name">
                                    <span class="input-focus-effect"></span>
                                </div>
                            </div>
                            
                            <div class="form-group mb-4">
                                <div class="neo-select">
                                    <i class="fas fa-tag input-icon"></i>
                                    <select id="messageType">
                                        <option value="" disabled selected>Select Message Type</option>
                                        <option value="1">Announcement</option>
                                        <option value="2">Warning</option>
                                        <option value="3">Update</option>
                                        <option value="4">Invitation</option>
                                    </select>
                                    <i class="fas fa-chevron-down select-arrow"></i>
                                    <span class="input-focus-effect"></span>
                                </div>
                            </div>
                            
                            <div class="form-group mb-4">
                                <div class="neo-textarea">
                                    <i class="fas fa-comment input-icon"></i>
                                    <textarea id="messageContent" placeholder="Type your message here..."></textarea>
                                    <span class="input-focus-effect"></span>
                                </div>
                            </div>
                            
                            <button type="submit" class="btn-neo-primary w-100">
                                <i class="fas fa-paper-plane me-2"></i> Send Message
                                <span class="btn-effect"></span>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Wedding-Themed Footer -->
    <footer class="admin-footer">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6">
                    <div class="footer-info">
                        <div class="footer-logo">
                            <i class="fas fa-heart"></i> WeddingPro Admin
                        </div>
                        <p>Making dream weddings come true since 2023</p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="footer-links">
                        <a href="#" class="footer-link"><i class="fas fa-question-circle"></i> Help</a>
                        <a href="#" class="footer-link"><i class="fas fa-file-alt"></i> Documentation</a>
                        <a href="#" class="footer-link"><i class="fas fa-shield-alt"></i> Privacy Policy</a>
                    </div>
                    <div class="footer-copyright">
                        &copy; 2025 Wedding Planner System | Designed with <i class="fas fa-heart"></i> by IT24102137
                    </div>
                </div>
            </div>
        </div>
    </footer>
</div>

<!-- Custom Dashboard Styles -->
<style>
    /* Futuristic Admin Dashboard Theme with Wedding Colors */
    :root {
        --primary-color: #d35f91;        /* Wedding pink */
        --secondary-color: #f5a9cb;      /* Light pink */
        --tertiary-color: #b74177;       /* Dark pink */
        --accent-color: #8e44ad;         /* Purple accent */
        --success-color: #05cd99;
        --warning-color: #ff9f43;
        --danger-color: #fd5d93;
        --info-color: #0dcaf0;
        
        --bg-dark: #1c0c1e;              /* Dark background with a hint of purple */
        --bg-card: rgba(50, 20, 40, 0.95);
        --bg-glass: rgba(255, 255, 255, 0.08);
        --border-color: rgba(255, 255, 255, 0.08);
        
        --text-primary: #ffffff;
        --text-secondary: rgba(255, 255, 255, 0.7);
        --text-muted: rgba(255, 255, 255, 0.5);
        
        --shadow-sm: 0 5px 15px rgba(0, 0, 0, 0.15);
        --shadow-md: 0 10px 25px rgba(0, 0, 0, 0.2);
        --shadow-lg: 0 15px 35px rgba(0, 0, 0, 0.3);
        --glow-effect: 0 0 20px rgba(211, 95, 145, 0.4);
        
        --transition-fast: all 0.2s ease;
        --transition-normal: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
        --transition-slow: all 0.5s cubic-bezier(0.25, 0.8, 0.25, 1);
    }
    
    /* General Dashboard Styling */
    body {
        font-family: 'Poppins', sans-serif;
        margin: 0;
        padding: 0;
        overflow-x: hidden;
        background-color: var(--bg-dark);
        color: var(--text-primary);
    }

    .admin-dashboard {
        position: relative;
        min-height: 100vh;
        overflow-x: hidden;
    }
    
    /* Animated Background Elements */
    .background-elements {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        z-index: 0;
        overflow: hidden;
        pointer-events: none;
    }
    
    .bg-circle {
        position: absolute;
        border-radius: 50%;
        filter: blur(80px);
        opacity: 0.15;
    }
    
    .circle-1 {
        width: 600px;
        height: 600px;
        background: linear-gradient(135deg, #d35f91, #f5a9cb);
        top: -200px;
        right: -100px;
        animation: float-slow 25s ease-in-out infinite;
    }
    
    .circle-2 {
        width: 450px;
        height: 450px;
        background: linear-gradient(135deg, #b74177, #d35f91);
        bottom: -150px;
        left: 10%;
        animation: float-slow 20s ease-in-out infinite reverse;
    }
    
    .circle-3 {
        width: 300px;
        height: 300px;
        background: linear-gradient(135deg, #8e44ad, #d35f91);
        top: 30%;
        left: -100px;
        animation: float-slow 15s ease-in-out infinite;
    }
    
    @keyframes float-slow {
        0%, 100% { transform: translate(0, 0) scale(1); }
        50% { transform: translate(50px, -30px) scale(1.1); }
    }
    
    .bg-grid {
        position: absolute;
        width: 200%;
        height: 200%;
        top: -50%;
        left: -50%;
        background-image: 
            linear-gradient(rgba(255, 255, 255, 0.03) 1px, transparent 1px),
            linear-gradient(90deg, rgba(255, 255, 255, 0.03) 1px, transparent 1px);
        background-size: 50px 50px;
        transform: perspective(500px) rotateX(60deg);
        animation: grid-move 25s linear infinite;
    }
    
    @keyframes grid-move {
        0% { background-position: 0 0; }
        100% { background-position: 50px 50px; }
    }
    
    /* Admin Top Navigation Styling */
    .admin-topbar {
        position: sticky;
        top: 0;
        background: rgba(28, 12, 30, 0.8);
        backdrop-filter: blur(10px);
        -webkit-backdrop-filter: blur(10px);
        border-bottom: 1px solid var(--border-color);
        padding: 15px 0;
        z-index: 100;
        box-shadow: var(--shadow-sm);
    }
    
    .admin-logo {
        font-weight: 700;
        font-size: 1.2rem;
        display: flex;
        align-items: center;
        color: var(--text-primary);
        padding: 0 15px;
    }
    
    .admin-logo i {
        margin-right: 8px;
        color: var(--primary-color);
        font-size: 1.3rem;
    }
    
    .admin-breadcrumb {
        display: flex;
        align-items: center;
    }
    
    .admin-breadcrumb .separator {
        margin: 0 12px;
        color: var(--text-muted);
    }
    
    .admin-breadcrumb .current-page {
        color: var(--secondary-color);
        font-weight: 500;
    }
    
    .system-time {
        display: inline-flex;
        align-items: center;
        background: rgba(255, 255, 255, 0.03);
        padding: 8px 15px;
        border-radius: 50px;
        box-shadow: inset 0 0 10px rgba(0, 0, 0, 0.2);
        border: 1px solid var(--border-color);
    }
    
    .system-time i {
        margin-right: 8px;
        color: var(--secondary-color);
    }
    
    .time-display {
        font-size: 0.85rem;
        font-weight: 500;
        color: var(--text-secondary);
    }
    
    .pulse {
        animation: pulse-animation 2s infinite;
    }
    
    @keyframes pulse-animation {
        0% { opacity: 0.7; transform: scale(1); }
        50% { opacity: 1; transform: scale(1.05); }
        100% { opacity: 0.7; transform: scale(1); }
    }
    
    .admin-user-menu {
        display: flex;
        justify-content: flex-end;
    }
    
    .admin-user-info {
        display: flex;
        align-items: center;
        background: rgba(255, 255, 255, 0.05);
        padding: 8px 15px;
        border-radius: 50px;
        cursor: pointer;
        transition: var(--transition-normal);
        border: 1px solid var(--border-color);
    }
    
    .admin-user-info:hover {
        background: rgba(255, 255, 255, 0.1);
        transform: translateY(-2px);
    }
    
    .admin-quick-actions {
        display: flex;
        margin-right: 15px;
        gap: 10px;
    }
    
    .btn-icon {
        position: relative;
        width: 36px;
        height: 36px;
        border-radius: 50%;
        background: rgba(255, 255, 255, 0.05);
        border: 1px solid var(--border-color);
        color: var(--text-secondary);
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 0.9rem;
        transition: var(--transition-normal);
        cursor: pointer;
    }
    
    .btn-icon:hover {
        background: rgba(255, 255, 255, 0.1);
        color: var(--text-primary);
        transform: translateY(-3px);
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
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        border: 2px solid var(--bg-dark);
    }
    
    .admin-avatar {
        width: 36px;
        height: 36px;
        border-radius: 50%;
        overflow: hidden;
        position: relative;
        margin-right: 12px;
        border: 2px solid var(--primary-color);
        box-shadow: 0 0 0 2px rgba(255, 255, 255, 0.1);
    }
    
    .admin-avatar img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }
    
    .admin-status {
        position: absolute;
        right: 0;
        bottom: 0;
        width: 10px;
        height: 10px;
        border-radius: 50%;
        border: 2px solid var(--bg-card);
    }
    
    .admin-status.online {
        background-color: var(--success-color);
        box-shadow: 0 0 8px var(--success-color);
    }
    
    .admin-status.away {
        background-color: var(--warning-color);
        box-shadow: 0 0 8px var(--warning-color);
    }
    
    .admin-details {
        margin-right: 15px;
    }
    
    .admin-details h6 {
        margin: 0;
        font-size: 0.9rem;
        font-weight: 600;
    }
    
    .admin-details p {
        margin: 0;
        font-size: 0.7rem;
        color: var(--text-secondary);
    }
    
    /* Enhanced Dropdown Styling */
    .admin-dropdown {
        background: var(--bg-card);
        border: 1px solid var(--border-color);
        border-radius: 15px;
        box-shadow: var(--shadow-md), var(--glow-effect);
        backdrop-filter: blur(10px);
        -webkit-backdrop-filter: blur(10px);
        padding: 15px;
        min-width: 280px;
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
    }
    
    .dropdown-item:hover {
        background: rgba(255, 255, 255, 0.05);
        color: var(--primary-color);
        transform: translateX(5px);
    }
    
    .dropdown-item.text-danger:hover {
        background: rgba(253, 93, 147, 0.1);
        color: var(--danger-color);
    }
    
    .admin-account {
        display: flex;
        align-items: center;
        padding: 10px 15px;
        border-radius: 10px;
        transition: var(--transition-normal);
    }
    
    .admin-account.active {
        background: rgba(211, 95, 145, 0.15);
    }
    
    .admin-account:hover {
        background: rgba(255, 255, 255, 0.05);
    }
    
    .admin-mini-avatar {
        width: 30px;
        height: 30px;
        border-radius: 50%;
        overflow: hidden;
        position: relative;
        margin-right: 10px;
        border: 2px solid rgba(255, 255, 255, 0.1);
    }
    
    .admin-mini-avatar img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }
    
    .admin-mini-avatar .admin-status {
        width: 8px;
        height: 8px;
    }
    
    /* Welcome Banner Styling */
    .welcome-banner {
        position: relative;
        background: linear-gradient(135deg, #d35f91, #b74177);
        border-radius: 20px;
        overflow: hidden;
        padding: 30px;
        margin-bottom: 20px;
        box-shadow: var(--shadow-md), 0 0 30px rgba(211, 95, 145, 0.3);
        border: 1px solid rgba(255, 255, 255, 0.1);
    }
    
    .welcome-content {
        position: relative;
        z-index: 2;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    
    .animate-text {
        background: linear-gradient(to right, #ffffff, #f5e6ee);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        position: relative;
        margin: 0 0 10px 0;
        font-weight: 700;
        font-size: 1.8rem;
        font-family: 'Great Vibes', cursive;
    }
    
    .animate-text::before {
        content: attr(data-text);
        position: absolute;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        background: linear-gradient(90deg, transparent 0%, white 50%, transparent 100%);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        animation: shine 3s infinite;
    }
    
    @keyframes shine {
        0% { background-position: -100%; }
        100% { background-position: 200%; }
    }
    
    .welcome-actions {
        display: flex;
        gap: 15px;
    }
    
    .btn-holographic {
        background: rgba(255, 255, 255, 0.15);
        border: 1px solid rgba(255, 255, 255, 0.3);
        color: white;
        border-radius: 50px;
        padding: 10px 20px;
        font-size: 0.9rem;
        font-weight: 500;
        cursor: pointer;
        transition: var(--transition-normal);
        display: flex;
        align-items: center;
        overflow: hidden;
        position: relative;
    }
    
    .btn-holographic i {
        margin-right: 8px;
    }
    
    .btn-holographic:hover {
        background: rgba(255, 255, 255, 0.25);
        transform: translateY(-3px);
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
    }
    
    .btn-holographic::before {
        content: '';
        position: absolute;
        top: -50%;
        left: -50%;
        width: 200%;
        height: 200%;
        background: linear-gradient(
            45deg,
            transparent,
            rgba(255, 255, 255, 0.2),
            transparent
        );
        transform: rotate(45deg);
        animation: shine-effect 3s infinite;
    }
    
    @keyframes shine-effect {
        0% { left: -50%; }
        100% { left: 150%; }
    }
    
    .decoration-orbs {
        position: absolute;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        overflow: hidden;
        z-index: 1;
    }
    
    .orb {
        position: absolute;
        border-radius: 50%;
        filter: blur(40px);
        opacity: 0.4;
    }
    
    .orb-1 {
        width: 300px;
        height: 300px;
        top: -150px;
        right: -50px;
        background: linear-gradient(to right, var(--secondary-color), var(--tertiary-color));
        animation: float 15s ease-in-out infinite;
    }
    
    .orb-2 {
        width: 200px;
        height: 200px;
        bottom: -100px;
        right: 30%;
        background: linear-gradient(to right, var(--info-color), var(--success-color));
        animation: float 12s ease-in-out infinite reverse;
    }
    
    .orb-3 {
        width: 150px;
        height: 150px;
        top: 30%;
        left: 5%;
        background: linear-gradient(to right, var(--warning-color), var(--danger-color));
        animation: float 10s ease-in-out infinite;
    }
    
    @keyframes float {
        0%, 100% { transform: translateY(0) scale(1); }
        50% { transform: translateY(-20px) scale(1.05); }
    }
    
    /* Neo Cards and Components */
    .neo-card {
        background: var(--bg-card);
        border-radius: 15px;
        box-shadow: var(--shadow-md);
        border: 1px solid var(--border-color);
        backdrop-filter: blur(10px);
        -webkit-backdrop-filter: blur(10px);
        transition: var(--transition-normal);
        overflow: hidden;
        height: 100%;
    }
    
    .neo-card:hover {
        transform: translateY(-5px);
        box-shadow: var(--shadow-md), var(--glow-effect);
    }
    
    .neo-card .card-header {
        background-color: transparent;
        border-bottom: 1px solid var(--border-color);
        padding: 20px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    
    .neo-card .card-header h5 {
        margin: 0;
        font-weight: 600;
        color: var(--text-primary);
        display: flex;
        align-items: center;
    }
    
    .neo-card .card-header h5 i {
        color: var(--primary-color);
        margin-right: 8px;
    }
    
    .neo-card .card-body {
        padding: 20px;
    }
    
    .neo-card .card-footer {
        background-color: transparent;
        border-top: 1px solid var(--border-color);
        padding: 15px 20px;
        text-align: center;
    }
    
    .card-actions {
        display: flex;
        gap: 5px;
    }
    
    .btn-card-action {
        width: 30px;
        height: 30px;
        border-radius: 8px;
        background: var(--bg-glass);
        border: none;
        color: var(--text-secondary);
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 0.8rem;
        cursor: pointer;
        transition: var(--transition-normal);
    }
    
    .btn-card-action:hover {
        background: rgba(255, 255, 255, 0.15);
        color: var(--text-primary);
        transform: translateY(-2px);
    }
    
    /* Form Controls */
    .neo-input, .neo-select, .neo-textarea {
        position: relative;
        margin-bottom: 15px;
    }
    
    .neo-input input, .neo-select select, .neo-textarea textarea {
        width: 100%;
        background: rgba(255, 255, 255, 0.03);
        border: 1px solid var(--border-color);
        border-radius: 12px;
        color: var(--text-primary);
        padding: 12px 15px 12px 45px;
        font-size: 0.9rem;
        transition: var(--transition-normal);
    }
    
    .neo-input input:focus, .neo-select select:focus, .neo-textarea textarea:focus {
        outline: none;
        border-color: var(--primary-color);
        background: rgba(255, 255, 255, 0.05);
        box-shadow: 0 0 0 3px rgba(211, 95, 145, 0.2);
    }
    
    .input-icon {
        position: absolute;
        left: 15px;
        top: 50%;
        transform: translateY(-50%);
        color: var(--text-secondary);
        font-size: 0.9rem;
        transition: var(--transition-normal);
        pointer-events: none;
    }
    
    .neo-textarea .input-icon {
        top: 15px;
        transform: none;
    }
    
    .neo-input input:focus + .input-icon,
    .neo-select select:focus ~ .input-icon,
    .neo-textarea textarea:focus + .input-icon {
        color: var(--primary-color);
    }
    
    .neo-textarea textarea {
        height: 120px;
        resize: none;
    }
    
    .neo-select {
        position: relative;
    }
    
    .neo-select select {
        appearance: none;
        cursor: pointer;
    }
    
    .select-arrow {
        position: absolute;
        right: 15px;
        top: 50%;
        transform: translateY(-50%);
        color: var(--text-secondary);
        font-size: 0.8rem;
        pointer-events: none;
        transition: var(--transition-normal);
    }
    
    .neo-select select:focus ~ .select-arrow {
        color: var(--primary-color);
        transform: translateY(-50%) rotate(180deg);
    }
    
    .input-focus-effect {
        position: absolute;
        bottom: 0;
        left: 0;
        width: 0;
        height: 2px;
        background: linear-gradient(to right, var(--primary-color), var(--secondary-color));
        transition: var(--transition-normal);
    }
    
    .neo-input input:focus ~ .input-focus-effect,
    .neo-select select:focus ~ .input-focus-effect,
    .neo-textarea textarea:focus ~ .input-focus-effect {
        width: 100%;
    }
    
    .btn-neo-primary {
        background: linear-gradient(135deg, var(--primary-color), var(--tertiary-color));
        border: none;
        border-radius: 12px;
        color: white;
        padding: 12px 25px;
        font-weight: 600;
        font-size: 0.9rem;
        cursor: pointer;
        transition: var(--transition-normal);
        position: relative;
        overflow: hidden;
    }
    
    .btn-neo-primary:hover {
        transform: translateY(-3px);
        box-shadow: 0 5px 15px rgba(211, 95, 145, 0.3);
    }
    
    .btn-effect {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
        transform: skewX(-15deg) translateX(-100%);
        animation: btn-shine 3s infinite;
    }
    
    @keyframes btn-shine {
        0% { transform: skewX(-15deg) translateX(-100%); }
        100% { transform: skewX(-15deg) translateX(200%); }
    }
    
    /* Stats Cards */
    .stats-card {
        display: flex;
        align-items: center;
        padding: 20px;
        height: 100%;
        position: relative;
        overflow: hidden;
    }
    
    .stats-card::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 5px;
        height: 100%;
        background: linear-gradient(to bottom, var(--primary-color), transparent);
    }
    
    .stats-icon {
        width: 60px;
        height: 60px;
        border-radius: 15px;
        display: flex;
        align-items: center;
        justify-content: center;
        margin-right: 20px;
        font-size: 1.5rem;
        color: white;
        position: relative;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        transition: var(--transition-normal);
    }
    
    .stats-card:hover .stats-icon {
        transform: scale(1.1) rotate(10deg);
    }
    
    .stats-icon::after {
        content: '';
        position: absolute;
        inset: 0;
        border-radius: 15px;
        box-shadow: inset 0 0 15px rgba(255, 255, 255, 0.3);
        opacity: 0;
        transition: var(--transition-normal);
    }
    
    .stats-card:hover .stats-icon::after {
        opacity: 1;
    }
    
    .stats-icon.users {
        background: linear-gradient(135deg, #d35f91, #f5a9cb);
    }
    
    .stats-icon.bookings {
        background: linear-gradient(135deg, #11998e, #38ef7d);
    }
    
    .stats-icon.vendors {
        background: linear-gradient(135deg, #f46b45, #eea849);
    }
    
    .stats-icon.revenue {
        background: linear-gradient(135deg, #8e44ad, #b74177);
    }
    
    .stats-info {
        flex: 1;
    }
    
    .stats-info h3 {
        font-size: 0.9rem;
        margin: 0 0 10px;
        color: var(--text-secondary);
        font-weight: 500;
    }
    
    .stats-value {
        font-size: 1.8rem;
        font-weight: 700;
        margin-bottom: 5px;
        background: linear-gradient(to right, #ffffff, rgba(255, 255, 255, 0.7));
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
    }
    
    .stats-change {
        font-size: 0.8rem;
        font-weight: 600;
        line-height: 1;
    }
    
    .stats-change.positive {
        color: var(--success-color);
    }
    
    .stats-change.negative {
        color: var(--danger-color);
    }
    
    .progress {
        height: 4px;
        background: rgba(255, 255, 255, 0.1);
        border-radius: 2px;
        overflow: hidden;
        margin-top: 10px;
    }
    
    .progress-bar {
        height: 100%;
        background: linear-gradient(to right, var(--primary-color), var(--secondary-color));
        border-radius: 2px;
        position: relative;
    }
    
    /* Quick Actions */
    .quick-actions {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
        gap: 20px;
    }
    
    .action-tile {
        background: rgba(255, 255, 255, 0.03);
        border-radius: 15px;
        padding: 25px;
        text-align: center;
        transition: var(--transition-normal);
        position: relative;
        overflow: hidden;
        border: 1px solid var(--border-color);
        text-decoration: none;
        color: var(--text-primary);
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    
    .action-icon {
        width: 60px;
        height: 60px;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0 auto 15px;
        font-size: 1.5rem;
        color: white;
        position: relative;
        transition: var(--transition-normal);
    }
    
    .users-tile .action-icon {
        background: linear-gradient(135deg, #d35f91, #f5a9cb);
        box-shadow: 0 5px 15px rgba(211, 95, 145, 0.3);
    }
    
    .vendors-tile .action-icon {
        background: linear-gradient(135deg, #f46b45, #eea849);
        box-shadow: 0 5px 15px rgba(244, 107, 69, 0.3);
    }
    
    .events-tile .action-icon {
        background: linear-gradient(135deg, #11998e, #38ef7d);
        box-shadow: 0 5px 15px rgba(17, 153, 142, 0.3);
    }
    
    .settings-tile .action-icon {
        background: linear-gradient(135deg, #8e44ad, #b74177);
        box-shadow: 0 5px 15px rgba(142, 45, 226, 0.3);
    }
    
    .action-tile h4 {
        font-size: 1.1rem;
        margin: 0 0 10px;
        font-weight: 600;
    }
    
    .action-info {
        color: var(--text-secondary);
        font-size: 0.85rem;
    }
    
    .hover-info {
        position: absolute;
        bottom: 15px;
        right: 15px;
        width: 30px;
        height: 30px;
        border-radius: 50%;
        background: rgba(255, 255, 255, 0.1);
        display: flex;
        align-items: center;
        justify-content: center;
        transform: translateY(50px);
        opacity: 0;
        transition: var(--transition-normal);
    }
    
    .action-tile:hover {
        background: rgba(255, 255, 255, 0.05);
        transform: translateY(-5px);
    }
    
    .action-tile:hover .action-icon {
        transform: scale(1.1);
    }
    
    .action-tile:hover .hover-info {
        transform: translateY(0);
        opacity: 1;
    }
    
    .action-tile::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 3px;
        transition: var(--transition-normal);
    }
    
    .users-tile::before {
        background: linear-gradient(to right, #d35f91, #f5a9cb);
    }
    
    .vendors-tile::before {
        background: linear-gradient(to right, #f46b45, #eea849);
    }
    
    .events-tile::before {
        background: linear-gradient(to right, #11998e, #38ef7d);
    }
    
    .settings-tile::before {
        background: linear-gradient(to right, #8e44ad, #b74177);
    }
    
    /* Timeline & Alerts Styling */
    .futuristic-timeline {
        padding: 20px 0;
    }
    
    .timeline-item {
        position: relative;
        padding: 15px 20px 15px 70px;
        transition: var(--transition-normal);
        opacity: 0;
        transform: translateX(-20px);
    }
    
    .timeline-item.animated {
        opacity: 1;
        transform: translateX(0);
    }
    
    .timeline-item:hover {
        background: rgba(255, 255, 255, 0.03);
    }
    
    .timeline-item:not(:last-child)::after {
        content: '';
        position: absolute;
        left: 36px;
        top: 60px;
        bottom: 0;
        width: 2px;
        background: rgba(255, 255, 255, 0.1);
    }
    
    .timeline-marker {
        position: absolute;
        left: 20px;
        top: 15px;
        width: 36px;
        height: 36px;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        color: white;
        font-size: 0.9rem;
        z-index: 2;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        transition: var(--transition-normal);
    }
    
    .timeline-item:hover .timeline-marker {
        transform: scale(1.1);
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
    }
    
    .timeline-marker.vendor {
        background: linear-gradient(135deg, #f46b45, #eea849);
    }
    
    .timeline-marker.event {
        background: linear-gradient(135deg, #11998e, #38ef7d);
    }
    
    .timeline-marker.alert {
        background: linear-gradient(135deg, #fd5d93, #ec250d);
    }
    
    .timeline-marker.system {
        background: linear-gradient(135deg, #4facfe, #00f2fe);
    }
    
    .timeline-marker.feature {
        background: linear-gradient(135deg, #d35f91, #b74177);
    }
    
    .timeline-content {
        padding-right: 70px;
        position: relative;
    }
    
    .timeline-content h6 {
        margin: 0 0 5px;
        font-weight: 600;
        font-size: 0.95rem;
    }
    
    .timestamp {
        color: var(--text-secondary);
        font-size: 0.75rem;
        margin: 0;
        display: flex;
        align-items: center;
    }
    
    .timeline-actions {
        position: absolute;
        right: 0;
        top: 50%;
        transform: translateY(-50%);
        display: flex;
        gap: 5px;
    }
    
    .btn-neo {
        width: 30px;
        height: 30px;
        border-radius: 8px;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 0.8rem;
        background: rgba(255, 255, 255, 0.05);
        border: 1px solid var(--border-color);
        color: var(--text-secondary);
        cursor: pointer;
        transition: var(--transition-normal);
    }
    
    .btn-neo:hover {
        transform: translateY(-3px);
    }
    
    .btn-neo.view:hover {
        background: rgba(211, 95, 145, 0.2);
        color: var(--primary-color);
    }
    
    .btn-neo.approve:hover {
        background: rgba(5, 205, 153, 0.2);
        color: var(--success-color);
    }
    
    .btn-neo.resolve:hover {
        background: rgba(13, 202, 240, 0.2);
        color: var(--info-color);
    }
    
    .btn-link-neo {
        color: var(--secondary-color);
        text-decoration: none;
        font-size: 0.9rem;
        font-weight: 500;
        transition: var(--transition-normal);
        display: inline-flex;
        align-items: center;
    }
    
    .btn-link-neo:hover {
        color: white;
        transform: translateX(5px);
    }
    
    /* Alerts List */
    .alerts-list {
        padding: 10px 0;
    }
    
    .alert-item {
        position: relative;
        padding: 15px 20px;
        border-bottom: 1px solid var(--border-color);
        display: flex;
        align-items: center;
        transition: var(--transition-normal);
    }
    
    .alert-item:hover {
        background: rgba(255, 255, 255, 0.03);
    }
    
    .alert-item:last-child {
        border-bottom: none;
    }
    
    .alert-icon {
        width: 40px;
        height: 40px;
        border-radius: 12px;
        margin-right: 15px;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 1rem;
        color: white;
    }
    
    .alert-icon.danger {
        background: linear-gradient(135deg, #fd5d93, #ec250d);
        box-shadow: 0 5px 15px rgba(253, 93, 147, 0.2);
    }
    
    .alert-icon.warning {
        background: linear-gradient(135deg, #ffd34e, #ff9f43);
        box-shadow: 0 5px 15px rgba(255, 159, 67, 0.2);
    }
    
    .alert-icon.info {
        background: linear-gradient(135deg, #0dcaf0, #0078ff);
        box-shadow: 0 5px 15px rgba(13, 202, 240, 0.2);
    }
    
    .alert-icon.success {
        background: linear-gradient(135deg, #05cd99, #2dce89);
        box-shadow: 0 5px 15px rgba(5, 205, 153, 0.2);
    }
    
    .pulse-alert {
        animation: pulse-alert 2s infinite;
    }
    
    @keyframes pulse-alert {
        0% { box-shadow: 0 0 0 0 rgba(253, 93, 147, 0.5); }
        70% { box-shadow: 0 0 0 10px rgba(253, 93, 147, 0); }
        100% { box-shadow: 0 0 0 0 rgba(253, 93, 147, 0); }
    }
    
    .alert-content {
        flex: 1;
    }
    
    .alert-content h6 {
        margin: 0 0 5px;
        font-weight: 600;
        font-size: 0.95rem;
    }
    
    .alert-content p {
        color: var(--text-secondary);
        margin: 0;
        font-size: 0.8rem;
    }
    
    .alert-action {
        display: flex;
        align-items: center;
    }
    
    .notification-dot {
        width: 8px;
        height: 8px;
        border-radius: 50%;
        background-color: var(--primary-color);
        margin-right: 10px;
        animation: pulse 2s infinite;
    }
    
    .btn-circle {
        width: 30px;
        height: 30px;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 0.8rem;
        background: rgba(255, 255, 255, 0.05);
        border: 1px solid var(--border-color);
        color: var(--text-secondary);
        cursor: pointer;
        transition: var(--transition-normal);
    }
    
    .btn-circle:hover {
        background: rgba(255, 255, 255, 0.1);
        color: var(--text-primary);
        transform: scale(1.1);
    }
    
    /* Chart Styling */
    .chart-container {
        width: 100%;
        height: 250px;
        position: relative;
        overflow: hidden;
    }
    
    .chart-period {
        display: flex;
        align-items: center;
        gap: 5px;
    }
    
    .btn-period {
        background: rgba(255, 255, 255, 0.05);
        border: 1px solid var(--border-color);
        border-radius: 8px;
        padding: 5px 10px;
        font-size: 0.8rem;
        color: var(--text-secondary);
        cursor: pointer;
        transition: var(--transition-normal);
    }
    
    .btn-period:hover {
        background: rgba(255, 255, 255, 0.1);
        color: var(--text-primary);
    }
    
    .btn-period.active {
        background: rgba(211, 95, 145, 0.2);
        color: var(--primary-color);
        border-color: rgba(211, 95, 145, 0.3);
    }
    
    /* Admin Footer */
    .admin-footer {
        background: rgba(28, 12, 30, 0.8);
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
        font-size: 1.2rem;
        font-weight: 700;
        color: var(--primary-color);
        display: flex;
        align-items: center;
        margin-bottom: 10px;
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
        color: var(--text-secondary);
        text-decoration: none;
        transition: var(--transition-normal);
        font-size: 0.9rem;
    }
    
    .footer-link:hover {
        color: var(--primary-color);
        transform: translateY(-2px);
    }
    
    .footer-link i {
        margin-right: 5px;
    }
    
    .footer-copyright {
        color: var(--text-muted);
        font-size: 0.8rem;
        text-align: right;
    }
    
    .footer-copyright i {
        color: var(--danger-color);
    }
    
    /* Animations */
    @keyframes rotate-360 {
        from { transform: rotate(0deg); }
        to { transform: rotate(360deg); }
    }
    
    .rotate-360 {
        animation: rotate-360 0.6s ease-in-out;
    }
    
    /* Responsive Adjustments */
    @media (max-width: 992px) {
        .welcome-banner {
            padding: 20px;
        }
        
        .welcome-content {
            flex-direction: column;
            align-items: flex-start;
        }
        
        .welcome-title {
            margin-bottom: 20px;
        }
        
        .welcome-title h2 {
            font-size: 1.5rem;
        }
        
        .admin-topbar .col-md-2 {
            display: none;
        }
        
        .admin-user-info {
            padding: 8px;
        }
        
        .admin-quick-actions {
            margin-right: 8px;
        }
        
        .admin-time, .admin-details p {
            display: none;
        }
    }
    
    @media (max-width: 768px) {
        .quick-actions {
            grid-template-columns: repeat(2, 1fr);
        }
        
        .admin-breadcrumb .admin-logo {
            font-size: 1rem;
        }
        
        .admin-user-menu {
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
    }
    
    @media (max-width: 576px) {
        .quick-actions {
            grid-template-columns: 1fr;
        }
        
        .stats-card {
            flex-direction: column;
            text-align: center;
        }
        
        .stats-icon {
            margin-right: 0;
            margin-bottom: 15px;
        }
        
        .admin-topbar {
            padding: 10px 0;
        }
        
        .admin-breadcrumb {
            justify-content: center;
        }
        
        .admin-breadcrumb .separator,
        .admin-breadcrumb .current-page {
            display: none;
        }
    }
</style>

<!-- Dashboard JavaScript -->
<script>
    document.addEventListener('DOMContentLoaded', function() {
        // Update real-time date/time
        updateDateTime();
        setInterval(updateDateTime, 1000);
        
        // Initialize animations for elements
        initAnimations();
        
        // Initialize counters for statistics
        initCounters();
        
        // Setup chart
        initCharts();
        
        // Setup interactive form elements
        initFormElements();
        
        // Set current admin name as data attribute for animation
        const welcomeHeader = document.querySelector('.animate-text');
        if (welcomeHeader) {
            welcomeHeader.setAttribute('data-text', welcomeHeader.textContent);
        }
    });
    
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
    
    function initAnimations() {
        // Animate timeline items
        const timelineItems = document.querySelectorAll('.timeline-item');
        timelineItems.forEach((item, index) => {
            setTimeout(() => {
                item.classList.add('animated');
            }, 100 * index);
        });
        
        // Refresh button rotation animation
        const refreshBtn = document.getElementById('refreshTimeline');
        if (refreshBtn) {
            refreshBtn.addEventListener('click', function() {
                this.classList.add('rotate-360');
                setTimeout(() => {
                    this.classList.remove('rotate-360');
                    animateTimelineItems(true);
                }, 600);
            });
        }
        
        // Mark all read button effect
        const markAllReadBtn = document.getElementById('markAllRead');
        if (markAllReadBtn) {
            markAllReadBtn.addEventListener('click', function() {
                const unreadItems = document.querySelectorAll('.alert-item.unread');
                unreadItems.forEach(item => {
                    item.classList.remove('unread');
                    const dot = item.querySelector('.notification-dot');
                    if (dot) {
                        dot.style.opacity = '0';
                        setTimeout(() => dot.remove(), 300);
                    }
                });
            });
        }
        
        // Form clear button
        const clearFormBtn = document.getElementById('clearForm');
        if (clearFormBtn) {
            clearFormBtn.addEventListener('click', function() {
                document.getElementById('quickMessageForm').reset();
                // Add shake animation to indicate clearing
                const form = document.getElementById('quickMessageForm');
                form.classList.add('shake');
                setTimeout(() => form.classList.remove('shake'), 500);
            });
        }
        
        // Quick message form submission animation
        const quickMessageForm = document.getElementById('quickMessageForm');
        if (quickMessageForm) {
            quickMessageForm.addEventListener('submit', function(e) {
                e.preventDefault();
                
                // Get form values
                const recipient = document.getElementById('recipientName').value;
                const msgType = document.getElementById('messageType').value;
                const content = document.getElementById('messageContent').value;
                
                // Validate form
                if (!recipient || !msgType || !content) {
                    // Show error animation for empty fields
                    quickMessageForm.classList.add('invalid-shake');
                    setTimeout(() => quickMessageForm.classList.remove('invalid-shake'), 500);
                    return;
                }
                
                // Show success animation
                const submitBtn = quickMessageForm.querySelector('button[type="submit"]');
                submitBtn.innerHTML = '<i class="fas fa-check me-2"></i> Message Sent';
                submitBtn.classList.add('success');
                
                // Reset form after animation
                setTimeout(() => {
                    quickMessageForm.reset();
                    submitBtn.innerHTML = '<i class="fas fa-paper-plane me-2"></i> Send Message<span class="btn-effect"></span>';
                    submitBtn.classList.remove('success');
                }, 2000);
            });
        }
    }
    
    function animateTimelineItems(refresh = false) {
        const timelineItems = document.querySelectorAll('.timeline-item');
        
        if (refresh) {
            timelineItems.forEach(item => {
                item.classList.remove('animated');
            });
        }
        
        timelineItems.forEach((item, index) => {
            setTimeout(() => {
                item.classList.add('animated');
            }, 100 * index + (refresh ? 300 : 0));
        });
    }
    
    function initCounters() {
        const counters = document.querySelectorAll('.stats-value');
        
        counters.forEach(counter => {
            const target = parseInt(counter.dataset.counter);
            const prefix = counter.dataset.prefix || '';
            const duration = 1500; // Animation duration in milliseconds
            const frameRate = 60; // Frames per second
            const increment = target / (duration / 1000 * frameRate);
            
            let current = 0;
            const timer = setInterval(() => {
                current += increment;
                
                if (current >= target) {
                    counter.textContent = prefix + target.toLocaleString();
                    clearInterval(timer);
                } else {
                    counter.textContent = prefix + Math.floor(current).toLocaleString();
                }
            }, 1000 / frameRate);
        });
    }
    
    function initCharts() {
        const ctx = document.getElementById('performanceChart');
        if (!ctx) return;
        
        // Sample data for demonstration
        const data = {
            labels: ['00:00', '04:00', '08:00', '12:00', '16:00', '20:00'],
            datasets: [
                {
                    label: 'Users',
                    data: [15, 28, 45, 75, 85, 60],
                    borderColor: '#d35f91',
                    backgroundColor: 'rgba(211, 95, 145, 0.05)',
                    fill: true,
                    tension: 0.4,
                    pointRadius: 4,
                    pointBackgroundColor: '#d35f91'
                },
                {
                    label: 'Bookings',
                    data: [5, 12, 25, 30, 40, 35],
                    borderColor: '#05cd99',
                    backgroundColor: 'rgba(5, 205, 153, 0.05)',
                    fill: true,
                    tension: 0.4,
                    pointRadius: 4,
                    pointBackgroundColor: '#05cd99'
                },
                {
                    label: 'Revenue ($)',
                    data: [200, 850, 1200, 3500, 4800, 5200],
                    borderColor: '#ff9f43',
                    backgroundColor: 'rgba(255, 159, 67, 0.05)',
                    fill: true,
                    tension: 0.4,
                    pointRadius: 4,
                    pointBackgroundColor: '#ff9f43',
                    yAxisID: 'y1'
                }
            ]
        };
        
        // Chart configuration
        const config = {
            type: 'line',
            data: data,
            options: {
                responsive: true,
                maintainAspectRatio: false,
                scales: {
                    x: {
                        grid: {
                            color: 'rgba(255, 255, 255, 0.05)',
                            drawBorder: false
                        },
                        ticks: {
                            color: 'rgba(255, 255, 255, 0.7)'
                        }
                    },
                    y: {
                        grid: {
                            color: 'rgba(255, 255, 255, 0.05)',
                            drawBorder: false
                        },
                        ticks: {
                            color: 'rgba(255, 255, 255, 0.7)'
                        },
                        beginAtZero: true
                    },
                    y1: {
                        position: 'right',
                        grid: {
                            color: 'rgba(255, 255, 255, 0)',
                            drawBorder: false
                        },
                        ticks: {
                            color: 'rgba(255, 255, 255, 0.7)'
                        },
                        beginAtZero: true
                    }
                },
                plugins: {
                    legend: {
                        labels: {
                            color: 'rgba(255, 255, 255, 0.7)',
                            boxWidth: 12,
                            usePointStyle: true,
                            pointStyle: 'circle'
                        },
                        position: 'top'
                    },
                    tooltip: {
                        mode: 'index',
                        intersect: false,
                        backgroundColor: 'rgba(50, 20, 40, 0.9)',
                        titleColor: '#ffffff',
                        bodyColor: 'rgba(255, 255, 255, 0.8)',
                        borderColor: 'rgba(255, 255, 255, 0.1)',
                        borderWidth: 1,
                        padding: 10,
                        displayColors: true,
                        usePointStyle: true,
                        titleFont: {
                            size: 13,
                            weight: 'bold'
                        },
                        bodyFont: {
                            size: 12
                        },
                        callbacks: {
                            title: function(tooltipItems) {
                                return 'Time: ' + tooltipItems[0].label;
                            },
                            label: function(context) {
                                let label = context.dataset.label || '';
                                if (label) {
                                    label += ': ';
                                }
                                if (context.datasetIndex === 2) {
                                    label += '$' + context.parsed.y.toLocaleString();
                                } else {
                                    label += context.parsed.y;
                                }
                                return label;
                            }
                        }
                    }
                },
                interaction: {
                    mode: 'nearest',
                    axis: 'x',
                    intersect: false
                },
                animation: {
                    duration: 1000,
                    easing: 'easeOutQuart'
                }
            }
        };
        
        // Create chart
        new Chart(ctx, config);
        
        // Setup chart period buttons
        const periodButtons = document.querySelectorAll('.btn-period');
        periodButtons.forEach(btn => {
            btn.addEventListener('click', function() {
                periodButtons.forEach(b => b.classList.remove('active'));
                this.classList.add('active');
                
                // In a real app, this would fetch new data based on the selected period
                // For demo, we'll just simulate a loading state
                ctx.style.opacity = 0.5;
                setTimeout(() => {
                    ctx.style.opacity = 1;
                }, 500);
            });
        });
    }
    
    function initFormElements() {
        // Add animation to form inputs
        const formInputs = document.querySelectorAll('.neo-input input, .neo-textarea textarea, .neo-select select');
        
        formInputs.forEach(input => {
            input.addEventListener('focus', function() {
                this.parentNode.classList.add('input-focus');
            });
            
            input.addEventListener('blur', function() {
                this.parentNode.classList.remove('input-focus');
            });
        });
        
        // Real-time form validation
        const nameInput = document.getElementById('recipientName');
        if (nameInput) {
            nameInput.addEventListener('input', function() {
                validateField(this, this.value.length > 0);
            });
        }
        
        const messageContent = document.getElementById('messageContent');
        if (messageContent) {
            messageContent.addEventListener('input', function() {
                validateField(this, this.value.length > 10);
            });
        }
    }
    
    function validateField(field, isValid) {
        if (isValid) {
            field.parentNode.classList.remove('invalid');
            field.parentNode.classList.add('valid');
        } else {
            field.parentNode.classList.remove('valid');
            if (field.value.length > 0) {
                field.parentNode.classList.add('invalid');
            } else {
                field.parentNode.classList.remove('invalid');
            }
        }
    }
</script>

<!-- Bootstrap JS Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<!-- AOS - Animate On Scroll -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
<script>
    // Initialize AOS
    AOS.init({
        duration: 800,
        easing: 'ease-in-out',
        once: true,
        mirror: false
    });
</script>
</body>
</html>