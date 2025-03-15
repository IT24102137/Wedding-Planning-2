<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/components/header.jsp" %>
<% 
    // Set page title
    request.setAttribute("pageTitle", "Wedding Events");
    
    // Set event date for examples
    String weddingDate = "June 15, 2025";
    String currentDate = "2025-03-14 19:41:20";
%>

<!-- Hero Section -->
<div class="container-fluid event-hero py-5 mb-5">
    <div class="container py-5">
        <div class="row">
            <div class="col-md-8 col-lg-6">
                <div class="hero-card slide-in-left">
                    <h1 class="display-4 fw-bold mb-4 cursive-text">Plan Your Perfect Day</h1>
                    <p class="lead mb-4">Create and manage events for your special celebration</p>
                    
                    <div class="d-flex mb-3">
                        <a href="#createEvent" class="btn-primary-action me-2">
                            <span><i class="fas fa-calendar-plus me-2"></i> Create Event</span>
                        </a>
                        <a href="#myEvents" class="btn-outline-action">
                            <span><i class="fas fa-list-alt me-2"></i> View My Events</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Event Timeline -->
<div class="container mb-5" id="timeline">
    <div class="section-title mb-4">
        <h2><i class="fas fa-clock me-2"></i> Wedding Timeline</h2>
    </div>
    
    <div class="row">
        <div class="col-lg-10 mx-auto">
            <div class="timeline-card fade-in-up">
                <!-- Timeline Header with Date -->
                <div class="timeline-header">
                    <h4 class="mb-0">
                        <i class="fas fa-calendar-day me-2"></i> 
                        ${weddingDate}
                    </h4>
                    <p class="text-muted mb-0">Saturday</p>
                </div>
                
                <!-- Timeline Content -->
                <div class="timeline-content">
                    <div class="timeline-wrapper">
                        <!-- Timeline Item 1 -->
                        <div class="timeline-item slide-in-right" style="--delay: 100ms;">
                            <div class="timeline-badge bg-info">
                                <i class="fas fa-glass-cheers"></i>
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <div class="d-flex justify-content-between align-items-center mb-2">
                                        <h5 class="mb-0">Welcome Reception</h5>
                                        <span class="time-badge badge-info">9:00 AM</span>
                                    </div>
                                    <p class="location"><i class="fas fa-map-marker-alt me-2"></i>Silver Bay Resort - Garden Area</p>
                                </div>
                                <div class="timeline-body">
                                    <p>Guests arrive and are welcomed with refreshments. Live music and mingling before the ceremony begins.</p>
                                    <div class="action-buttons">
                                        <button class="btn-action edit">
                                            <i class="fas fa-edit me-1"></i> Edit
                                        </button>
                                        <button class="btn-action delete">
                                            <i class="fas fa-trash-alt me-1"></i> Delete
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Timeline Item 2 -->
                        <div class="timeline-item slide-in-left" style="--delay: 200ms;">
                            <div class="timeline-badge bg-primary">
                                <i class="fas fa-heart"></i>
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <div class="d-flex justify-content-between align-items-center mb-2">
                                        <h5 class="mb-0">Wedding Ceremony</h5>
                                        <span class="time-badge badge-primary">11:00 AM</span>
                                    </div>
                                    <p class="location"><i class="fas fa-map-marker-alt me-2"></i>Silver Bay Resort - Main Hall</p>
                                </div>
                                <div class="timeline-body">
                                    <p>The official wedding ceremony where vows will be exchanged. Formal dress code.</p>
                                    <div class="action-buttons">
                                        <button class="btn-action edit">
                                            <i class="fas fa-edit me-1"></i> Edit
                                        </button>
                                        <button class="btn-action delete">
                                            <i class="fas fa-trash-alt me-1"></i> Delete
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Timeline Item 3 -->
                        <div class="timeline-item slide-in-right" style="--delay: 300ms;">
                            <div class="timeline-badge bg-success">
                                <i class="fas fa-utensils"></i>
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <div class="d-flex justify-content-between align-items-center mb-2">
                                        <h5 class="mb-0">Wedding Lunch</h5>
                                        <span class="time-badge badge-success">1:00 PM</span>
                                    </div>
                                    <p class="location"><i class="fas fa-map-marker-alt me-2"></i>Silver Bay Resort - Dining Hall</p>
                                </div>
                                <div class="timeline-body">
                                    <p>Gourmet three-course meal catered by Elegance Gourmet Catering. Vegetarian options available.</p>
                                    <div class="action-buttons">
                                        <button class="btn-action edit">
                                            <i class="fas fa-edit me-1"></i> Edit
                                        </button>
                                        <button class="btn-action delete">
                                            <i class="fas fa-trash-alt me-1"></i> Delete
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Timeline Item 4 -->
                        <div class="timeline-item slide-in-left" style="--delay: 400ms;">
                            <div class="timeline-badge bg-warning">
                                <i class="fas fa-camera"></i>
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <div class="d-flex justify-content-between align-items-center mb-2">
                                        <h5 class="mb-0">Photo Session</h5>
                                        <span class="time-badge badge-warning">3:00 PM</span>
                                    </div>
                                    <p class="location"><i class="fas fa-map-marker-alt me-2"></i>Silver Bay Resort - Gardens & Lakeside</p>
                                </div>
                                <div class="timeline-body">
                                    <p>Professional photography session with Eternal Moments Photography. Family photos and couple portraits.</p>
                                    <div class="action-buttons">
                                        <button class="btn-action edit">
                                            <i class="fas fa-edit me-1"></i> Edit
                                        </button>
                                        <button class="btn-action delete">
                                            <i class="fas fa-trash-alt me-1"></i> Delete
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Timeline Item 5 -->
                        <div class="timeline-item slide-in-right" style="--delay: 500ms;">
                            <div class="timeline-badge bg-secondary">
                                <i class="fas fa-music"></i>
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <div class="d-flex justify-content-between align-items-center mb-2">
                                        <h5 class="mb-0">Reception & Dance</h5>
                                        <span class="time-badge badge-secondary">6:00 PM</span>
                                    </div>
                                    <p class="location"><i class="fas fa-map-marker-alt me-2"></i>Silver Bay Resort - Grand Ballroom</p>
                                </div>
                                <div class="timeline-body">
                                    <p>Evening celebration with DJ music, dancing, and open bar. Special performances and cake cutting ceremony.</p>
                                    <div class="action-buttons">
                                        <button class="btn-action edit">
                                            <i class="fas fa-edit me-1"></i> Edit
                                        </button>
                                        <button class="btn-action delete">
                                            <i class="fas fa-trash-alt me-1"></i> Delete
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="text-center mt-4">
                        <button class="btn-primary-action" id="createEvent">
                            <span><i class="fas fa-plus me-2"></i> Add New Event</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- My Events Section -->
