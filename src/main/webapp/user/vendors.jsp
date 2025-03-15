<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/components/header.jsp" %>
<%
    // Set page title
    request.setAttribute("pageTitle", "Wedding Vendors");
%>

<!-- Hero Section -->
<div class="container-fluid vendor-hero py-5 mb-5">
    <div class="container py-5">
        <div class="row">
            <div class="col-md-8 col-lg-6">
                <div class="hero-card slide-in-left">
                    <h1 class="display-4 fw-bold mb-4 cursive-text">Find Perfect Wedding Vendors</h1>
                    <p class="lead mb-4">Discover top-rated professionals who will make your special day unforgettable</p>

                    <!-- Search Form with Animation -->
                    <form class="mb-3 search-form">
                        <div class="input-group">
                            <span class="input-group-text">
                                <i class="fa-solid fa-magnifying-glass"></i>
                            </span>
                            <input type="text" class="form-control" placeholder="Search vendors...">
                            <button class="btn btn-search" type="submit">
                                <span>Search</span>
                                <i class="fas fa-arrow-right"></i>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Filters Section -->
<div class="container mb-5">
    <div class="filter-card fade-in-up">
        <div class="card-body">
            <div class="row">
                <div class="col-md-3 mb-3 mb-md-0">
                    <div class="filter-group">
                        <label class="form-label"><i class="fa-solid fa-list-ul me-2"></i>Category</label>
                        <select class="form-select">
                            <option value="">All Categories</option>
                            <option value="venues">Venues</option>
                            <option value="catering">Catering</option>
                            <option value="photography">Photography</option>
                            <option value="decor">Decor & Flowers</option>
                            <option value="music">Music & Entertainment</option>
                            <option value="beauty">Beauty & Makeup</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-3 mb-3 mb-md-0">
                    <div class="filter-group">
                        <label class="form-label"><i class="fa-solid fa-location-dot me-2"></i>Location</label>
                        <select class="form-select">
                            <option value="">All Locations</option>
                            <option value="north">North Region</option>
                            <option value="south">South Region</option>
                            <option value="east">East Region</option>
                            <option value="west">West Region</option>
                            <option value="central">Central Region</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-3 mb-3 mb-md-0">
                    <div class="filter-group">
                        <label class="form-label"><i class="fa-solid fa-star me-2"></i>Rating</label>
                        <select class="form-select">
                            <option value="">Any Rating</option>
                            <option value="5">5 Stars</option>
                            <option value="4">4+ Stars</option>
                            <option value="3">3+ Stars</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-3 mb-3 mb-md-0">
                    <div class="filter-group">
                        <label class="form-label"><i class="fa-solid fa-tags me-2"></i>Price Range</label>
                        <select class="form-select">
                            <option value="">Any Price</option>
                            <option value="budget">Budget Friendly</option>
                            <option value="moderate">Moderate</option>
                            <option value="premium">Premium</option>
                            <option value="luxury">Luxury</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Featured Vendors Section -->
