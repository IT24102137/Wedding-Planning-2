<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/components/header.jsp" %>
<% 
    // Set page title
    request.setAttribute("pageTitle", "Admin Dashboard");
    
    // Current timestamp for dashboard updates
    String currentDateTime = "2025-03-15 05:09:56";
    
    // Admin details (in real application, this would come from session/database)
    String adminName = "IT24102137";
    String adminRole = "System Administrator";
    String adminAvatar = "https://ui-avatars.com/api/?name=IT+Admin&background=0D8ABC&color=fff";
    
    // Second admin for account switching demo
    String secondAdminName = "Wedding Admin";
    String secondAdminRole = "Content Manager";
    String secondAdminAvatar = "https://ui-avatars.com/api/?name=Wedding+Admin&background=8A2BE2&color=fff";
%>

<!-- Futuristic Admin Dashboard with glassmorphism -->
<div class="admin-background">
    <!-- Admin Top Bar with Account Info -->
    <div class="admin-topbar">
        <div class="container-fluid">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <div class="admin-breadcrumb">
                        <i class="fas fa-home"></i>
                        <span class="separator">/</span>
                        <span class="current-page">Dashboard</span>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="admin-user-menu dropdown">
                        <div class="admin-user-info" data-bs-toggle="dropdown" aria-expanded="false">
                            <span class="admin-time"><i class="far fa-clock pulse"></i> <%= currentDateTime %></span>
                            <div class="admin-avatar">
                                <img src="<%= adminAvatar %>" alt="Admin">
                                <div class="admin-status online"></div>
                            </div>
                            <div class="admin-details">
                                <h6><%= adminName %></h6>
                                <p><%= adminRole %></p>
                            </div>
                            <i class="fas fa-chevron-down"></i>
                        </div>
                        <ul class="dropdown-menu dropdown-menu-end admin-dropdown">
                            <li class="dropdown-header">Account Options</li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-user-circle"></i> My Profile</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-cog"></i> Settings</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-bell"></i> Notifications</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li class="dropdown-header">Switch Account</li>
                            <li>
                                <a class="dropdown-item admin-account active" href="#">
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
                                <a class="dropdown-item admin-account" href="#">
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
                            <li><a class="dropdown-item text-danger" href="#"><i class="fas fa-sign-out-alt"></i> Log Out</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid py-4">
        <!-- Welcome Header -->
        <div class="row mb-4">
            <div class="col-12">
                <div class="welcome-banner">
                    <div class="welcome-content">
                        <div class="welcome-title">
                            <h2>Welcome back, <%= adminName.split(" ")[0] %></h2>
                            <p>Here's what's happening with your wedding planning platform today</p>
                        </div>
                        <div class="welcome-actions">
                            <button class="btn-holographic"><i class="fas fa-eye"></i> Live View</button>
                            <button class="btn-holographic"><i class="fas fa-cog"></i> Settings</button>
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
        
        <!-- Quick Actions - Enhanced with better animations -->
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
                            <button class="btn-card-action" id="refreshTimeline">
                                <i class="fas fa-sync-alt"></i>
                            </button>
                            <button class="btn-card-action">
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
                            <button class="btn-card-action" id="markAllRead">
                                <i class="fas fa-check-double"></i>
                            </button>
                            <button class="btn-card-action">
                                <i class="fas fa-ellipsis-v"></i>
                            </button>
                        </div>
                    </div>
                    <div class="card-body p-0">
                        <div class="alerts-list">
                            <div class="alert-item unread">
                                <div class="alert-icon danger">
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
        
        <!-- Recent Data and Form Example -->
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
            
            <!-- Admin Form Example with Futuristic Design -->
            <div class="col-md-5 mb-4">
                <div class="neo-card h-100" data-aos="fade-up" data-aos-delay="900">
                    <div class="card-header">
                        <h5 class="mb-0"><i class="fas fa-envelope-open-text me-2"></i> Quick Message</h5>
                        <div class="card-actions">
                            <button class="btn-card-action" id="clearForm">
                                <i class="fas fa-eraser"></i>
                            </button>
                            <button class="btn-card-action">
                                <i class="fas fa-ellipsis-v"></i>
                            </button>
                        </div>
                    </div>
                    <div class="card-body">
                        <form id="quickMessageForm">
                            <div class="form-group">
                                <div class="neo-input">
                                    <i class="fas fa-user input-icon"></i>
                                    <input type="text" id="recipientName" placeholder="Recipient Name">
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <div class="neo-select">
                                    <i class="fas fa-tag input-icon"></i>
                                    <select id="messageType">
                                        <option value="" disabled selected>Select Type</option>
                                        <option value="1">Announcement</option>
                                        <option value="2">Warning</option>
                                        <option value="3">Update</option>
                                    </select>
                                    <i class="fas fa-chevron-down select-arrow"></i>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <div class="neo-textarea">
                                    <i class="fas fa-comment input-icon"></i>
                                    <textarea id="messageContent" placeholder="Your message"></textarea>
                                </div>
                            </div>
                            
                            <button type="submit" class="btn-neo-primary w-100">
                                <i class="fas fa-paper-plane me-2"></i> Send Message
                                <div class="btn-effect"></div>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    /* Futuristic Admin Dashboard Theme */
    :root {
        --admin-primary: #4e54c8;
        --admin-secondary: #8f94fb;
        --admin-tertiary: #7367f0;
        --admin-accent: #43cbff;
        --admin-success: #00f2c3;
        --admin-warning: #f5a623;
        --admin-danger: #fd5d93;
        --admin-info: #1d8cf8;
        
        --admin-bg: #111c44;
        --admin-card: rgba(23, 33, 78, 0.95);
        --admin-glass: rgba(255, 255, 255, 0.1);
        --admin-border: rgba(255, 255, 255, 0.08);
        
        --admin-text-primary: #ffffff;
        --admin-text-secondary: rgba(255, 255, 255, 0.7);
        --admin-text-muted: rgba(255, 255, 255, 0.5);
        
        --admin-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
        --admin-shadow-sm: 0 5px 15px rgba(0, 0, 0, 0.15);
        --admin-glow: 0 0 20px rgba(78, 84, 200, 0.4);
        
        --admin-transition-normal: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
        --admin-transition-slow: all 0.5s cubic-bezier(0.25, 0.8, 0.25, 1);
    }
    
    /* Base Styles */
    body {
        color: var(--admin-text-primary);
        background-color: var(--admin-bg);
    }
    
    /* Background with futuristic pattern */
    .admin-background {
        position: relative;
        min-height: 100vh;
        background-image: url('https://images.unsplash.com/photo-1541185934-01b600ea069c?q=80&w=2942&auto=format&fit=crop');
        background-size: cover;
        background-position: center;
        background-attachment: fixed;
        background-blend-mode: overlay;
        background-color: rgba(17, 28, 68, 0.9);
    }
    
    .admin-background::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: linear-gradient(135deg, rgba(17, 28, 68, 0.95), rgba(17, 28, 68, 0.7));
        z-index: 0;
    }
    
    .admin-background::after {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiPgo8ZGVmcz4KPHBhdHRlcm4gaWQ9InBhdHRlcm4iIHdpZHRoPSI0MCIgaGVpZ2h0PSI0MCIgdmlld0JveD0iMCAwIDQwLDQwIiBwYXR0ZXJuVW5pdHM9InVzZXJTcGFjZU9uVXNlIiBwYXR0ZXJuVHJhbnNmb3JtPSJyb3RhdGUoNDUpIj4KPHJlY3QgaWQ9InBhdHRlcm4tYmFja2dyb3VuZCIgd2lkdGg9IjQwMCUiIGhlaWdodD0iNDAwJSIgZmlsbD0idHJhbnNwYXJlbnQiPjwvcmVjdD4KPGNpcmNsZSBmaWxsPSJyZ2JhKDI1NSwyNTUsMjU1LDAuMDIpIiBjeD0iMjAiIGN5PSIyMCIgcj0iMSI+PC9jaXJjbGU+CjxjaXJjbGUgZmlsbD0icmdiYSgyNTUsMjU1LDI1NSwwLjAyKSIgY3g9IjAiIGN5PSIwIiByPSIxIj48L2NpcmNsZT4KPC9wYXR0ZXJuPgo8L2RlZnM+CjxyZWN0IGZpbGw9InVybCgjcGF0dGVybikiIGhlaWdodD0iMTAwJSIgd2lkdGg9IjEwMCUiPjwvcmVjdD4KPC9zdmc+');
        z-index: 0;
        opacity: 0.8;
    }
    
    .container-fluid {
        position: relative;
        z-index: 1;
    }
    
    /* Admin Topbar with user info */
    .admin-topbar {
        background: rgba(23, 33, 78, 0.8);
        backdrop-filter: blur(10px);
        -webkit-backdrop-filter: blur(10px);
        padding: 15px 0;
        border-bottom: 1px solid var(--admin-border);
        position: sticky;
        top: 0;
        z-index: 100;
        box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
    }
    
    .admin-breadcrumb {
        display: flex;
        align-items: center;
        color: var(--admin-text-secondary);
        font-size: 0.9rem;
    }
    
    .admin-breadcrumb .separator {
        margin: 0 8px;
        color: var(--admin-text-muted);
    }
    
    .admin-breadcrumb .current-page {
        color: var(--admin-text-primary);
        font-weight: 500;
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
        transition: var(--admin-transition-normal);
    }
    
    .admin-user-info:hover {
        background: rgba(255, 255, 255, 0.1);
    }
    
    .admin-time {
        margin-right: 15px;
        font-size: 0.85rem;
        color: var(--admin-text-secondary);
        display: flex;
        align-items: center;
    }
    
    .admin-time i {
        margin-right: 5px;
    }
    
    .pulse {
        animation: pulse-animation 2s infinite;
    }
    
    @keyframes pulse-animation {
        0% { opacity: 0.7; }
        50% { opacity: 1; }
        100% { opacity: 0.7; }
    }
    
    .admin-avatar {
        width: 36px;
        height: 36px;
        border-radius: 50%;
        overflow: hidden;
        position: relative;
        margin-right: 12px;
        border: 2px solid rgba(255, 255, 255, 0.2);
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
        border: 2px solid var(--admin-card);
    }
    
    .admin-status.online {
        background-color: var(--admin-success);
    }
    
    .admin-status.away {
        background-color: var(--admin-warning);
    }
    
    .admin-status.offline {
        background-color: var(--admin-danger);
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
        color: var(--admin-text-secondary);
    }
    
    .admin-dropdown {
        background: var(--admin-card);
        border: 1px solid var(--admin-border);
        border-radius: 12px;
        box-shadow: var(--admin-shadow);
        backdrop-filter: blur(10px);
        -webkit-backdrop-filter: blur(10px);
        padding: 10px;
        min-width: 240px;
    }
    
    .dropdown-header {
        color: var(--admin-text-secondary);
        font-size: 0.8rem;
        padding: 8px 15px;
    }
    
    .dropdown-item {
        color: var(--admin-text-primary);
        border-radius: 8px;
        padding: 10px 15px;
        transition: var(--admin-transition-normal);
        display: flex;
        align-items: center;
    }
    
    .dropdown-item i {
        margin-right: 8px;
        font-size: 0.9rem;
        width: 20px;
        text-align: center;
    }
    
    .dropdown-item:hover, .dropdown-item:focus {
        background: rgba(255, 255, 255, 0.05);
        color: var(--admin-text-primary);
    }
    
    .admin-account {
        display: flex;
        align-items: center;
        padding: 10px 15px;
    }
    
    .admin-account.active {
        background: rgba(78, 84, 200, 0.2);
    }
    
    .admin-mini-avatar {
        width: 30px;
        height: 30px;
        border-radius: 50%;
        overflow: hidden;
        position: relative;
        margin-right: 10px;
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
    
    .admin-mini-details h6 {
        margin: 0;
        font-size: 0.85rem;
    }
    
    .admin-mini-details p {
        margin: 0;
        font-size: 0.7rem;
        color: var(--admin-text-secondary);
    }
    
    /* Welcome Banner */
    .welcome-banner {
        position: relative;
        background: linear-gradient(135deg, #4e54c8, #8f94fb);
        border-radius: 20px;
        overflow: hidden;
        padding: 30px;
        margin-bottom: 20px;
        box-shadow: var(--admin-shadow);
        border: 1px solid rgba(255, 255, 255, 0.1);
    }
    
    .welcome-content {
        position: relative;
        z-index: 2;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    
    .welcome-title h2 {
        margin: 0 0 10px 0;
        font-weight: 700;
        font-size: 1.8rem;
        background: linear-gradient(to right, #ffffff, #e2e2f4);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
    }
    
    .welcome-title p {
        margin: 0;
        color: rgba(255, 255, 255, 0.8);
    }
    
    .welcome-actions {
        display: flex;
        gap: 10px;
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
        background: linear-gradient(to right, var(--admin-accent), var(--admin-tertiary));
        animation: float 15s ease-in-out infinite;
    }
    
    .orb-2 {
        width: 200px;
        height: 200px;
        bottom: -100px;
        right: 30%;
        background: linear-gradient(to right, var(--admin-info), var(--admin-success));
        animation: float 12s ease-in-out infinite reverse;
    }
    
    .orb-3 {
        width: 150px;
        height: 150px;
        top: 30%;
        left: 5%;
        background: linear-gradient(to right, var(--admin-warning), var(--admin-danger));
        animation: float 10s ease-in-out infinite;
    }
    
    @keyframes float {
        0%, 100% { transform: translateY(0) scale(1); }
        50% { transform: translateY(-20px) scale(1.05); }
    }
    
    /* Neo Cards */
    .neo-card {
        background: var(--admin-card);
        border-radius: 15px;
        box-shadow: var(--admin-shadow);
        border: 1px solid var(--admin-border);
        backdrop-filter: blur(10px);
        -webkit-backdrop-filter: blur(10px);
        transition: var(--admin-transition-normal);
        overflow: hidden;
    }
    
    .neo-card:hover {
        transform: translateY(-5px);
        box-shadow: var(--admin-shadow), var(--admin-glow);
    }
    
    .neo-card .card-header {
        background-color: transparent;
        border-bottom: 1px solid var(--admin-border);
        padding: 20px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    
    .neo-card .card-header h5 {
        margin: 0;
        font-weight: 600;
        color: var(--admin-text-primary);
    }
    
    .neo-card .card-body {
        padding: 20px;
    }
    
    .neo-card .card-footer {
        background-color: transparent;
        border-top: 1px solid var(--admin-border);
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
        background: var(--admin-glass);
        border: none;
        color: var(--admin-text-secondary);
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 0.8rem;
        cursor: pointer;
        transition: var(--admin-transition-normal);
    }
    
    .btn-card-action:hover {
        background: rgba(255, 255, 255, 0.15);
        color: var(--admin-text-primary);
        transform: translateY(-2px);
    }
    
    /* Stats Cards */
    .stats-card {
        display: flex;
        align-items: center;
        padding: 20px;
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
        overflow: hidden;
        transition: var(--admin-transition-normal);
    }
    
    .stats-card:hover .stats-icon {
        transform: scale(1.1) rotate(10deg);
    }
    
    .stats-icon::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: rgba(255, 255, 255, 0.1);
        z-index: 0;
    }
    
    .stats-icon i {
        position: relative;
        z-index: 1;
    }
    
    .stats-icon.users {
        background: linear-gradient(135deg, #6a11cb, #2575fc);
    }
    
    .stats-icon.bookings {
        background: linear-gradient(135deg, #11998e, #38ef7d);
    }
    
    .stats-icon.vendors {
        background: linear-gradient(135deg, #f46b45, #eea849);
    }
    
    .stats-icon.revenue {
        background: linear-gradient(135deg, #8e54e9, #4776e6);
    }
    
    .stats-info {
        flex-grow: 1;
    }
    
    .stats-info h3 {
        font-size: 0.85rem;
        text-transform: uppercase;
        margin-bottom: 0.5rem;
        color: var(--admin-text-secondary);
        letter-spacing: 1px;
    }
    
    .stats-value {
        font-size: 1.75rem;
        font-weight: 700;
        line-height: 1;
        margin-bottom: 0.75rem;
        color: var(--admin-text-primary);
    }
    
    .stats-change {
        font-size: 0.8rem;
        font-weight: 600;
    }
    
    .stats-change.positive {
        color: var(--admin-success);
    }
    
    .stats-change.negative {
        color: var(--admin-danger);
    }
    
    .progress {
        height: 6px;
        background-color: rgba(255, 255, 255, 0.1);
        border-radius: 6px;
        overflow: hidden;
        margin-top: 0.5rem;
    }
    
    .stats-card .progress-bar {
        border-radius: 6px;
    }
    
    .users .progress-bar {
        background: linear-gradient(to right, #6a11cb, #2575fc);
    }
    
    .bookings .progress-bar {
        background: linear-gradient(to right, #11998e, #38ef7d);
    }
    
    .vendors .progress-bar {
        background: linear-gradient(to right, #f46b45, #eea849);
    }
    
    .revenue .progress-bar {
        background: linear-gradient(to right, #8e54e9, #4776e6);
    }
    
    /* Quick Actions with better animations */
    .quick-actions {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
        gap: 20px;
    }
    
    .action-tile {
        background: rgba(255, 255, 255, 0.05);
        border-radius: 15px;
        padding: 25px 20px;
        text-align: center;
        position: relative;
        overflow: hidden;
        transition: var(--admin-transition-normal);
        color: var(--admin-text-primary);
        text-decoration: none;
        border: 1px solid var(--admin-border);
        display: flex;
        flex-direction: column;
        align-items: center;
        height: 100%;
    }
    
    .action-tile:hover {
        transform: translateY(-8px);
        background: rgba(255, 255, 255, 0.1);
        color: var(--admin-text-primary);
        text-decoration: none;
    }
    
    .action-tile::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: radial-gradient(circle at center, rgba(255, 255, 255, 0.1), transparent 70%);
        opacity: 0;
        transition: var(--admin-transition-normal);
    }
    
    .action-tile:hover::before {
        opacity: 1;
    }
    
    .action-icon {
        width: 70px;
        height: 70px;
        border-radius: 20px;
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0 auto 15px;
        font-size: 1.8rem;
        position: relative;
        color: white;
        transition: var(--admin-transition-slow);
        overflow: hidden;
    }
    
    .action-tile:hover .action-icon {
        transform: scale(1.1) rotate(-10deg);
    }
    
    .action-tile.users-tile:hover .action-icon {
        box-shadow: 0 0 30px rgba(106, 17, 203, 0.5);
    }
    
    .action-tile.vendors-tile:hover .action-icon {
        box-shadow: 0 0 30px rgba(244, 107, 69, 0.5);
    }
    
    .action-tile.events-tile:hover .action-icon {
        box-shadow: 0 0 30px rgba(17, 153, 142, 0.5);
    }
    
    .action-tile.settings-tile:hover .action-icon {
        box-shadow: 0 0 30px rgba(142, 84, 233, 0.5);
    }
    
    .action-icon::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(255, 255, 255, 0.1);
        z-index: 0;
    }
    
    .action-icon::after {
        content: '';
        position: absolute;
        width: 100%;
        height: 100%;
        background: linear-gradient(45deg, transparent 0%, rgba(255, 255, 255, 0.15) 50%, transparent 100%);
        top: 0;
        left: -100%;
        transform: rotate(25deg);
        transition: var(--admin-transition-normal);
    }
    
    .action-tile:hover .action-icon::after {
        left: 100%;
        transition-duration: 0.7s;
    }
    
    .action-icon i {
        position: relative;
        z-index: 1;
    }
    
    .action-icon.users {
        background: linear-gradient(135deg, #6a11cb, #2575fc);
    }
    
    .action-icon.vendors {
        background: linear-gradient(135deg, #f46b45, #eea849);
    }
    
    .action-icon.events {
        background: linear-gradient(135deg, #11998e, #38ef7d);
    }
    
    .action-icon.settings {
        background: linear-gradient(135deg, #8e54e9, #4776e6);
    }
    
    .action-tile h4 {
        margin: 0 0 10px 0;
        font-weight: 600;
        font-size: 1.1rem;
        transition: var(--admin-transition-normal);
    }
    
    .action-tile:hover h4 {
        transform: translateY(-5px);
    }
    
    .action-info {
        margin-top: auto;
        font-size: 0.85rem;
        color: var(--admin-text-secondary);
        transition: var(--admin-transition-normal);
    }
    
    .hover-info {
        position: absolute;
        bottom: 20px;
        right: 20px;
        opacity: 0;
        transform: translateX(20px);
        transition: var(--admin-transition-normal);
        color: var(--admin-text-secondary);
    }
    
    .action-tile:hover .hover-info {
        opacity: 1;
        transform: translateX(0);
    }
    
    .action-tile:hover .action-info {
        opacity: 0;
        transform: translateY(10px);
    }
    
    /* Futuristic Timeline */
    .futuristic-timeline {
        position: relative;
        padding: 10px 0;
    }
    
    .futuristic-timeline::before {
        content: '';
        position: absolute;
        left: 29px;
        top: 0;
        height: 100%;
        width: 2px;
        background: linear-gradient(to bottom, 
            rgba(255,255,255,0.1), 
            rgba(255,255,255,0.15), 
            rgba(255,255,255,0.1));
        z-index: 0;
    }
    
    .timeline-item {
        position: relative;
        padding: 20px 20px 20px 70px;
        border-bottom: 1px solid var(--admin-border);
        transition: var(--admin-transition-normal);
    }
    
    .timeline-item:hover {
        background: rgba(255, 255, 255, 0.05);
    }
    
    .timeline-marker {
        position: absolute;
        left: 20px;
        top: 20px;
        width: 40px;
        height: 40px;
        border-radius: 12px;
        display: flex;
        align-items: center;
        justify-content: center;
        color: white;
        z-index: 1;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        transition: var(--admin-transition-normal);
    }
    
    .timeline-item:hover .timeline-marker {
        transform: scale(1.1) rotate(10deg);
    }
    
    .timeline-marker.vendor {
        background: linear-gradient(135deg, #1d8cf8, #3358f4);
    }
    
    .timeline-marker.event {
        background: linear-gradient(135deg, #11998e, #38ef7d);
    }
    
    .timeline-marker.alert {
        background: linear-gradient(135deg, #f5a623, #f46b45);
    }
    
    .timeline-marker.system {
        background: linear-gradient(135deg, #8f94fb, #4e54c8);
    }
    
    .timeline-marker.feature {
        background: linear-gradient(135deg, #8e54e9, #4776e6);
    }
    
    .timeline-content h6 {
        font-weight: 600;
        margin-bottom: 5px;
        color: var(--admin-text-primary);
    }
    
    .timeline-content .timestamp {
        color: var(--admin-text-secondary);
        font-size: 0.8rem;
        margin-bottom: 10px;
    }
    
    .timeline-actions {
        display: flex;
        gap: 8px;
    }
    
    .btn-neo {
        width: 32px;
        height: 32px;
        border-radius: 10px;
        border: 1px solid var(--admin-border);
        background: rgba(255, 255, 255, 0.05);
        display: flex;
        align-items: center;
        justify-content: center;
        color: var(--admin-text-secondary);
        font-size: 0.85rem;
        transition: var(--admin-transition-normal);
        cursor: pointer;
    }
    
    .btn-neo:hover {
        transform: translateY(-3px);
        color: var(--admin-text-primary);
    }
    
    .btn-neo.view:hover {
        background-color: var(--admin-info);
        color: white;
        border-color: var(--admin-info);
    }
    
    .btn-neo.approve:hover, .btn-neo.resolve:hover {
        background-color: var(--admin-success);
        color: white;
        border-color: var(--admin-success);
    }
    
    /* Alerts list */
    .alerts-list {
        display: flex;
        flex-direction: column;
    }
    
    .alert-item {
        display: flex;
        align-items: center;
        padding: 20px;
        border-bottom: 1px solid var(--admin-border);
        transition: var(--admin-transition-normal);
        position: relative;
    }
    
    .alert-item.unread::before {
        content: '';
        position: absolute;
        left: 0;
        top: 0;
        bottom: 0;
        width: 3px;
        background: var(--admin-primary);
    }
    
    .alert-item:hover {
        background: rgba(255, 255, 255, 0.05);
    }
    
    .alert-icon {
        width: 46px;
        height: 46px;
        border-radius: 14px;
        display: flex;
        align-items: center;
        justify-content: center;
        margin-right: 15px;
        color: white;
        flex-shrink: 0;
        transition: var(--admin-transition-normal);
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
    }
    
    .alert-item:hover .alert-icon {
        transform: scale(1.1) rotate(5deg);
    }
    
    .alert-icon.danger {
        background: linear-gradient(135deg, #fd5d93, #ec250d);
    }
    
    .alert-icon.warning {
        background: linear-gradient(135deg, #f5a623, #f46b45);
    }
    
    .alert-icon.info {
        background: linear-gradient(135deg, #1d8cf8, #3358f4);
    }
    
    .alert-icon.success {
        background: linear-gradient(135deg, #11998e, #38ef7d);
    }
    
    .alert-content {
        flex-grow: 1;
    }
    
    .alert-content h6 {
        font-weight: 600;
        margin-bottom: 5px;
        color: var(--admin-text-primary);
    }
    
    .alert-content p {
        color: var(--admin-text-secondary);
        font-size: 0.85rem;
        margin: 0;
    }
    
    .alert-action {
        margin-left: 10px;
        display: flex;
        align-items: center;
    }
    
    .notification-dot {
        width: 8px;
        height: 8px;
        border-radius: 50%;
        background-color: var(--admin-primary);
        margin-right: 10px;
    }
    
    .btn-circle {
        width: 32px;
        height: 32px;
        border-radius: 50%;
        background: rgba(255, 255, 255, 0.05);
        border: 1px solid var(--admin-border);
        display: flex;
        align-items: center;
        justify-content: center;
        color: var(--admin-text-secondary);
        font-size: 0.8rem;
        transition: var(--admin-transition-normal);
        cursor: pointer;
    }
    
    .alert-item:hover .btn-circle {
        background-color: var(--admin-primary);
        color: white;
        border-color: var(--admin-primary);
        transform: translateX(5px);
    }
    
    /* Neo Form Elements */
    .form-group {
        margin-bottom: 20px;
    }
    
    .neo-input, .neo-select, .neo-textarea {
        position: relative;
        border-radius: 12px;
        border: 1px solid var(--admin-border);
        background: rgba(255, 255, 255, 0.05);
        transition: var(--admin-transition-normal);
        overflow: hidden;
    }
    
    .neo-input:focus-within, .neo-select:focus-within, .neo-textarea:focus-within {
        border-color: var(--admin-primary);
        box-shadow: 0 0 0 3px rgba(78, 84, 200, 0.2);
        transform: translateY(-3px);
    }
    
    .input-icon {
        position: absolute;
        left: 15px;
        top: 50%;
        transform: translateY(-50%);
        color: var(--admin-text-secondary);
        font-size: 1rem;
        transition: var(--admin-transition-normal);
    }
    
    .neo-input:focus-within .input-icon, .neo-select:focus-within .input-icon, .neo-textarea:focus-within .input-icon {
        color: var(--admin-primary);
    }
    
    .neo-textarea .input-icon {
        top: 20px;
        transform: none;
    }
    
    .neo-input input, .neo-select select, .neo-textarea textarea {
        width: 100%;
        border: none;
        background: transparent;
        padding: 15px 15px 15px 45px;
        color: var(--admin-text-primary);
        font-size: 1rem;
        outline: none;
    }
    
    .neo-textarea textarea {
        height: 100px;
        resize: none;
    }
    
    .select-arrow {
        position: absolute;
        right: 15px;
        top: 50%;
        transform: translateY(-50%);
        color: var(--admin-text-secondary);
        font-size: 0.8rem;
        pointer-events: none;
    }
    
    ::placeholder {
        color: var(--admin-text-secondary);
        opacity: 0.7;
    }
    
    /* Holographic Buttons */
    .btn-holographic {
        background: rgba(255, 255, 255, 0.1);
        border: none;
        border-radius: 50px;
        padding: 10px 20px;
        color: var(--admin-text-primary);
        font-weight: 500;
        transition: var(--admin-transition-normal);
        position: relative;
        overflow: hidden;
        backdrop-filter: blur(5px);
        -webkit-backdrop-filter: blur(5px);
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        display: flex;
        align-items: center;
    }
    
    .btn-holographic i {
        margin-right: 8px;
    }
    
    .btn-holographic::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: linear-gradient(45deg, transparent, rgba(255, 255, 255, 0.1), transparent);
        transform: translateX(-100%);
        transition: 0.6s;
    }
    
    .btn-holographic:hover {
        background: rgba(255, 255, 255, 0.2);
        transform: translateY(-3px);
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
        color: white;
    }
    
    .btn-holographic:hover::before {
        transform: translateX(100%);
    }
    
    /* Neo Button Primary */
    .btn-neo-primary {
        background: linear-gradient(135deg, var(--admin-primary), var(--admin-tertiary));
        color: white;
        border: none;
        border-radius: 12px;
        padding: 15px 20px;
        font-weight: 500;
        transition: var(--admin-transition-normal);
        position: relative;
        overflow: hidden;
        box-shadow: 0 8px 20px rgba(78, 84, 200, 0.3);
        display: flex;
        align-items: center;
        justify-content: center;
    }
    
    .btn-neo-primary:hover {
        transform: translateY(-5px);
        box-shadow: 0 15px 30px rgba(78, 84, 200, 0.4);
    }
    
    .btn-neo-primary i {
        margin-right: 8px;
        font-size: 1rem;
    }
    
    .btn-effect {
        position: absolute;
        display: block;
        width: 0;
        height: 0;
        border-radius: 50%;
        background: rgba(255, 255, 255, 0.3);
        transform: translate(-50%, -50%);
        transition: width 0.6s, height 0.6s;
    }
    
    .btn-neo-primary:active .btn-effect {
        width: 500px;
        height: 500px;
    }
    
    /* Link Styles */
    .btn-link-neo {
        color: var(--admin-text-secondary);
        text-decoration: none;
        font-weight: 500;
        transition: var(--admin-transition-normal);
        display: inline-flex;
        align-items: center;
        border-radius: 50px;
        padding: 8px 20px;
        background: rgba(255, 255, 255, 0.05);
        border: 1px solid var(--admin-border);
    }
    
    .btn-link-neo:hover {
        color: var(--admin-text-primary);
        background: rgba(255, 255, 255, 0.1);
        text-decoration: none;
    }
    
    .btn-link-neo:hover i {
        transform: translateX(5px);
    }
    
    .btn-link-neo i {
        transition: var(--admin-transition-normal);
        margin-left: 5px;
    }
    
    /* Chart Period buttons */
    .chart-period {
        display: flex;
        gap: 5px;
    }
    
    .btn-period {
        background: rgba(255, 255, 255, 0.05);
        border: 1px solid var(--admin-border);
        color: var(--admin-text-secondary);
        border-radius: 50px;
        padding: 5px 12px;
        font-size: 0.8rem;
        transition: var(--admin-transition-normal);
    }
    
    .btn-period:hover, .btn-period.active {
        background: var(--admin-primary);
        color: white;
        border-color: var(--admin-primary);
    }
    
    /* Responsive adjustments */
    @media (max-width: 992px) {
        .welcome-actions {
            margin-top: 20px;
        }
        
        .welcome-content {
            flex-direction: column;
            align-items: flex-start;
        }
    }
    
    @media (max-width: 768px) {
        .admin-time {
            display: none;
        }
        
        .quick-actions {
            grid-template-columns: 1fr 1fr;
        }
        
        .admin-user-info {
            padding: 8px;
        }
        
        .admin-details {
            display: none;
        }
    }
    
    @media (max-width: 576px) {
        .quick-actions {
            grid-template-columns: 1fr;
        }
        
        .stats-icon {
            width: 50px;
            height: 50px;
            font-size: 1.2rem;
        }
        
        .stats-value {
            font-size: 1.5rem;
        }
    }
</style>

<script>
document.addEventListener('DOMContentLoaded', function() {
    // Set current timestamp
    const currentTimestamp = '2025-03-15 05:16:13';
    
    // Set admin username
    const adminName = 'IT24102137';
    const adminUsername = document.querySelector('.admin-details h6');
    if (adminUsername) {
        adminUsername.textContent = adminName;
    }
    
    // Update welcome heading
    const welcomeHeading = document.querySelector('.welcome-title h2');
    if (welcomeHeading) {
        welcomeHeading.textContent = `Welcome back, ${adminName}`;
    }
    
    // Update header timestamp
    const headerTime = document.querySelector('.admin-time');
    if (headerTime) {
        headerTime.innerHTML = `<i class="far fa-clock pulse"></i> ${currentTimestamp}`;
    }
    
    // Button ripple effect
    const buttons = document.querySelectorAll('.btn-neo-primary');
    buttons.forEach(btn => {
        btn.addEventListener('click', function(e) {
            const x = e.clientX - e.target.getBoundingClientRect().left;
            const y = e.clientY - e.target.getBoundingClientRect().top;
            
            const effect = this.querySelector('.btn-effect');
            effect.style.left = `${x}px`;
            effect.style.top = `${y}px`;
        });
    });
    
    // Animate stats counters
    const counters = document.querySelectorAll('.stats-value');
    const animateCounters = () => {
        counters.forEach(counter => {
            const target = parseInt(counter.getAttribute('data-counter'));
            const prefix = counter.getAttribute('data-prefix') || '';
            const duration = 2000;
            let startTimestamp = null;
            const step = (timestamp) => {
                if (!startTimestamp) startTimestamp = timestamp;
                const progress = Math.min((timestamp - startTimestamp) / duration, 1);
                const value = Math.floor(progress * target);
                counter.textContent = prefix + value.toLocaleString();
                
                if (progress < 1) {
                    window.requestAnimationFrame(step);
                } else {
                    counter.textContent = prefix + target.toLocaleString();
                }
            };
            window.requestAnimationFrame(step);
        });
    };
    
    // Intersection Observer for triggering animations
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                if (entry.target.classList.contains('stats-card')) {
                    animateCounters();
                }
                observer.unobserve(entry.target);
            }
        });
    }, { threshold: 0.3 });
    
    document.querySelectorAll('.stats-card').forEach(card => {
        observer.observe(card);
    });
    
    // Performance Chart
    const ctx = document.getElementById('performanceChart').getContext('2d');
    const gradientFill1 = ctx.createLinearGradient(0, 0, 0, 400);
    gradientFill1.addColorStop(0, 'rgba(78, 84, 200, 0.3)');
    gradientFill1.addColorStop(1, 'rgba(78, 84, 200, 0.02)');
    
    const gradientFill2 = ctx.createLinearGradient(0, 0, 0, 400);
    gradientFill2.addColorStop(0, 'rgba(17, 153, 142, 0.3)');
    gradientFill2.addColorStop(1, 'rgba(17, 153, 142, 0.02)');
    
    Chart.defaults.color = "rgba(255, 255, 255, 0.6)";
    Chart.defaults.borderColor = "rgba(255, 255, 255, 0.05)";
    
    const chart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
            datasets: [{
                label: 'User Growth',
                data: [65, 78, 94, 102, 110, 123, 135, 149, 158, 172, 185, 193],
                borderColor: '#4e54c8',
                backgroundColor: gradientFill1,
                fill: true,
                tension: 0.4,
                pointBackgroundColor: '#4e54c8',
                pointBorderColor: '#17214e',
                pointBorderWidth: 2,
                pointRadius: 5,
                pointHoverRadius: 8
            }, {
                label: 'Bookings',
                data: [30, 38, 45, 55, 60, 76, 83, 89, 98, 103, 110, 118],
                borderColor: '#11998e',
                backgroundColor: gradientFill2,
                fill: true,
                tension: 0.4,
                pointBackgroundColor: '#11998e',
                pointBorderColor: '#17214e',
                pointBorderWidth: 2,
                pointRadius: 5,
                pointHoverRadius: 8
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: {
                legend: {
                    position: 'top',
                    labels: {
                        usePointStyle: true,
                        padding: 20,
                        font: {
                            size: 12,
                            family: "'Poppins', sans-serif"
                        }
                    }
                },
                tooltip: {
                    backgroundColor: 'rgba(23, 33, 78, 0.8)',
                    padding: 15,
                    bodySpacing: 10,
                    bodyFont: {
                        family: "'Poppins', sans-serif",
                        size: 12
                    },
                    titleFont: {
                        family: "'Poppins', sans-serif",
                        size: 14
                    },
                    borderColor: 'rgba(255, 255, 255, 0.1)',
                    borderWidth: 1
                }
            },
            scales: {
                y: {
                    beginAtZero: true,
                    grid: {
                        color: 'rgba(255, 255, 255, 0.05)',
                        drawBorder: false
                    },
                    ticks: {
                        padding: 10,
                        font: {
                            size: 11
                        }
                    }
                },
                x: {
                    grid: {
                        display: false,
                        drawBorder: false
                    },
                    ticks: {
                        padding: 10,
                        font: {
                            size: 11
                        }
                    }
                }
            }
        }
    });
    
    // Chart period buttons
    document.querySelectorAll('.btn-period').forEach(btn => {
        btn.addEventListener('click', function() {
            document.querySelectorAll('.btn-period').forEach(b => b.classList.remove('active'));
            this.classList.add('active');
            
            // In a real application, this would update the chart data
            // For now, we'll just simulate a loading state
            chart.data.datasets[0].data = Array.from({length: 12}, () => Math.floor(Math.random() * 100) + 50);
            chart.data.datasets[1].data = Array.from({length: 12}, () => Math.floor(Math.random() * 70) + 30);
            chart.update();
        });
    });
    
    // Form animations and handling
    const formInputs = document.querySelectorAll('.neo-input input, .neo-select select, .neo-textarea textarea');
    formInputs.forEach(input => {
        input.addEventListener('focus', () => {
            input.parentElement.style.transform = 'translateY(-3px)';
        });
        
        input.addEventListener('blur', () => {
            input.parentElement.style.transform = '';
        });
    });
    
    document.getElementById('quickMessageForm').addEventListener('submit', function(e) {
        e.preventDefault();
        const btn = this.querySelector('button[type="submit"]');
        
        // Simulate sending message
        btn.disabled = true;
        btn.innerHTML = '<i class="fas fa-spinner fa-spin me-2"></i> Sending...';
        
        setTimeout(() => {
            btn.innerHTML = '<i class="fas fa-check me-2"></i> Sent Successfully!';
            
            setTimeout(() => {
                btn.disabled = false;
                btn.innerHTML = '<i class="fas fa-paper-plane me-2"></i> Send Message <div class="btn-effect"></div>';
                
                // Reset form
                this.reset();
            }, 2000);
        }, 1500);
    });
    
    // Refresh timeline button
    document.getElementById('refreshTimeline').addEventListener('click', function() {
        this.classList.add('rotating');
        
        setTimeout(() => {
            this.classList.remove('rotating');
            // In a real app, this would refresh the timeline data
        }, 1000);
    });
    
    // Mark all notifications as read
    document.getElementById('markAllRead').addEventListener('click', function() {
        document.querySelectorAll('.notification-dot').forEach(dot => {
            dot.style.opacity = '0';
        });
        
        document.querySelectorAll('.alert-item.unread').forEach(item => {
            item.classList.remove('unread');
        });
    });
    
    // Clear form button
    document.getElementById('clearForm').addEventListener('click', function() {
        document.getElementById('quickMessageForm').reset();
    });
    
    // Account switching simulation
    document.querySelectorAll('.admin-account').forEach(account => {
        account.addEventListener('click', function(e) {
            e.preventDefault();
            
            document.querySelectorAll('.admin-account').forEach(a => {
                a.classList.remove('active');
            });
            
            this.classList.add('active');
            
            const avatar = this.querySelector('img').src;
            const name = this.querySelector('h6').textContent;
            const role = this.querySelector('p').textContent;
            const status = this.querySelector('.admin-status').classList.contains('online') ? 'online' : 'away';
            
            // Update the main user info
            document.querySelector('.admin-avatar img').src = avatar;
            document.querySelector('.admin-details h6').textContent = name;
            document.querySelector('.admin-details p').textContent = role;
            
            document.querySelector('.admin-avatar .admin-status').className = `admin-status ${status}`;
            
            // Update welcome header
            document.querySelector('.welcome-title h2').textContent = `Welcome back, ${name.split(' ')[0]}`;
        });
    });
});

// Additional animation for the orbs
window.addEventListener('mousemove', function(e) {
    const orbs = document.querySelectorAll('.orb');
    const x = e.clientX / window.innerWidth;
    const y = e.clientY / window.innerHeight;
    
    orbs.forEach((orb, index) => {
        const offsetX = (index + 1) * 10;
        const offsetY = (index + 1) * 10;
        
        orb.style.transform = `translate(${x * offsetX}px, ${y * offsetY}px)`;
    });
});
</script>

<style>
@keyframes rotating {
    from {
        transform: rotate(0deg);
    }
    to {
        transform: rotate(360deg);
    }
}

.rotating {
    animation: rotating 1s linear;
}
</style>

<%@ include file="/WEB-INF/components/footer.jsp" %>