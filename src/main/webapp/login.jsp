<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | Wedding Planner</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <!-- FontAwesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Animate.css for smoother animations -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&family=Great+Vibes&display=swap');
        
        body {
            background: url('assets/images/wallpaper.jpg') no-repeat center center fixed;
            background-size: cover;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Poppins', sans-serif;
            position: relative;
            overflow: hidden;
        }
        
        #particles-js {
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            z-index: 1;
        }
        
        .login-container {
            width: 450px; /* Appropriate width */
            max-width: 95%;
            margin: 100px auto;
            padding: 40px;
            border-radius: 25px;
            background: rgba(255, 255, 255, 0.85); /* Better opacity for readability */
            backdrop-filter: blur(15px);
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            position: relative;
            z-index: 2;
            border: 1px solid rgba(255, 255, 255, 0.18);
        }
        
        .login-container:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
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
            color: #d35f91; /* Wedding pink color */
            z-index: 3;
            transition: all 0.3s ease;
        }
        
        .input-group input {
            height: 55px; /* Taller inputs */
            padding-left: 45px;
            font-size: 16px;
            border: 1px solid #ced4da;
            background: rgba(255, 255, 255, 0.9);
            transition: all 0.3s ease;
            border-radius: 12px; /* Rounded corners */
        }
        
        .input-group input:focus {
            box-shadow: 0 0 0 3px rgba(211, 95, 145, 0.25); /* Wedding pink shadow */
            background: #fff;
            border-color: #d35f91;
        }
        
        .input-group input:focus + i {
            color: #d35f91;
            transform: translateY(-50%) scale(1.2);
        }
        
        .form-control {
            border-radius: 12px; /* Rounded corners */
            border: 1px solid #ced4da;
            transition: all 0.3s ease;
        }
        
        .form-control:focus {
            border-color: #d35f91;
            box-shadow: 0 0 0 0.25rem rgba(211, 95, 145, 0.25);
        }
        
        /* Fixed floating label styling */
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
        top: -12px; /* Moved up slightly */
        left: 20px;
        font-size: 12px;
        padding: 0 8px; /* Wider padding */
        background-color: white; /* Solid background color */
        border-radius: 10px;
        color: #d35f91;
        z-index: 5; /* Higher z-index */
        box-shadow: 0 0 0 1px #fff; /* White border to handle any gaps */
    }
        .btn-primary {
            border-radius: 12px;
            background: linear-gradient(135deg, #d35f91 0%, #b74177 100%); /* Wedding pink gradient */
            border: none;
            padding: 14px 20px; /* Taller button */
            font-weight: 600;
            letter-spacing: 0.5px;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(211, 95, 145, 0.3);
        }
        
        .btn-primary:hover {
            background: linear-gradient(135deg, #c7578a 0%, #a33969 100%);
            transform: translateY(-3px);
            box-shadow: 0 7px 20px rgba(211, 95, 145, 0.4);
        }
        
        .btn-primary:active {
            transform: translateY(-1px);
            box-shadow: 0 3px 10px rgba(211, 95, 145, 0.4);
        }
        
        .login-icon {
            font-size: 48px;
            background: linear-gradient(135deg, #d35f91 0%, #b74177 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 20px;
            display: inline-block;
        }
        
        h3 {
            font-family: 'Great Vibes', cursive; /* Wedding-style font */
            font-size: 42px;
            color: #b74177;
            margin-bottom: 10px;
        }
        
        .subtitle {
            font-family: 'Poppins', sans-serif;
            font-size: 16px;
            font-weight: 400;
            color: #666;
            margin-bottom: 25px;
        }
        
        a {
            color: #d35f91;
            text-decoration: none;
            transition: all 0.3s;
            font-weight: 500;
        }
        
        a:hover {
            color: #b74177;
            text-decoration: none;
        }
        
        /* Enhanced alert styles */
        .alert {
            border-radius: 12px;
            padding: 15px;
            margin-top: 15px;
            position: relative;
            overflow: hidden;
            border: none;
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.1);
            animation: fadeInUp 0.5s;
        }
        
        .alert-success {
            background: linear-gradient(135deg, #a7e9c3 0%, #7fd1ae 100%);
            color: #2b6a4e;
        }
        
        .alert-danger {
            background: linear-gradient(135deg, #fab1a0 0%, #ff7675 100%);
            color: #2d3436;
        }
        
        /* Form shake animation for errors */
        .form-shake {
            animation: shake 0.82s cubic-bezier(.36,.07,.19,.97) both;
        }
        
        @keyframes shake {
            10%, 90% { transform: translate3d(-1px, 0, 0); }
            20%, 80% { transform: translate3d(2px, 0, 0); }
            30%, 50%, 70% { transform: translate3d(-4px, 0, 0); }
            40%, 60% { transform: translate3d(4px, 0, 0); }
        }
        
        /* Remember me checkbox */
        .form-check-input {
            width: 1.2em;
            height: 1.2em;
            margin-top: 0.25em;
            border-radius: 0.25em;
            border: 1px solid #d35f91;
        }
        
        .form-check-input:checked {
            background-color: #d35f91;
            border-color: #d35f91;
        }
    </style>
</head>
<body>
    <!-- Wedding-themed particles container -->
    <div id="particles-js"></div>

    <div class="container">
        <div class="login-container animate__animated animate__fadeIn">
            <i class="fa-solid fa-heart login-icon"></i>
            <h3>Welcome Back</h3>
            <p class="subtitle">Sign in to your wedding planning account</p>

            <form id="loginForm">
                <div class="input-group">
                    <input type="email" class="form-control" id="email" placeholder=" " required>
                    <i class="fa-solid fa-envelope"></i>
                    <span class="floating-label">Email Address</span>
                </div>

                <div class="input-group">
                    <input type="password" class="form-control" id="password" placeholder=" " required>
                    <i class="fa-solid fa-lock"></i>
                    <span class="floating-label">Password</span>
                </div>

                <div class="form-check text-start mb-4">
                    <input class="form-check-input" type="checkbox" id="rememberMe">
                    <label class="form-check-label" for="rememberMe">
                        Remember me
                    </label>
                    <a href="#" class="float-end">Forgot Password?</a>
                </div>

                <div class="d-grid">
                    <button type="submit" class="btn btn-primary py-3">
                        <span class="btn-text">Login <i class="fa-solid fa-arrow-right ms-2"></i></span>
                        <span class="btn-loader d-none">
                            <i class="fas fa-circle-notch fa-spin"></i> Signing in...
                        </span>
                    </button>
                </div>
            </form>

            <p class="mt-4">
                Don't have an account? <a href="register.jsp" class="fw-bold">Sign Up</a>
            </p>

            <div id="loginMessage" class="mt-3"></div>
        </div>
    </div>

    <!-- jQuery for AJAX -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
    <!-- Particles.js -->
    <script src="https://cdn.jsdelivr.net/npm/particles.js@2.0.0/particles.min.js"></script>
    
    <!-- GSAP for advanced animations -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.4/gsap.min.js"></script>

    <script>
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
                    "direction": "bottom",
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

        $(document).ready(function() {
            // Fix for floating labels
            $(".form-control").on("focus blur input", function() {
                if ($(this).val().length > 0) {
                    $(this).siblings(".floating-label").addClass("active");
                } else {
                    $(this).siblings(".floating-label").removeClass("active");
                }
            });

            // Form validation with visual feedback
            $(".form-control").on("input", function() {
                if($(this).val().length > 0) {
                    $(this).addClass("is-valid");
                } else {
                    $(this).removeClass("is-valid");
                }
            });

            // Form submission with AJAX and enhanced visual feedback
            $("#loginForm").submit(function(event) {
                event.preventDefault();
                
                const email = $("#email").val();
                const password = $("#password").val();
                
                // Simple frontend validation
                if(!email || !password) {
                    $("#loginForm").addClass("form-shake");
                    setTimeout(() => {
                        $("#loginForm").removeClass("form-shake");
                    }, 820);
                    
                    $("#loginMessage").html(
                        '<div class="alert alert-danger animate__animated animate__fadeInUp">' +
                        '<i class="fas fa-exclamation-circle me-2"></i> Please fill in all fields</div>'
                    );
                    return;
                }

                // Add loading state to button
                const submitBtn = $(this).find('button[type="submit"]');
                submitBtn.prop('disabled', true);
                submitBtn.find('.btn-text').addClass('d-none');
                submitBtn.find('.btn-loader').removeClass('d-none');

                $.ajax({
                    type: "POST",
                    url: "LoginServlet",
                    data: {
                        email: email,
                        password: password,
                        rememberMe: $("#rememberMe").is(":checked")
                    },
                    success: function(response) {
                        if(response.success) {
                            $("#loginMessage").html(
                                '<div class="alert alert-success animate__animated animate__fadeInUp">' + 
                                '<i class="fas fa-check-circle me-2"></i>' + response.message + '</div>'
                            );
                            
                            // Successful login animation
                            gsap.to(".login-container", {
                                y: -20,
                                opacity: 0.8,
                                duration: 0.5,
                                onComplete: function() {
                                    // Redirect based on role
                                    setTimeout(function() {
                                        window.location.href = response.redirect;
                                    }, 800);
                                }
                            });
                        } else {
                            $("#loginMessage").html(
                                '<div class="alert alert-danger animate__animated animate__fadeInUp">' +
                                '<i class="fas fa-exclamation-circle me-2"></i>' + response.message + '</div>'
                            );
                            
                            // Reset button
                            submitBtn.prop('disabled', false);
                            submitBtn.find('.btn-text').removeClass('d-none');
                            submitBtn.find('.btn-loader').addClass('d-none');
                            
                            // Shake effect on error
                            $("#loginForm").addClass("form-shake");
                            setTimeout(() => {
                                $("#loginForm").removeClass("form-shake");
                            }, 820);
                        }
                    },
                    error: function(xhr) {
                        let errorMsg = "Login failed. Please try again.";
                        try {
                            if(xhr.responseJSON && xhr.responseJSON.message) {
                                errorMsg = xhr.responseJSON.message;
                            }
                        } catch(e) {
                            console.error("Error parsing response", e);
                        }
                        
                        $("#loginMessage").html(
                            '<div class="alert alert-danger animate__animated animate__fadeInUp">' +
                            '<i class="fas fa-times-circle me-2"></i>' + errorMsg + '</div>'
                        );
                        
                        // Reset button
                        submitBtn.prop('disabled', false);
                        submitBtn.find('.btn-text').removeClass('d-none');
                        submitBtn.find('.btn-loader').addClass('d-none');
                        
                        // Shake effect on error
                        $("#loginForm").addClass("form-shake");
                        setTimeout(() => {
                            $("#loginForm").removeClass("form-shake");
                        }, 820);
                    }
                });
            });

            // Initialize GSAP animations
            gsap.from(".login-container", {
                y: 50,
                opacity: 0,
                duration: 1,
                ease: "power3.out"
            });
        });
    </script>
</body>
</html>