<div class="container mb-5">
    <div class="section-title mb-4">
        <h2><i class="fas fa-crown me-2"></i> Featured Vendors</h2>
    </div>

    <div class="row">
        <!-- Featured Vendor 1 -->
        <div class="col-lg-6 mb-4">
            <div class="vendor-card-featured h-100 slide-in-left" data-delay="100">
                <div class="row g-0">
                    <div class="col-md-5">
                        <div class="vendor-image-wrapper">
                            <span class="featured-badge">Featured</span>
                            <img src="https://images.unsplash.com/photo-1519167758481-83f550bb49b3" class="img-fluid h-100 w-100 object-fit-cover" alt="Royal Palace Venue">
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-center mb-2">
                                <span class="vendor-category-badge venue"><i class="fas fa-building me-1"></i> Venue</span>
                                <div class="vendor-rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <span class="ms-1">5.0 (48 reviews)</span>
                                </div>
                            </div>
                            <h4 class="card-title">Royal Palace Wedding Venue</h4>
                            <p class="card-text location"><i class="fas fa-map-marker-alt me-2"></i>Riverside Gardens, Central City</p>
                            <p class="card-text description">Luxury wedding venue with stunning garden views, grand ballroom, and exceptional service for up to 400 guests.</p>
                            <div class="d-flex justify-content-between align-items-center mt-3">
                                <div class="price">
                                    <span>$5,000 - $15,000</span>
                                </div>
                                <a href="#" class="btn-view">
                                    <span>View Details</span>
                                    <i class="fas fa-arrow-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Featured Vendor 2 -->
        <div class="col-lg-6 mb-4">
            <div class="vendor-card-featured h-100 slide-in-right" data-delay="100">
                <div class="row g-0">
                    <div class="col-md-5">
                        <div class="vendor-image-wrapper">
                            <span class="featured-badge">Featured</span>
                            <img src="https://images.unsplash.com/photo-1414235077428-338989a2e8c0" class="img-fluid h-100 w-100 object-fit-cover" alt="Gourmet Catering">
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-center mb-2">
                                <span class="vendor-category-badge catering"><i class="fas fa-utensils me-1"></i> Catering</span>
                                <div class="vendor-rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star-half-alt"></i>
                                    <span class="ms-1">4.7 (36 reviews)</span>
                                </div>
                            </div>
                            <h4 class="card-title">Elegance Gourmet Catering</h4>
                            <p class="card-text location"><i class="fas fa-map-marker-alt me-2"></i>Downtown, Central City</p>
                            <p class="card-text description">Award-winning catering service specializing in multi-cultural cuisine, custom menus, and impeccable presentation.</p>
                            <div class="d-flex justify-content-between align-items-center mt-3">
                                <div class="price">
                                    <span>$85 - $150</span>
                                    <small>per person</small>
                                </div>
                                <a href="#" class="btn-view">
                                    <span>View Details</span>
                                    <i class="fas fa-arrow-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- All Vendors Section -->