<div class="container mb-5" id="myEvents">
    <div class="section-title mb-4">
        <h2><i class="fas fa-calendar-check me-2"></i> My Events</h2>
    </div>
    
    <div class="row">
        <!-- Event Card 1 -->
        <div class="col-lg-6 mb-4">
            <div class="event-card fade-in-up" style="--delay: 100ms;">
                <div class="event-card-header primary">
                    <h5 class="mb-0"><i class="fas fa-glass-cheers me-2"></i> Pre-Wedding Dinner</h5>
                    <span class="event-status">4 days before</span>
                </div>
                <div class="event-card-body">
                    <div class="d-flex align-items-center mb-3">
                        <div class="event-date-badge me-3">
                            <div class="month">JUN</div>
                            <div class="day">11</div>
                            <div class="year">2025</div>
                        </div>
                        <div>
                            <h5 class="mb-1">Family Dinner</h5>
                            <p class="text-muted mb-0"><i class="fas fa-clock me-1"></i> 7:00 PM - 10:00 PM</p>
                            <p class="location"><i class="fas fa-map-marker-alt me-2"></i>Riverside Restaurant</p>
                        </div>
                    </div>
                    <p class="event-description">Intimate dinner with close family members before the wedding. Special menu prepared by the chef.</p>
                    <div class="event-stats">
                        <div class="stat-item">
                            <div class="stat-icon"><i class="fas fa-user-friends"></i></div>
                            <div class="stat-label">Attendees</div>
                            <div class="stat-value">25</div>
                        </div>
                        <div class="stat-item">
                            <div class="stat-icon confirmed"><i class="fas fa-check-circle"></i></div>
                            <div class="stat-label">Confirmed</div>
                            <div class="stat-value">20</div>
                        </div>
                        <div class="stat-item">
                            <div class="stat-icon pending"><i class="fas fa-question-circle"></i></div>
                            <div class="stat-label">Pending</div>
                            <div class="stat-value">5</div>
                        </div>
                    </div>
                </div>
                <div class="event-card-footer">
                    <button class="btn-outline-action">
                        <i class="fas fa-edit me-1"></i> Edit
                    </button>
                    <button class="btn-primary-action">
                        <i class="fas fa-paper-plane me-1"></i> Send Reminders
                    </button>
                </div>
            </div>
        </div>
        
        <!-- Event Card 2 -->
        <div class="col-lg-6 mb-4">
            <div class="event-card fade-in-up" style="--delay: 200ms;">
                <div class="event-card-header info">
                    <h5 class="mb-0"><i class="fas fa-spa me-2"></i> Bridal Shower</h5>
                    <span class="event-status">2 weeks before</span>
                </div>
                <div class="event-card-body">
                    <div class="d-flex align-items-center mb-3">
                        <div class="event-date-badge me-3">
                            <div class="month">JUN</div>
                            <div class="day">01</div>
                            <div class="year">2025</div>
                        </div>
                        <div>
                            <h5 class="mb-1">Ladies Celebration</h5>
                            <p class="text-muted mb-0"><i class="fas fa-clock me-1"></i> 2:00 PM - 6:00 PM</p>
                            <p class="location"><i class="fas fa-map-marker-alt me-2"></i>Serene Spa &amp; Resort</p>
                        </div>
                    </div>
                    <p class="event-description">Relaxing spa day and celebration for the bride and her friends. Includes spa treatments, games, and light refreshments.</p>
                    <div class="event-stats">
                        <div class="stat-item">
                            <div class="stat-icon"><i class="fas fa-user-friends"></i></div>
                            <div class="stat-label">Attendees</div>
                            <div class="stat-value">15</div>
                        </div>
                        <div class="stat-item">
                            <div class="stat-icon confirmed"><i class="fas fa-check-circle"></i></div>
                            <div class="stat-label">Confirmed</div>
                            <div class="stat-value">12</div>
                        </div>
                        <div class="stat-item">
                            <div class="stat-icon pending"><i class="fas fa-question-circle"></i></div>
                            <div class="stat-label">Pending</div>
                            <div class="stat-value">3</div>
                        </div>
                    </div>
                </div>
                <div class="event-card-footer">
                    <button class="btn-outline-action">
                        <i class="fas fa-edit me-1"></i> Edit
                    </button>
                    <button class="btn-primary-action">
                        <i class="fas fa-paper-plane me-1"></i> Send Reminders
                    </button>
                </div>
            </div>
        </div>
        
        <!-- Event Card 3 -->
        <div class="col-lg-6 mb-4">
            <div class="event-card fade-in-up" style="--delay: 300ms;">
                <div class="event-card-header success">
                    <h5 class="mb-0"><i class="fas fa-gifts me-2"></i> Gift Opening</h5>
                    <span class="event-status">1 day after</span>
                </div>
                <div class="event-card-body">
                    <div class="d-flex align-items-center mb-3">
                        <div class="event-date-badge me-3">
                            <div class="month">JUN</div>
                            <div class="day">16</div>
                            <div class="year">2025</div>
                        </div>
                        <div>
                            <h5 class="mb-1">Post-Wedding Brunch</h5>
                            <p class="text-muted mb-0"><i class="fas fa-clock me-1"></i> 11:00 AM - 2:00 PM</p>
                            <p class="location"><i class="fas fa-map-marker-alt me-2"></i>Silver Bay Resort - Terrace</p>
                        </div>
                    </div>
                    <p class="event-description">Casual brunch with family and close friends to open wedding gifts and spend time together before departing.</p>
                    <div class="event-stats">
                        <div class="stat-item">
                            <div class="stat-icon"><i class="fas fa-user-friends"></i></div>
                            <div class="stat-label">Attendees</div>
                            <div class="stat-value">30</div>
                        </div>
                        <div class="stat-item">
                            <div class="stat-icon confirmed"><i class="fas fa-check-circle"></i></div>
                            <div class="stat-label">Confirmed</div>
                            <div class="stat-value">18</div>
                        </div>
                        <div class="stat-item">
                            <div class="stat-icon pending"><i class="fas fa-question-circle"></i></div>
                            <div class="stat-label">Pending</div>
                            <div class="stat-value">12</div>
                        </div>
                    </div>
                </div>
                <div class="event-card-footer">
                    <button class="btn-outline-action">
                        <i class="fas fa-edit me-1"></i> Edit
                    </button>
                    <button class="btn-primary-action">
                        <i class="fas fa-paper-plane me-1"></i> Send Reminders
                    </button>
                </div>
            </div>
        </div>
        
        <!-- Event Card 4 -->
        <div class="col-lg-6 mb-4">
            <div class="event-card fade-in-up" style="--delay: 400ms;">
                <div class="event-card-header warning">
                    <h5 class="mb-0"><i class="fas fa-suitcase me-2"></i> Honeymoon Departure</h5>
                    <span class="event-status">2 days after</span>
                </div>
                <div class="event-card-body">
                    <div class="d-flex align-items-center mb-3">
                        <div class="event-date-badge me-3">
                            <div class="month">JUN</div>
                            <div class="day">17</div>
                            <div class="year">2025</div>
                        </div>
                        <div>
                            <h5 class="mb-1">Bali Getaway</h5>
                            <p class="text-muted mb-0"><i class="fas fa-clock me-1"></i> 9:00 AM</p>
                            <p class="location"><i class="fas fa-plane me-2"></i>International Airport, Terminal 3</p>
                        </div>
                    </div>
                    <p class="event-description">Departure for 2-week honeymoon in Bali. Private car arranged for airport transportation.</p>
                    <div class="reminder-box">
                        <i class="fas fa-bell"></i>
                        <div class="reminder-content">
                            <h6 class="mb-1">Important Reminders:</h6>
                            <ul class="mb-0">
                                <li>Passports and travel documents</li>
                                <li>Confirm hotel reservations</li>
                                <li>Exchange currency</li>
                                <li>Check-in opens 24 hours before flight</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="event-card-footer">
                    <button class="btn-outline-action">
                        <i class="fas fa-edit me-1"></i> Edit
                    </button>
                    <button class="btn-outline-action">
                        <i class="fas fa-list-check me-1"></i> Update Checklist
                    </button>
                </div>
            </div>
        </div>
    </div>
    
    <div class="text-center mt-4">
        <button class="btn-primary-action">
            <span><i class="fas fa-plus me-2"></i> Add New Event</span>
        </button>
        <button class="btn-outline-action ms-2">
            <span><i class="fas fa-calendar-alt me-2"></i> View Calendar</span>
        </button>
    </div>