<div class="container mb-5">
    <div class="section-title mb-4">
        <h2><i class="fas fa-store me-2"></i> All Vendors</h2>
    </div>

    <div class="row">
        <!-- Vendor 1 -->
        <div class="col-lg-4 col-md-6 mb-4">
            <div class="vendor-card fade-in-up" data-delay="100">
                <div class="vendor-image-wrapper">
                    <img src="https://images.unsplash.com/photo-1604017011039-925286b3e11b" class="card-img-top" alt="Moments Photography">
                    <div class="vendor-category">
                        <span class="vendor-category-badge photo">
                            <i class="fas fa-camera me-1"></i> Photography
                        </span>
                    </div>
                </div>
                <div class="card-body">
                    <div class="d-flex justify-content-between mb-2">
                        <h5 class="card-title mb-0">Eternal Moments Photography</h5>
                        <div class="vendor-rating-small">
                            <i class="fas fa-star"></i>
                            <span>4.9</span>
                        </div>
                    </div>
                    <p class="card-text description">Capturing your precious moments with artistic style and attention to detail. Specializing in candid photography and cinematic videos.</p>
                    <div class="d-flex justify-content-between align-items-end mt-3">
                        <div class="price">
                            <span>$1,800 - $3,500</span>
                        </div>
                        <a href="#" class="btn-outline">Details</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Vendor 2 -->
        <div class="col-lg-4 col-md-6 mb-4">
            <div class="vendor-card fade-in-up" data-delay="200">
                <div class="vendor-image-wrapper">
                    <img src="https://images.unsplash.com/photo-1561673034-2ad21e67c96b" class="card-img-top" alt="Floral Designs">
                    <div class="vendor-category">
                        <span class="vendor-category-badge florist">
                            <i class="fas fa-leaf me-1"></i> Florist
                        </span>
                    </div>
                </div>
                <div class="card-body">
                    <div class="d-flex justify-content-between mb-2">
                        <h5 class="card-title mb-0">Blooming Paradise Florals</h5>
                        <div class="vendor-rating-small">
                            <i class="fas fa-star"></i>
                            <span>4.8</span>
                        </div>
                    </div>
                    <p class="card-text description">Exquisite floral arrangements that bring your wedding vision to life. From bouquets to venue decorations, we create stunning designs.</p>
                    <div class="d-flex justify-content-between align-items-end mt-3">
                        <div class="price">
                            <span>$800 - $3,000</span>
                        </div>
                        <a href="#" class="btn-outline">Details</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Vendor 3 -->
        <div class="col-lg-4 col-md-6 mb-4">
            <div class="vendor-card fade-in-up" data-delay="300">
                <div class="vendor-image-wrapper">
                    <img src="https://images.unsplash.com/photo-1470225620780-dba8ba36b745" class="card-img-top" alt="DJ Services">
                    <div class="vendor-category">
                        <span class="vendor-category-badge entertainment">
                            <i class="fas fa-music me-1"></i> Entertainment
                        </span>
                    </div>
                </div>
                <div class="card-body">
                    <div class="d-flex justify-content-between mb-2">
                        <h5 class="card-title mb-0">Rhythm Masters DJ Services</h5>
                        <div class="vendor-rating-small">
                            <i class="fas fa-star"></i>
                            <span>4.7</span>
                        </div>
                    </div>
                    <p class="card-text description">Professional DJs and MCs to keep your celebration lively and entertaining. Customized playlists and state-of-the-art sound systems.</p>
                    <div class="d-flex justify-content-between align-items-end mt-3">
                        <div class="price">
                            <span>$1,200 - $2,500</span>
                        </div>
                        <a href="#" class="btn-outline">Details</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Vendor 4 -->
        <div class="col-lg-4 col-md-6 mb-4">
            <div class="vendor-card fade-in-up" data-delay="400">
                <div class="vendor-image-wrapper">
                    <img src="https://images.unsplash.com/photo-1549451371-64aa98a6f660" class="card-img-top" alt="Wedding Cake">
                    <div class="vendor-category">
                        <span class="vendor-category-badge cake">
                            <i class="fas fa-birthday-cake me-1"></i> Cake & Desserts
                        </span>
                    </div>
                </div>
                <div class="card-body">
                    <div class="d-flex justify-content-between mb-2">
                        <h5 class="card-title mb-0">Sweet Delights Bakery</h5>
                        <div class="vendor-rating-small">
                            <i class="fas fa-star"></i>
                            <span>4.9</span>
                        </div>
                    </div>
                    <p class="card-text description">Artisan wedding cakes and dessert tables that taste as amazing as they look. Custom designs to match your wedding theme.</p>
                    <div class="d-flex justify-content-between align-items-end mt-3">
                        <div class="price">
                            <span>$500 - $1,500</span>
                        </div>
                        <a href="#" class="btn-outline">Details</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Vendor 5 -->
        <div class="col-lg-4 col-md-6 mb-4">
            <div class="vendor-card fade-in-up" data-delay="500">
                <div class="vendor-image-wrapper">
                    <img src="https://images.unsplash.com/photo-1606800052052-a08af7148866" class="card-img-top" alt="Wedding Planner">
                    <div class="vendor-category">
                        <span class="vendor-category-badge planner">
                            <i class="fas fa-clipboard-list me-1"></i> Planner
                        </span>
                    </div>
                </div>
                <div class="card-body">
                    <div class="d-flex justify-content-between mb-2">
                        <h5 class="card-title mb-0">Perfect Day Planners</h5>
                        <div class="vendor-rating-small">
                            <i class="fas fa-star"></i>
                            <span>5.0</span>
                        </div>
                    </div>
                    <p class="card-text description">Full-service wedding planning team that handles everything from concept to execution. Let us take care of the details while you enjoy your day.</p>
                    <div class="d-flex justify-content-between align-items-end mt-3">
                        <div class="price">
                            <span>$2,500 - $8,000</span>
                        </div>
                        <a href="#" class="btn-outline">Details</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Vendor 6 -->
        <div class="col-lg-4 col-md-6 mb-4">
            <div class="vendor-card fade-in-up" data-delay="600">
                <div class="vendor-image-wrapper">
                    <img src="https://images.unsplash.com/photo-1522673607200-164d1b3ce551" class="card-img-top" alt="Bridal Makeup">
                    <div class="vendor-category">
                        <span class="vendor-category-badge beauty">
                            <i class="fas fa-paint-brush me-1"></i> Beauty
                        </span>
                    </div>
                </div>
                <div class="card-body">
                    <div class="d-flex justify-content-between mb-2">
                        <h5 class="card-title mb-0">Glamour Bridal Makeup</h5>
                        <div class="vendor-rating-small">
                            <i class="fas fa-star"></i>
                            <span>4.8</span>
                        </div>
                    </div>
                    <p class="card-text description">Professional makeup artists specializing in bridal beauty. We enhance your natural beauty and ensure your look lasts all day.</p>
                    <div class="d-flex justify-content-between align-items-end mt-3">
                        <div class="price">
                            <span>$300 - $800</span>
                        </div>
                        <a href="#" class="btn-outline">Details</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Pagination -->
    <nav class="mt-5">
        <ul class="pagination justify-content-center">
            <li class="page-item disabled">
                <a class="page-link" href="#" tabindex="-1" aria-disabled="true">
                    <i class="fas fa-chevron-left"></i>
                </a>
            </li>
            <li class="page-item active"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
                <a class="page-link" href="#">
                    <i class="fas fa-chevron-right"></i>
                </a>
            </li>
        </ul>
    </nav>