</div>

<!-- Create Event Form -->
<div class="container mb-5" id="createEventForm">
    <div class="section-title mb-4">
        <h2><i class="fas fa-calendar-plus me-2"></i> Create New Event</h2>
    </div>
    
    <div class="form-card zoom-in">
        <form>
            <div class="row">
                <div class="col-md-6 mb-4">
                    <div class="form-floating">
                        <input type="text" class="form-control" id="eventName" placeholder="Enter event name">
                        <label for="eventName"><i class="fas fa-heading me-2"></i>Event Name</label>
                    </div>
                </div>
                <div class="col-md-6 mb-4">
                    <div class="form-floating">
                        <select class="form-select" id="eventType">
                            <option selected disabled value="">Select event type</option>
                            <option value="ceremony">Ceremony</option>
                            <option value="reception">Reception</option>
                            <option value="rehearsal">Rehearsal Dinner</option>
                            <option value="shower">Bridal Shower</option>
                            <option value="party">Bachelor/Bachelorette Party</option>
                            <option value="other">Other</option>
                        </select>
                        <label for="eventType"><i class="fas fa-tag me-2"></i>Event Type</label>
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-6 mb-4">
                    <div class="form-floating">
                        <input type="date" class="form-control" id="eventDate">
                        <label for="eventDate"><i class="fas fa-calendar me-2"></i>Date</label>
                    </div>
                </div>
                <div class="col-md-3 mb-4">
                    <div class="form-floating">
                        <input type="time" class="form-control" id="startTime">
                        <label for="startTime"><i class="fas fa-clock me-2"></i>Start Time</label>
                    </div>
                </div>
                <div class="col-md-3 mb-4">
                    <div class="form-floating">
                        <input type="time" class="form-control" id="endTime">
                        <label for="endTime"><i class="fas fa-hourglass-end me-2"></i>End Time</label>
                    </div>
                </div>
            </div>
            
            <div class="mb-4">
                <div class="form-floating">
                    <input type="text" class="form-control" id="location" placeholder="Enter event location">
                    <label for="location"><i class="fas fa-map-marker-alt me-2"></i>Location</label>
                </div>
            </div>
            
            <div class="mb-4">
                <div class="form-floating">
                    <textarea class="form-control" id="description" rows="3" placeholder="Describe your event" style="height: 100px"></textarea>
                    <label for="description"><i class="fas fa-align-left me-2"></i>Description</label>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-6 mb-4">
                    <div class="form-floating">
                        <input type="number" class="form-control" id="guests" min="1">
                        <label for="guests"><i class="fas fa-users me-2"></i>Expected Guests</label>
                    </div>
                </div>
                <div class="col-md-6 mb-4">
                    <div class="form-floating">
                        <select class="form-select" id="reminder">
                            <option value="1day">1 day before</option>
                            <option value="3days">3 days before</option>
                            <option value="1week">1 week before</option>
                            <option value="2weeks">2 weeks before</option>
                        </select>
                        <label for="reminder"><i class="fas fa-bell me-2"></i>Send Reminder</label>
                    </div>
                </div>
            </div>
            
            <div class="mb-4">
                <label class="form-label d-block"><i class="fas fa-palette me-2"></i>Color Theme</label>
                <div class="color-options">
                    <div class="color-option">
                        <input type="radio" name="colorTheme" id="colorPrimary" value="primary" checked>
                        <label for="colorPrimary" class="color-primary">
                            <span class="color-check"><i class="fas fa-check"></i></span>
                        </label>
                    </div>
                    <div class="color-option">
                        <input type="radio" name="colorTheme" id="colorSuccess" value="success">
                        <label for="colorSuccess" class="color-success">
                            <span class="color-check"><i class="fas fa-check"></i></span>
                        </label>
                    </div>
                    <div class="color-option">
                        <input type="radio" name="colorTheme" id="colorDanger" value="danger">
                        <label for="colorDanger" class="color-danger">
                            <span class="color-check"><i class="fas fa-check"></i></span>
                        </label>
                    </div>
                    <div class="color-option">
                        <input type="radio" name="colorTheme" id="colorWarning" value="warning">
                        <label for="colorWarning" class="color-warning">
                            <span class="color-check"><i class="fas fa-check"></i></span>
                        </label>
                    </div>
                    <div class="color-option">
                        <input type="radio" name="colorTheme" id="colorInfo" value="info">
                        <label for="colorInfo" class="color-info">
                            <span class="color-check"><i class="fas fa-check"></i></span>
                        </label>
                    </div>
                    <div class="color-option">
                        <input type="radio" name="colorTheme" id="colorPurple" value="purple">
                        <label for="colorPurple" class="color-purple">
                            <span class="color-check"><i class="fas fa-check"></i></span>
                        </label>
                    </div>
                </div>
            </div>
            
            <div class="form-actions">
                <button type="button" class="btn-outline-action" onclick="window.location='#myEvents'">
                    <i class="fas fa-times me-1"></i> Cancel
                </button>
                <button type="submit" class="btn-primary-action">
                    <i class="fas fa-save me-1"></i> Save Event
                </button>
            </div>
        </form>
    </div>
</div>

<!-- Guest Management Section -->
<div class="container mb-5">
    <div class="section-title mb-4">
        <h2><i class="fas fa-users me-2"></i> Manage Guests</h2>
    </div>
    
    <div class="row">
        <div class="col-md-4 mb-4">
            <!-- Guest Stats Card -->
            <div class="guest-stats-card fade-in-up" style="--delay: 100ms;">
                <h5 class="card-title mb-4">Guest Overview</h5>
                <div class="guest-stats">
                    <div class="guest-stat">
                        <div class="guest-stat-circle invited">
                            <span>120</span>
                        </div>
                        <p>Invited</p>
                    </div>
                    <div class="guest-stat">
                        <div class="guest-stat-circle confirmed">
                            <span>78</span>
                        </div>
                        <p>Confirmed</p>
                    </div>
                    <div class="guest-stat">
                        <div class="guest-stat-circle declined">
                            <span>12</span>
                        </div>
                        <p>Declined</p>
                    </div>
                </div>
                
                <div class="progress-stats">
                    <div class="progress" style="height: 8px;">
                        <div class="progress-bar bg-success" style="width: 65%;"></div>
                        <div class="progress-bar bg-danger" style="width: 10%;"></div>
                        <div class="progress-bar bg-warning" style="width: 25%;"></div>
                    </div>
                    <div class="progress-labels">
                        <span class="progress-label confirmed">65% Confirmed</span>
                        <span class="progress-label declined">10% Declined</span>
                        <span class="progress-label pending">25% Pending</span>
                    </div>
                </div>
                
                <button class="btn-outline-action w-100 mt-4">
                    <i class="fas fa-envelope me-2"></i> Send Invitations
                </button>
            </div>
        </div>
        