</div>

<!-- Call to Action Section -->
<div class="container-fluid cta-section py-5 mb-5">
    <div class="container text-center py-3">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="zoom-in">
                    <h3 class="mb-4">Are you a wedding vendor?</h3>
                    <p class="lead mb-4">Join our platform to showcase your services to thousands of couples planning their special day</p>
                    <a href="#" class="btn-cta">
                        <i class="fas fa-handshake me-2"></i> Partner with Us
                        <div class="btn-cta-overlay"></div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    /* Wedding Pink Theme Styles for Vendors Page */
    :root {
        --primary: #d35f91;
        --primary-light: #f5a9cb;
        --primary-dark: #b74177;
        --secondary-light: #faf4f7;
        --text-color: #333;
        --white: #ffffff;
        --shadow-sm: 0 2px 10px rgba(211, 95, 145, 0.08);
        --shadow-md: 0 5px 15px rgba(211, 95, 145, 0.12);
        --shadow-hover: 0 8px 25px rgba(211, 95, 145, 0.2);
        --transition-normal: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
    }

    /* Typography */
    .cursive-text {
        font-family: 'Great Vibes', cursive;
        color: var(--primary);
        line-height: 1.2;
    }

    /* Enhanced Hero Section */
    .vendor-hero {
        background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url('assets/images/vendorhero.jpg');
        background-size: cover;
        background-position: center;
        color: white;
        position: relative;
    }

    .vendor-hero::after {
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

    /* Search form styling */
    .search-form .input-group {
        border-radius: 50px;
        overflow: hidden;
        box-shadow: 0 5px 20px rgba(0, 0, 0, 0.15);
    }

    .search-form .input-group-text {
        background-color: white;
        border: none;
        color: var(--primary);
        padding-left: 20px;
    }

    .search-form .form-control {
        border: none;
        padding: 15px 20px;
        font-size: 16px;
    }

    .search-form .form-control:focus {
        box-shadow: none;
    }

    .search-form .btn-search {
        background: linear-gradient(135deg, var(--primary), var(--primary-dark));
        border: none;
        color: white;
        padding: 15px 30px;
        border-radius: 0 50px 50px 0;
        position: relative;
        overflow: hidden;
        transition: var(--transition-normal);
    }

    .search-form .btn-search span {
        position: relative;
        z-index: 2;
        transition: var(--transition-normal);
    }

    .search-form .btn-search i {
        margin-left: 8px;
        position: relative;
        z-index: 2;
        transition: var(--transition-normal);
    }

    .search-form .btn-search:hover {
        box-shadow: 0 5px 15px rgba(211, 95, 145, 0.4);
    }

    .search-form .btn-search:hover i {
        transform: translateX(4px);
    }

    /* Filter section styling */
    .filter-card {
        background: #fff;
        border-radius: 15px;
        box-shadow: var(--shadow-sm);
        padding: 1rem;
        transition: var(--transition-normal);
        border: 1px solid rgba(211, 95, 145, 0.1);
    }

    .filter-card:hover {
        box-shadow: var(--shadow-md);
    }

    .filter-group {
        position: relative;
        margin-bottom: 0.5rem;
    }

    .filter-group .form-label {
        display: block;
        margin-bottom: 0.5rem;
        color: var(--primary);
        font-weight: 600;
        font-size: 0.9rem;
    }

    .filter-group .form-select {
        border-radius: 10px;
        border: 1px solid rgba(211, 95, 145, 0.2);
        padding: 10px 15px;
        transition: var(--transition-normal);
        appearance: none;
        background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 16 16'%3e%3cpath fill='none' stroke='%23d35f91' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M2 5l6 6 6-6'/%3e%3c/svg%3e");
        background-repeat: no-repeat;
        background-position: right 0.75rem center;
        background-size: 16px 12px;
    }

    .filter-group .form-select:focus {
        border-color: var(--primary);
        box-shadow: 0 0 0 0.25rem rgba(211, 95, 145, 0.25);
        outline: none;
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

    /* Featured vendor cards */
    .vendor-card-featured {
        background: #fff;
        border-radius: 15px;
        overflow: hidden;
        box-shadow: var(--shadow-md);
        transition: var(--transition-normal);
        border: none;
    }

    .vendor-card-featured:hover {
        transform: translateY(-5px);
        box-shadow: var(--shadow-hover);
    }

    .vendor-card-featured .card-title {
        color: var(--primary-dark);
        font-weight: 600;
        font-size: 1.25rem;
    }

    .vendor-card-featured .location {
        font-size: 0.9rem;
        color: #666;
    }

    .vendor-card-featured .location i {
        color: var(--primary);
    }

    .vendor-card-featured .description {
        display: -webkit-box;
        -webkit-line-clamp: 3;
        -webkit-box-orient: vertical;
        overflow: hidden;
        font-size: 0.95rem;
    }

    .vendor-card-featured .featured-badge {
        position: absolute;
        top: 15px;
        left: 0;
        background: linear-gradient(135deg, var(--primary), var(--primary-dark));
        color: white;
        padding: 5px 15px;
        border-radius: 0 50px 50px 0;
        font-weight: 600;
        font-size: 0.8rem;
        box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
    }

    /* Regular vendor cards */
    .vendor-card {
        position: relative;
        border-radius: 15px;
        overflow: hidden;
        transition: var(--transition-normal);
        box-shadow: var(--shadow-sm);
        background: white;
        border: none;
        height: 100%;
        opacity: 0;
    }

    .vendor-card.animated {
        opacity: 1;
    }

    .vendor-card:hover {
        transform: translateY(-5px);
        box-shadow: var(--shadow-hover);
    }

    .vendor-image-wrapper {
        position: relative;
        height: 200px;
        overflow: hidden;
    }

    .vendor-image-wrapper img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        transition: transform 0.5s ease;
    }

    .vendor-card:hover .vendor-image-wrapper img {
        transform: scale(1.05);
    }

    .vendor-category {
        position: absolute;
        bottom: 15px;
        left: 15px;
    }

    .vendor-card .card-body {
        padding: 1.25rem;
    }

    .vendor-card .card-title {
        font-weight: 600;
        color: var(--primary-dark);
    }

    .vendor-card .description {
        display: -webkit-box;
        -webkit-line-clamp: 3;
        -webkit-box-orient: vertical;
        overflow: hidden;
        font-size: 0.9rem;
        color: #666;
        margin-bottom: 1rem;
        line-height: 1.5;
    }

    /* Vendor category badges with different colors */
    .vendor-category-badge {
        display: inline-flex;
        align-items: center;
        justify-content: center;
        padding: 5px 12px;
        border-radius: 30px;
        font-size: 0.75rem;
        font-weight: 600;
        color: white;
    }

    .vendor-category-badge.venue {
        background-color: #9c27b0;
    }

    .vendor-category-badge.catering {
        background-color: #4caf50;
    }

    .vendor-category-badge.photo {
        background-color: #2196f3;
    }

    .vendor-category-badge.florist {
        background-color: #8bc34a;
    }

    .vendor-category-badge.entertainment {
        background-color: #ff5722;
    }

    .vendor-category-badge.cake {
        background-color: #ff9800;
    }

    .vendor-category-badge.planner {
        background-color: var(--primary);
    }

    .vendor-category-badge.beauty {
        background-color: #e91e63;
    }

    /* Ratings */
    .vendor-rating i, .vendor-rating-small i {
        color: #ffca28;
    }

    .vendor-rating {
        font-size: 0.85rem;
    }

    .vendor-rating-small {
        display: inline-flex;
        align-items: center;
        background-color: rgba(255, 202, 40, 0.1);
        padding: 3px 8px;
        border-radius: 20px;
        font-size: 0.75rem;
        font-weight: 600;
    }

    .vendor-rating-small i {
        margin-right: 4px;
    }

    /* Price styling */
    .price {
        font-size: 0.9rem;
    }

    .price span {
        color: var(--primary);
        font-weight: 700;
    }

    .price small {
        color: #888;
        font-size: 0.75rem;
    }

    /* Button styles */
    .btn-view {
        display: inline-flex;
        align-items: center;
        background: linear-gradient(135deg, var(--primary), var(--primary-dark));
        color: white;
        padding: 8px 16px;
        border-radius: 50px;
        text-decoration: none;
        font-size: 0.9rem;
        font-weight: 600;
        transition: all 0.3s ease;
        box-shadow: 0 3px 10px rgba(211, 95, 145, 0.3);
    }

    .btn-view span {
        position: relative;
        z-index: 2;
    }

    .btn-view i {
        margin-left: 8px;
        transition: transform 0.3s ease;
    }

    .btn-view:hover {
        box-shadow: 0 5px 15px rgba(211, 95, 145, 0.4);
        color: white;
        transform: translateY(-2px);
    }

    .btn-view:hover i {
        transform: translateX(4px);
    }

    .btn-outline {
        display: inline-flex;
        align-items: center;
        background: transparent;
        color: var(--primary);
        border: 1px solid var(--primary);
        padding: 6px 16px;
        border-radius: 50px;
        text-decoration: none;
        font-size: 0.85rem;
        font-weight: 600;
        transition: all 0.3s ease;
    }

    .btn-outline:hover {
        background: var(--primary);
        color: white;
        transform: translateY(-2px);
    }

    /* Pagination styling */
    .pagination {
        gap: 5px;
    }

    .pagination .page-link {
        width: 40px;
        height: 40px;
        display: flex;
        align-items: center;
        justify-content: center;
        border-radius: 50%;
        border: none;
        color: var(--text-color);
        font-weight: 500;
        transition: var(--transition-normal);
    }

    .pagination .page-item.active .page-link {
        background-color: var(--primary);
        box-shadow: 0 4px 10px rgba(211, 95, 145, 0.3);
    }

    .pagination .page-link:hover:not(.active) {
        background-color: var(--primary-light);
        color: var(--primary-dark);
    }

    /* Call to Action Section */
    .cta-section {
        background: linear-gradient(135deg, rgba(211, 95, 145, 0.95), rgba(183, 65, 119, 0.9)), 
                  url('https://images.unsplash.com/photo-1519741497674-611481863552');
        background-size: cover;
        background-position: center;
        color: white;
        position: relative;
    }

    .cta-section h3 {
        font-family: 'Great Vibes', cursive;
        font-size: 3rem;
        text-shadow: 2px 2px 8px rgba(0,0,0,0.2);
    }

    .btn-cta {
        display: inline-flex;
        align-items: center;
        background: white;
        color: var(--primary);
        padding: 12px 30px;
        border-radius: 50px;
        text-decoration: none;
        font-weight: 600;
        font-size: 1rem;
        transition: all 0.3s ease;
        position: relative;
        overflow: hidden;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
    }

    .btn-cta i {
        margin-right: 8px;
    }

    .btn-cta:hover {
        transform: translateY(-3px);
        color: var(--primary-dark);
    }

    .btn-cta-overlay {
        position: absolute;
        top: 0;
        left: -100%;
        width: 100%;
        height: 100%;
        background: linear-gradient(90deg, rgba(255,255,255,0) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 100%);
        transition: all 0.6s ease;
    }

    .btn-cta:hover .btn-cta-overlay {
        left: 100%;
    }

    /* Animations */
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

    @keyframes slideInLeft {
        from {
            opacity: 0;
            transform: translateX(-50px);
        }
        to {
            opacity: 1;
            transform: translateX(0);
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

    @keyframes zoomIn {
        from {
            opacity: 0;
            transform: scale(0.95);
        }
        to {
            opacity: 1;
            transform: scale(1);
        }
    }

    .fade-in-up.animated {
        animation: fadeInUp 0.6s ease-out forwards;
    }

    .slide-in-left.animated {
        animation: slideInLeft 0.6s ease-out forwards;
    }

    .slide-in-right.animated {
        animation: slideInRight 0.6s ease-out forwards;
    }

    .zoom-in.animated {
        animation: zoomIn 0.6s ease-out forwards;
    }
</style>

<script>
    // Enhanced animations and interactions for vendor page
    document.addEventListener('DOMContentLoaded', function() {
        // Animate elements as they scroll into view
        const animateOnScroll = function() {
            const elements = document.querySelectorAll('.fade-in-up, .slide-in-left, .slide-in-right, .zoom-in, .vendor-card, .vendor-card-featured');
            
            elements.forEach(element => {
                const position = element.getBoundingClientRect();
                
                // If element is in viewport
                if(position.top < window.innerHeight * 0.9 && position.bottom >= 0) {
                    // Add animation class if not already animated
                    if (!element.classList.contains('animated')) {
                        element.classList.add('animated');
                        
                        // Add delay if specified
                        const delay = element.getAttribute('data-delay');
                        if (delay) {
                            element.style.animationDelay = delay + 'ms';
                        }
                    }
                }
            });
        };
        
        // Run animation check initially and on scroll
        animateOnScroll();
        window.addEventListener('scroll', animateOnScroll);

        // Add hover animations to buttons
        document.querySelectorAll('.btn-view, .btn-outline').forEach(button => {
            button.addEventListener('mouseenter', function() {
                const icon = this.querySelector('i');
                if (icon) {
                    icon.style.transition = 'transform 0.3s ease';
                    icon.style.transform = 'translateX(4px)';
                }
            });
            
            button.addEventListener('mouseleave', function() {
                const icon = this.querySelector('i');
                if (icon) {
                    icon.style.transform = 'translateX(0)';
                }
            });
        });

        // Form select animation
        document.querySelectorAll('.form-select').forEach(select => {
            select.addEventListener('change', function() {
                this.classList.add('selected');
                
                setTimeout(() => {
                    const label = this.previousElementSibling;
                    if (label) {
                        label.classList.add('highlight');
                        setTimeout(() => {
                            label.classList.remove('highlight');
                        }, 1000);
                    }
                }, 100);
            });
        });

        // CTA button shimmering effect
        const ctaButton = document.querySelector('.btn-cta');
        if (ctaButton) {
            setInterval(() => {
                const overlay = ctaButton.querySelector('.btn-cta-overlay');
                if (overlay) {
                    overlay.style.left = '-100%';
                    setTimeout(() => {
                        overlay.style.left = '100%';
                    }, 50);
                }
            }, 3000);
        }
    });
</script>

<%@ include file="/WEB-INF/components/footer.jsp" %>