<div class="col-md-8 mb-4">
            <!-- Guest List Card -->
            <div class="guest-list-card fade-in-up" style="--delay: 200ms;">
                <div class="guest-list-header">
                    <h5 class="mb-0">Recent Guest Responses</h5>
                    <button class="btn-action add">
                        <i class="fas fa-user-plus me-1"></i> Add Guest
                    </button>
                </div>
                <div class="guest-list-body">
                    <table class="guest-table">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Status</th>
                                <th>Response Date</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <div class="guest-name">
                                        <div class="avatar-circle-sm primary">JS</div>
                                        <div>John Smith</div>
                                    </div>
                                </td>
                                <td>john.smith@example.com</td>
                                <td><span class="status-badge confirmed">Confirmed</span></td>
                                <td>2025-03-12</td>
                                <td>
                                    <button class="btn-icon">
                                        <i class="fas fa-envelope"></i>
                                    </button>
                                    <button class="btn-icon danger">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="guest-name">
                                        <div class="avatar-circle-sm info">AJ</div>
                                        <div>Amy Johnson</div>
                                    </div>
                                </td>
                                <td>amy.j@example.com</td>
                                <td><span class="status-badge confirmed">Confirmed</span></td>
                                <td>2025-03-10</td>
                                <td>
                                    <button class="btn-icon">
                                        <i class="fas fa-envelope"></i>
                                    </button>
                                    <button class="btn-icon danger">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="guest-name">
                                        <div class="avatar-circle-sm warning">RD</div>
                                        <div>Robert Davis</div>
                                    </div>
                                </td>
                                <td>robert.d@example.com</td>
                                <td><span class="status-badge pending">Pending</span></td>
                                <td>-</td>
                                <td>
                                    <button class="btn-icon">
                                        <i class="fas fa-envelope"></i>
                                    </button>
                                    <button class="btn-icon danger">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="guest-name">
                                        <div class="avatar-circle-sm danger">ML</div>
                                        <div>Maria Lopez</div>
                                    </div>
                                </td>
                                <td>maria.l@example.com</td>
                                <td><span class="status-badge declined">Declined</span></td>
                                <td>2025-03-09</td>
                                <td>
                                    <button class="btn-icon">
                                        <i class="fas fa-envelope"></i>
                                    </button>
                                    <button class="btn-icon danger">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="guest-list-footer">
                    <button class="btn-outline-action">
                        <i class="fas fa-list me-1"></i> View All Guests
                    </button>
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
        --purple: #9c27b0;
        --light: #f8f9fa;
        --dark: #343a40;
        --white: #ffffff;
        --text-color: #333;
        --shadow-sm: 0 2px 10px rgba(211, 95, 145, 0.08);
        --shadow-md: 0 5px 15px rgba(211, 95, 145, 0.12);
        --shadow-hover: 0 8px 25px rgba(211, 95, 145, 0.2);
        --transition-normal: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
    }
    
    /* Typography */
    .cursive-text {
        font-family: 'Great Vibes', cursive;
        color: var(--primary);
    }
    
    /* Section titles */
    .section-title {
        position: relative;
        display: flex;
        align-items: center;
        margin-bottom: 2rem;
        padding-bottom: 0.5rem;
    }

    .section-title h2 {
        font-family: 'Great Vibes', cursive;
        font-size: 2.5rem;
        color: var(--primary);
        margin-bottom: 0;
    }

    .section-title::after {
        content: '';
        flex-grow: 1;
        height: 2px;
        background: linear-gradient(90deg, var(--primary) 0%, rgba(211, 95, 145, 0.1) 100%);
        margin-left: 20px;
    }

    .section-title i {
        color: var(--primary-light);
    }
    
    /* Event Hero */
    .event-hero {
        background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url('https://images.unsplash.com/photo-1519741347686-c1e0917af82d');
        background-size: cover;
        background-position: center;
        color: white;
        position: relative;
    }

    .event-hero::after {
        content: '';
        position: absolute;
        bottom: 0;
        left: 0;
        right: 0;
        height: 70px;
        background: linear-gradient(to top, #fff, transparent);
    }
    
    .hero-card {
        background: rgba(255, 255, 255, 0.85);
        padding: 2rem;
        border-radius: 20px;
        box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
        color: #333;
        border-left: 5px solid var(--primary);
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
    
    .btn-action.edit:hover {
        background: var(--primary-light);
        color: var(--primary-dark);
    }
    
    .btn-action.delete:hover {
        background: #ffebee;
        color: var(--danger);
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
        width: 32px;
        height: 32px;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        border-radius: 50%;
        border: none;
        background: #f5f5f5;
        color: var(--secondary);
        transition: var(--transition-normal);
        cursor: pointer;
    }
    
    .btn-icon:hover {
        background: var(--primary-light);
        color: var(--primary-dark);
    }
    
    .btn-icon.danger:hover {
        background: #ffebee;
        color: var(--danger);
    }
    
    /* Timeline Card */
    .timeline-card {
        background: white;
        border-radius: 20px;
        overflow: hidden;
        box-shadow: var(--shadow-md);
        margin-bottom: 2rem;
    }
    
    .timeline-header {
        background: var(--light);
        padding: 1.5rem;
        text-align: center;
        color: var(--primary-dark);
    }
    
    .timeline-content {
        padding: 2rem;
    }
    
    /* Timeline Styles */
    .timeline-wrapper {
        position: relative;
        padding: 20px 0;
    }
    
    .timeline-wrapper::before {
        content: '';
        position: absolute;
        top: 0;
        bottom: 0;
        left: 15px;
        width: 2px;
        background: linear-gradient(to bottom, var(--primary-light), var(--primary));
        opacity: 0.5;
    }
    
    .timeline-item {
        position: relative;
        margin-bottom: 30px;
        opacity: 0;
    }
    
    .timeline-item.animated {
        opacity: 1;
    }
    
    .timeline-badge {
        position: absolute;
        left: 0;
        width: 30px;
        height: 30px;
        border-radius: 50%;
        text-align: center;
        color: #fff;
        line-height: 30px;
        z-index: 10;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.15);
    }
    
    .timeline-panel {
        position: relative;
        margin-left: 60px;
        padding: 20px;
        border-radius: 15px;
        background-color: #fff;
        box-shadow: var(--shadow-sm);
        transition: var(--transition-normal);
    }
    
    .timeline-panel:hover {
        transform: translateY(-5px);
        box-shadow: var(--shadow-hover);
    }
    
    .timeline-panel:after {
        right: 100%;
        top: 15px;
        border: solid transparent;
        content: " ";
        height: 0;
        width: 0;
        position: absolute;
        pointer-events: none;
        border-right-color: #fff;
        border-width: 10px;
        margin-top: -10px;
    }
    
    .time-badge {
        border-radius: 30px;
        padding: 5px 12px;
        font-size: 0.8rem;
        font-weight: 600;
        color: white;
    }
    
    .badge-primary {
        background-color: var(--primary);
    }
    
    .badge-info {
        background-color: var(--info);
    }
    
    .badge-success {
        background-color: var(--success);
    }
    
    .badge-warning {
        background-color: var(--warning);
    }
    
    .badge-secondary {
        background-color: var(--secondary);
    }
    
    /* Event Cards */
    .event-card {
        background: white;
        border-radius: 20px;
        overflow: hidden;
        box-shadow: var(--shadow-md);
        height: 100%;
        transition: var(--transition-normal);
        opacity: 0;
    }
    
    .event-card.animated {
        opacity: 1;
    }
    
    .event-card:hover {
        transform: translateY(-5px);
        box-shadow: var(--shadow-hover);
    }
    
    .event-card-header {
        padding: 1.25rem;
        display: flex;
        justify-content: space-between;
        align-items: center;
        color: white;
    }
    
    .event-card-header.primary {
        background: linear-gradient(135deg, var(--primary), var(--primary-dark));
    }
    
    .event-card-header.info {
        background: linear-gradient(135deg, var(--info), #0d6efd);
    }
    
    .event-card-header.success {
        background: linear-gradient(135deg, var(--success), #2e7d32);
    }
    
    .event-card-header.warning {
        background: linear-gradient(135deg, var(--warning), #ff8f00);
        color: #212529;
    }
    
    .event-status {
        background: white;
        color: #333;
        padding: 4px 12px;
        border-radius: 30px;
        font-size: 0.8rem;
        font-weight: 600;
    }
    
    .event-card-body {
        padding: 1.5rem;
    }
    
    .event-description {
        color: #666;
        margin-bottom: 1.5rem;
    }
    
    .event-card-footer {
        padding: 1rem 1.5rem;
        background: #f9f9f9;
        display: flex;
        justify-content: space-between;
    }
    
    /* Date Badge */
    .event-date-badge {
        background-color: var(--primary-light);
        border-radius: 12px;
        padding: 8px;
        min-width: 70px;
        text-align: center;
        box-shadow: 0 3px 8px rgba(211, 95, 145, 0.2);
    }
    
    .event-date-badge .month {
        font-size: 0.8rem;
        text-transform: uppercase;
        color: var(--primary-dark);
        font-weight: 700;
    }
    
    .event-date-badge .day {
        font-size: 1.8rem;
        font-weight: 700;
        line-height: 1;
        color: var(--primary);
    }
    
    .event-date-badge .year {
        font-size: 0.75rem;
        color: var(--primary-dark);
    }
    
    /* Event Stats */
    .event-stats {
        display: flex;
        justify-content: space-between;
        text-align: center;
        margin-top: 1.5rem;
        padding-top: 1.5rem;
        border-top: 1px dashed #eee;
    }
    
    .stat-item {
        text-align: center;
    }
    
    .stat-icon {
        font-size: 1.25rem;
        color: var(--secondary);
        margin-bottom: 0.25rem;
    }
    
    .stat-icon.confirmed {
        color: var(--success);
    }
    
    .stat-icon.pending {
        color: var(--warning);
    }
    
    .stat-label {
        font-size: 0.75rem;
        color: #777;
        margin-bottom: 0.25rem;
    }
    
    .stat-value {
        font-weight: 600;
        color: #333;
    }
    
    /* Location styling */
    .location {
        color: #777;
    }
    
    .location i {
        color: var(--primary);
    }
    
    /* Reminder Box */
    .reminder-box {
        display: flex;
        align-items: flex-start;
        background-color: #fff8e1;
        border-radius: 12px;
        padding: 16px;
        margin-top: 1.5rem;
    }
    
    .reminder-box i {
        color: var(--warning);
        font-size: 1.25rem;
        margin-right: 16px;
        margin-top: 3px;
    }
    
    .reminder-content h6 {
        color: #333;
        margin-bottom: 8px;
    }
    
    .reminder-content ul {
        padding-left: 18px;
        margin: 0;
        color: #666;
    }
    
    /* Form Card */
    .form-card {
        background: white;
        border-radius: 20px;
        padding: 2.5rem;
        box-shadow: var(--shadow-md);
    }
    
    /* Form styling */
    .form-floating {
        position: relative;
    }
    
    .form-floating > .form-control,
    .form-floating > .form-select {
        padding: 1rem 1rem;
        height: 60px;
        border: 2px solid #eee;
        border-radius: 12px;
        transition: var(--transition-normal);
    }
    
    .form-floating > label {
        padding: 1rem 1rem;
        color: #777;
        transition: var(--transition-normal);
    }
    
    .form-floating > .form-control:focus,
    .form-floating > .form-select:focus {
        border-color: var(--primary);
        box-shadow: 0 0 0 0.25rem rgba(211, 95, 145, 0.25);
    }
    
    .form-floating > .form-control:focus ~ label,
    .form-floating > .form-select:focus ~ label {
        color: var(--primary);
        font-weight: 500;
        transform: scale(0.85) translateY(-1rem) translateX(0.15rem);
    }
    
    .form-floating > .form-control:not(:placeholder-shown) ~ label,
    .form-floating > .form-select:not(:placeholder-shown) ~ label {
        transform: scale(0.85) translateY(-1rem) translateX(0.15rem);
    }
    
    .form-floating textarea.form-control {
        min-height: 100px;
    }
    
    /* Color Options */
    .color-options {
        display: flex;
        flex-wrap: wrap;
        gap: 15px;
        margin-top: 10px;
    }
    
    .color-option {
        position: relative;
    }
    
    .color-option input {
        position: absolute;
        opacity: 0;
        width: 0;
        height: 0;
    }
    
    .color-option label {
        display: block;
        width: 40px;
        height: 40px;
        border-radius: 50%;
        cursor: pointer;
        position: relative;
        transition: var(--transition-normal);
    }
    
    .color-primary { background-color: var(--primary); }
    .color-success { background-color: var(--success); }
    .color-danger { background-color: var(--danger); }
    .color-warning { background-color: var(--warning); }
    .color-info { background-color: var(--info); }
    .color-purple { background-color: var(--purple); }
    
    .color-option input:checked + label {
        box-shadow: 0 0 0 3px white, 0 0 0 5px var(--primary);
    }
    
    .color-check {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        color: white;
        opacity: 0;
        transition: var(--transition-normal);
    }
    
    .color-option input:checked + label .color-check {
        opacity: 1;
    }
    
    /* Form actions */
    .form-actions {
        display: flex;
        justify-content: flex-end;
        gap: 15px;
        margin-top: 2rem;
    }
    
    /* Guest Stats Card */
    .guest-stats-card {
        background: white;
        border-radius: 20px;
        padding: 1.5rem;
        box-shadow: var(--shadow-md);
        height: 100%;
    }
    
    .guest-stats {
        display: flex;
        justify-content: space-between;
        text-align: center;
        margin-bottom: 2rem;
    }
    
    .guest-stat-circle {
        width: 80px;
        height: 80px;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0 auto 12px;
        transition: var(--transition-normal);
        box-shadow: 0 5px 15px rgba(0,0,0,0.05);
    }
    
    .guest-stat-circle span {
        font-size: 1.75rem;
        font-weight: 700;
    }
    
    .guest-stat-circle.invited {
        background-color: #f5f5f5;
        color: #333;
    }
    
    .guest-stat-circle.confirmed {
        background-color: rgba(76, 175, 80, 0.1);
        color: var(--success);
    }
    
    .guest-stat-circle.declined {
        background-color: rgba(244, 67, 54, 0.1);
        color: var(--danger);
    }
    
    .guest-stat:hover .guest-stat-circle {
        transform: translateY(-5px);
    }
    
    .guest-stat p {
        color: #777;
        font-size: 0.9rem;
        margin: 0;
    }
    
    /* Progress stats */
    .progress-stats {
        margin-top: 1.5rem;
    }
    
    .progress {
        border-radius: 10px;
        overflow: hidden;
        margin-bottom: 8px;
    }
    
    .progress-labels {
        display: flex;
        justify-content: space-between;
        font-size: 0.8rem;
    }
    
    .progress-label.confirmed {
        color: var(--success);
    }
    
    .progress-label.declined {
        color: var(--danger);
    }
    
    .progress-label.pending {
        color: var(--warning);
    }
    
    /* Guest List Card */
    .guest-list-card {
        background: white;
        border-radius: 20px;
        overflow: hidden;
        box-shadow: var(--shadow-md);
        height: 100%;
    }
    
    .guest-list-header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 1.25rem 1.5rem;
        border-bottom: 1px solid #f0f0f0;
    }
    
    .guest-list-body {
        overflow-x: auto;
    }
    
    .guest-table {
        width: 100%;
        border-collapse: collapse;
    }
    
    .guest-table th {
        background-color: #f9f9f9;
        padding: 12px 16px;
        font-weight: 600;
        color: #444;
        border-bottom: 1px solid #eee;
    }
    
    .guest-table td {
        padding: 12px 16px;
        border-bottom: 1px solid #f0f0f0;
        vertical-align: middle;
    }
    
    .guest-name {
        display: flex;
        align-items: center;
    }
    
    .avatar-circle-sm {
        width: 32px;
        height: 32px;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 0.8rem;
        color: white;
        font-weight: 600;
        margin-right: 12px;
    }
    
    .avatar-circle-sm.primary { background-color: var(--primary); }
    .avatar-circle-sm.info { background-color: var(--info); }
    .avatar-circle-sm.warning { background-color: var(--warning); }
    .avatar-circle-sm.danger { background-color: var(--danger); }
    
    .status-badge {
        display: inline-block;
        padding: 4px 12px;
        border-radius: 30px;
        font-size: 0.75rem;
        font-weight: 600;
    }
    
    .status-badge.confirmed {
        background-color: rgba(76, 175, 80, 0.1);
        color: var(--success);
    }
    
    .status-badge.pending {
        background-color: rgba(255, 193, 7, 0.1);
        color: var(--warning);
    }
    
    .status-badge.declined {
        background-color: rgba(244, 67, 54, 0.1);
        color: var(--danger);
    }
    
    .guest-list-footer {
        padding: 1rem;
        text-align: center;
        border-top: 1px solid #f0f0f0;
    }
    
    /* Animation keyframes */
    @keyframes slideInLeft {
        from {
            transform: translateX(-50px);
            opacity: 0;
        }
        to {
            transform: translateX(0);
            opacity: 1;
        }
    }
    
    @keyframes slideInRight {
        from {
            transform: translateX(50px);
            opacity: 0;
        }
        to {
            transform: translateX(0);
            opacity: 1;
        }
    }
    
    @keyframes fadeInUp {
        from {
            transform: translateY(30px);
            opacity: 0;
        }
        to {
            transform: translateY(0);
            opacity: 1;
        }
    }
    
    @keyframes zoomIn {
        from {
            transform: scale(0.95);
            opacity: 0;
        }
        to {
            transform: scale(1);
            opacity: 1;
        }
    }
    
    /* Animation classes */
    .slide-in-left.animated {
        animation: slideInLeft 0.6s ease forwards;
        animation-delay: var(--delay, 0ms);
    }
    
    .slide-in-right.animated {
        animation: slideInRight 0.6s ease forwards;
        animation-delay: var(--delay, 0ms);
    }
    
    .fade-in-up.animated {
        animation: fadeInUp 0.6s ease forwards;
        animation-delay: var(--delay, 0ms);
    }
    
    .zoom-in.animated {
        animation: zoomIn 0.6s ease forwards;
    }
</style>

<script>
    // Enhanced animations and interactions for events page
    document.addEventListener('DOMContentLoaded', function() {
        // Update current datetime in the header
        const headerDatetime = document.querySelector('.navbar-text small');
        if (headerDatetime) {
            headerDatetime.innerHTML = '<i class="far fa-clock me-1"></i> 2025-03-14 19:43:49';
        }
        
        // Animate elements as they scroll into view
        const animateOnScroll = function() {
            const elements = document.querySelectorAll('.fade-in-up, .slide-in-left, .slide-in-right, .zoom-in, .timeline-item, .event-card, .guest-stats-card, .guest-list-card, .form-card');
            
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
        
        // Form field animations
        const formInputs = document.querySelectorAll('.form-control, .form-select');
        
        formInputs.forEach(input => {
            // Add focus animations
            input.addEventListener('focus', function() {
                this.parentElement.classList.add('input-focused');
            });
            
            input.addEventListener('blur', function() {
                this.parentElement.classList.remove('input-focused');
            });
            
            // Add special animation when value changes
            input.addEventListener('change', function() {
                this.classList.add('value-changed');
                setTimeout(() => {
                    this.classList.remove('value-changed');
                }, 1000);
            });
        });
        
        // Timeline item hover effects
        const timelineItems = document.querySelectorAll('.timeline-item');
        timelineItems.forEach(item => {
            item.addEventListener('mouseenter', function() {
                this.querySelector('.timeline-badge').classList.add('pulse');
            });
            
            item.addEventListener('mouseleave', function() {
                this.querySelector('.timeline-badge').classList.remove('pulse');
            });
        });
        
        // Color option selection animation
        const colorOptions = document.querySelectorAll('.color-option input');
        colorOptions.forEach(option => {
            option.addEventListener('change', function() {
                const selectedLabel = this.nextElementSibling;
                selectedLabel.classList.add('scale-animation');
                
                setTimeout(() => {
                    selectedLabel.classList.remove('scale-animation');
                }, 500);
            });
        });
        
        // Action button animations
        const actionButtons = document.querySelectorAll('.btn-primary-action, .btn-outline-action');
        actionButtons.forEach(button => {
            button.addEventListener('mouseenter', function() {
                const icon = this.querySelector('i');
                if (icon) {
                    icon.classList.add('fa-bounce');
                }
            });
            
            button.addEventListener('mouseleave', function() {
                const icon = this.querySelector('i');
                if (icon) {
                    icon.classList.remove('fa-bounce');
                }
            });
        });
        
        // Update clock with current time
        function updateClock() {
            const now = new Date();
            const options = { 
                year: 'numeric', 
                month: '2-digit', 
                day: '2-digit',
                hour: '2-digit', 
                minute: '2-digit', 
                second: '2-digit',
                hour12: false
            };
            
            const formattedDate = now.toISOString().slice(0, 19).replace('T', ' ');
            
            document.querySelector('.navbar-text small').innerHTML = 
                '<i class="far fa-clock me-1"></i> ' + formattedDate;
        }
        
        // Update clock periodically
        setInterval(updateClock, 1000);
        
        // Initialize tooltips if Bootstrap 5 is loaded
        if (typeof bootstrap !== 'undefined' && bootstrap.Tooltip) {
            const tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
            tooltipTriggerList.map(function (tooltipTriggerEl) {
                return new bootstrap.Tooltip(tooltipTriggerEl);
            });
        }
        
        // Event detail modals
        const viewButtons = document.querySelectorAll('.btn-view, .btn-action.edit');
        viewButtons.forEach(button => {
            button.addEventListener('click', function(e) {
                e.preventDefault();
                // In a real application, you would show a modal with event details
                // or redirect to an edit page
                alert('Event details/edit functionality would open here');
            });
        });
    });
</script>

<%@ include file="/WEB-INF/components/footer.jsp" %>