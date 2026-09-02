<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>NexusShop · glassmorphic e‑commerce</title>

    <!-- Google Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&family=Space+Grotesk:wght@500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: radial-gradient(circle at 10% 30%, #f0f4ff, #dbeafe);
            font-family: 'Inter', sans-serif;
            min-height: 100vh;
            padding: 1.5rem 1rem;
            color: #0b1b33;
        }

        /* glassmorphism core */
        .glass {
            background: rgba(255, 255, 255, 0.25);
            backdrop-filter: blur(14px) saturate(180%);
            -webkit-backdrop-filter: blur(14px) saturate(180%);
            border: 1px solid rgba(255, 255, 255, 0.4);
            box-shadow: 0 20px 40px -12px rgba(0, 20, 40, 0.25), inset 0 1px 0 rgba(255, 255, 255, 0.6);
            border-radius: 2rem;
        }

        .glass-card {
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(10px) saturate(170%);
            -webkit-backdrop-filter: blur(10px) saturate(170%);
            border: 1px solid rgba(255, 255, 255, 0.5);
            box-shadow: 0 12px 28px -8px rgba(0, 20, 40, 0.15);
            border-radius: 1.75rem;
            transition: all 0.2s ease;
        }

        .glass-card:hover {
            transform: translateY(-5px);
            background: rgba(255, 255, 255, 0.35);
            box-shadow: 0 24px 48px -12px rgba(0, 40, 80, 0.25);
        }

        .container {
            max-width: 1300px;
            margin: 0 auto;
        }

        /* Header */
        .header-glass {
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(16px) saturate(180%);
            -webkit-backdrop-filter: blur(16px) saturate(180%);
            border: 1px solid rgba(255, 255, 255, 0.5);
            border-radius: 3rem;
            padding: 0.6rem 1.8rem;
            margin-bottom: 2.5rem;
            box-shadow: 0 12px 30px -8px rgba(0, 30, 60, 0.1);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 1rem;
        }

        .brand {
            font-family: 'Space Grotesk', sans-serif;
            font-weight: 700;
            font-size: 1.8rem;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, #0a2540, #1b4a6b);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .brand i {
            -webkit-text-fill-color: #00b4ff;
            margin-right: 4px;
        }

        nav {
            display: flex;
            gap: 0.5rem;
            flex-wrap: wrap;
        }

        nav a {
            text-decoration: none;
            font-weight: 500;
            padding: 0.5rem 1.2rem;
            border-radius: 3rem;
            color: #0b1b33;
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(4px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            transition: 0.15s;
            font-size: 0.95rem;
            display: inline-flex;
            align-items: center;
            gap: 8px;
        }

        nav a:hover {
            background: rgba(255, 255, 255, 0.5);
            border-color: #ffffff;
            transform: scale(1.02);
        }

        .search-wrap {
            display: flex;
            align-items: center;
            background: rgba(255, 255, 255, 0.3);
            backdrop-filter: blur(6px);
            border-radius: 3rem;
            padding: 0.25rem 0.25rem 0.25rem 1.4rem;
            border: 1px solid rgba(255, 255, 255, 0.3);
        }

        .search-wrap input {
            border: none;
            background: transparent;
            padding: 0.6rem 0.2rem;
            font-size: 0.95rem;
            width: 180px;
            outline: none;
            color: #0b1b33;
        }

        .search-wrap input::placeholder {
            color: rgba(11, 27, 51, 0.45);
            font-weight: 400;
        }

        .search-wrap button {
            background: rgba(255, 255, 255, 0.5);
            border: none;
            border-radius: 3rem;
            padding: 0.6rem 1.2rem;
            cursor: pointer;
            font-weight: 600;
            backdrop-filter: blur(4px);
            transition: 0.15s;
            color: #0b1b33;
        }

        .search-wrap button:hover {
            background: #ffffffcc;
        }

        .header-actions {
            display: flex;
            gap: 0.8rem;
            align-items: center;
        }

        .icon-btn {
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(4px);
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 3rem;
            padding: 0.6rem 1rem;
            color: #0b1b33;
            transition: 0.15s;
            font-size: 1rem;
        }

        .icon-btn:hover {
            background: rgba(255, 255, 255, 0.6);
        }

        .cart-badge {
            position: relative;
            margin-left: 4px;
        }

        .cart-count {
            position: absolute;
            top: -10px;
            right: -12px;
            background: #0a2540;
            color: white;
            font-size: 0.7rem;
            font-weight: 700;
            width: 22px;
            height: 22px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            backdrop-filter: blur(6px);
            border: 2px solid rgba(255, 255, 255, 0.5);
        }

        .mobile-toggle {
            display: none;
            background: transparent;
            border: none;
            font-size: 1.6rem;
            color: #0b1b33;
        }

        /* Hero */
        .hero-glass {
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(12px) saturate(180%);
            -webkit-backdrop-filter: blur(12px) saturate(180%);
            border: 1px solid rgba(255, 255, 255, 0.5);
            border-radius: 3rem;
            padding: 3rem 2rem;
            text-align: center;
            margin-bottom: 3rem;
            box-shadow: 0 20px 40px -10px rgba(0, 20, 40, 0.1);
        }

        .hero-glass h1 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 3.2rem;
            font-weight: 700;
            letter-spacing: -0.02em;
            background: linear-gradient(145deg, #0a2540, #1b5a7a);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .hero-glass p {
            max-width: 600px;
            margin: 0.8rem auto 1.8rem;
            font-size: 1.1rem;
            color: #1a3450;
            font-weight: 450;
        }

        .btn-group {
            display: flex;
            gap: 1rem;
            justify-content: center;
            flex-wrap: wrap;
        }

        .btn {
            border: none;
            padding: 0.8rem 2rem;
            border-radius: 3rem;
            font-weight: 600;
            background: rgba(255, 255, 255, 0.35);
            backdrop-filter: blur(8px);
            border: 1px solid rgba(255, 255, 255, 0.5);
            transition: 0.15s;
            cursor: pointer;
            font-size: 1rem;
        }

        .btn-primary {
            background: #0a2540;
            color: white;
            border: none;
            box-shadow: 0 6px 14px rgba(10, 37, 64, 0.2);
        }

        .btn-primary:hover {
            background: #1b3a5a;
            transform: scale(1.02);
        }

        .btn-outline {
            background: rgba(255, 255, 255, 0.2);
            border: 1px solid rgba(255, 255, 255, 0.5);
        }

        .btn-outline:hover {
            background: rgba(255, 255, 255, 0.5);
        }

        /* sections */
        .section-title {
            font-family: 'Space Grotesk', sans-serif;
            font-weight: 600;
            font-size: 2rem;
            margin-bottom: 0.2rem;
        }

        .section-sub {
            color: #1f3d5a;
            opacity: 0.8;
            margin-bottom: 1.8rem;
        }

        .grid-cat {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 1.5rem;
            margin-bottom: 3rem;
        }

        .cat-item {
            text-align: center;
            padding: 1.2rem 0.5rem;
            cursor: pointer;
        }

        .cat-item i {
            font-size: 2.2rem;
            color: #0a2540;
            margin-bottom: 6px;
        }

        .cat-item h4 {
            font-weight: 600;
            font-size: 1rem;
        }

        /* products */
        .grid-prod {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 2rem;
            margin-bottom: 3rem;
        }

        .product-card {
            padding: 0 0 1.2rem 0;
            overflow: hidden;
        }

        .product-card img {
            width: 100%;
            height: 210px;
            object-fit: cover;
            border-radius: 1.75rem 1.75rem 0 0;
        }

        .product-body {
            padding: 1rem 1.2rem 0.2rem;
        }

        .product-body h5 {
            font-weight: 600;
            font-size: 1.1rem;
        }

        .price-row {
            display: flex;
            align-items: center;
            gap: 1rem;
            margin-top: 0.2rem;
        }

        .price {
            font-weight: 700;
            font-size: 1.3rem;
        }

        .old-price {
            text-decoration: line-through;
            opacity: 0.5;
            font-size: 0.95rem;
        }

        .rating {
            color: #fbbf24;
            letter-spacing: 2px;
            font-size: 0.9rem;
        }

        .product-actions {
            display: flex;
            gap: 0.5rem;
            padding: 0.8rem 1.2rem 0.2rem;
        }

        .add-btn {
            flex: 1;
            background: rgba(10, 37, 64, 0.8);
            backdrop-filter: blur(4px);
            border: none;
            border-radius: 3rem;
            padding: 0.6rem;
            color: white;
            font-weight: 600;
            cursor: pointer;
            transition: 0.15s;
        }

        .add-btn:hover {
            background: #0a2540;
            transform: scale(1.01);
        }

        .wish-btn {
            background: rgba(255, 255, 255, 0.2);
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 3rem;
            padding: 0.6rem 1rem;
            cursor: pointer;
            transition: 0.15s;
        }

        .wish-btn:hover {
            background: rgba(255, 255, 255, 0.5);
        }

        /* flash deal */
        .deal-glass {
            display: flex;
            flex-wrap: wrap;
            gap: 1.5rem;
            align-items: center;
            padding: 1.5rem;
            margin-bottom: 3rem;
        }

        .deal-glass img {
            width: 100%;
            max-width: 280px;
            border-radius: 1.75rem;
            object-fit: cover;
            height: 200px;
            flex: 1 1 200px;
        }

        .deal-content {
            flex: 2 1 280px;
        }

        .timer-box {
            display: flex;
            gap: 0.8rem;
            margin: 1rem 0;
        }

        .time-unit {
            background: rgba(10, 37, 64, 0.1);
            backdrop-filter: blur(6px);
            padding: 0.5rem 1rem;
            border-radius: 1.2rem;
            text-align: center;
            min-width: 70px;
            border: 1px solid rgba(255, 255, 255, 0.3);
        }

        .time-unit span {
            font-weight: 700;
            font-size: 1.6rem;
            display: block;
            line-height: 1;
        }

        .time-unit small {
            font-size: 0.7rem;
            opacity: 0.7;
        }

        /* testimonials */
        .testimonial-grid {
            display: flex;
            gap: 1.8rem;
            overflow-x: auto;
            padding: 0.5rem 0.2rem 1.5rem;
            margin-bottom: 2.5rem;
            scrollbar-width: thin;
        }

        .testimonial-card {
            min-width: 280px;
            padding: 1.6rem;
            flex: 0 0 auto;
        }

        .testimonial-card .rating {
            font-size: 1rem;
        }

        .testimonial-card p {
            margin: 0.5rem 0;
            font-style: italic;
        }

        .avatar {
            display: flex;
            align-items: center;
            gap: 0.8rem;
            margin-top: 0.8rem;
        }

        .avatar img {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid rgba(255, 255, 255, 0.5);
        }

        /* newsletter */
        .newsletter-glass {
            padding: 2.5rem 2rem;
            text-align: center;
            margin-bottom: 2rem;
        }

        .newsletter-glass input {
            padding: 0.8rem 1.5rem;
            border-radius: 3rem;
            border: 1px solid rgba(255, 255, 255, 0.5);
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(4px);
            width: 280px;
            max-width: 100%;
            font-size: 0.95rem;
            outline: none;
            color: #0b1b33;
        }

        .newsletter-glass input::placeholder {
            color: #2a4a6a;
        }

        .newsletter-glass .btn {
            margin-left: 0.5rem;
        }

        /* footer */
        .footer-glass {
            padding: 2rem 1.8rem;
            margin-top: 2rem;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
            gap: 1.5rem;
        }

        .footer-glass .brand {
            font-size: 1.6rem;
        }

        .footer-links {
            display: flex;
            gap: 2rem;
        }

        .footer-links a {
            opacity: 0.7;
            text-decoration: none;
            color: #0b1b33;
            font-weight: 500;
        }

        .footer-links a:hover {
            opacity: 1;
        }

        /* responsive */
        @media (max-width: 860px) {
            .header-inner {
                flex-direction: column;
                align-items: stretch;
                gap: 0.8rem;
            }
            .search-wrap {
                width: 100%;
            }
            .search-wrap input {
                width: 100%;
            }
            nav {
                justify-content: center;
            }
            .mobile-toggle {
                display: block;
            }
            .nav-desktop {
                display: none;
            }
            .hero-glass h1 {
                font-size: 2.4rem;
            }
            .grid-prod {
                grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            }
        }

        @media (max-width: 500px) {
            .grid-cat {
                grid-template-columns: repeat(2, 1fr);
            }
            .deal-glass {
                flex-direction: column;
            }
            .timer-box {
                flex-wrap: wrap;
            }
            .newsletter-glass input {
                width: 100%;
                margin-bottom: 0.6rem;
            }
            .footer-glass {
                flex-direction: column;
                text-align: center;
            }
        }

        .hidden {
            display: none !important;
        }
        .flex-center {
            display: flex;
            align-items: center;
            gap: 6px;
        }
        .badge {
            background: rgba(10, 37, 64, 0.15);
            border-radius: 3rem;
            padding: 0.2rem 0.8rem;
            font-size: 0.7rem;
            font-weight: 600;
        }
    </style>
</head>
<body>
    <div class="container">

        <!-- header glass -->
        <header class="header-glass">
            <div class="header-inner">
                <div style="display:flex;align-items:center;gap:1rem;">
                    <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
                    <span class="brand"><i class="fas fa-gem"></i> NexusShop</span>
                </div>

                <nav class="nav-desktop" id="mainNav">
                    <a href="#"><i class="fas fa-home"></i> Home</a>
                    <a href="#"><i class="fas fa-th-large"></i> Categories</a>
                    <a href="#"><i class="fas fa-fire"></i> Trending</a>
                    <a href="#deals"><i class="fas fa-tag"></i> Deals</a>
                </nav>

                <div style="display:flex;align-items:center;gap:1rem;flex-wrap:wrap;">
                    <div class="search-wrap">
                        <input type="search" id="searchInput" placeholder="Search..." />
                        <button id="searchBtn"><i class="fas fa-search"></i></button>
                    </div>
                    <div class="header-actions">
                        <a class="icon-btn" href="#"><i class="far fa-heart"></i></a>
                        <a class="icon-btn cart-badge" href="#"><i class="fas fa-shopping-cart"></i> <span class="cart-count" id="cartCount">0</span></a>
                    </div>
                </div>
            </div>

            <!-- mobile nav -->
            <div id="mobileMenu" style="display:none; padding:0.8rem 0;">
                <nav style="flex-direction:column; gap:0.4rem; display:flex;">
                    <a href="#">Home</a>
                    <a href="#">Categories</a>
                    <a href="#">Trending</a>
                    <a href="#deals">Deals</a>
                </nav>
            </div>
        </header>

        <!-- hero -->
        <section class="hero-glass">
            <h1>Winter <span style="background:linear-gradient(145deg,#00b4ff,#0a2540);-webkit-background-clip:text;-webkit-text-fill-color:transparent;">Essentials</span></h1>
            <p>Discover premium tech, fashion & accessories — with a glassy touch.</p>
            <div class="btn-group">
                <button class="btn btn-primary" id="shopNow"><i class="fas fa-bolt"></i> Shop Now</button>
                <button class="btn btn-outline" id="exploreDeals">Explore Deals</button>
            </div>
        </section>

        <!-- categories -->
        <section style="margin-bottom:2rem;">
            <h2 class="section-title">Categories</h2>
            <p class="section-sub">Browse through our curated collections</p>
            <div class="grid-cat" id="categoriesGrid"></div>
        </section>

        <!-- products -->
        <section style="margin-bottom:2rem;">
            <h2 class="section-title">Trending <i class="fas fa-arrow-trend-up" style="color:#0a2540;"></i></h2>
            <p class="section-sub">Popular picks right now</p>
            <div class="grid-prod" id="productsGrid"></div>
        </section>

        <!-- deal -->
        <section id="deals" style="margin-bottom:2rem;">
            <h2 class="section-title">Flash Sale</h2>
            <p class="section-sub">Limited time offers</p>
            <div class="deal-glass glass-card" style="display:flex; flex-wrap:wrap; gap:1.5rem; align-items:center; padding:1.8rem;">
                <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="deal" style="border-radius:2rem; flex:1 1 180px; max-width:280px; height:190px; object-fit:cover;" />
                <div class="deal-content">
                    <h3 style="font-size:1.8rem; font-weight:700;">MacBook Air M2</h3>
                    <p style="opacity:0.7;">Thin, light, next-gen performance.</p>
                    <div class="timer-box">
                        <div class="time-unit"><span id="dealDays">0</span><small>d</small></div>
                        <div class="time-unit"><span id="dealHours">00</span><small>h</small></div>
                        <div class="time-unit"><span id="dealMinutes">00</span><small>m</small></div>
                        <div class="time-unit"><span id="dealSeconds">00</span><small>s</small></div>
                    </div>
                    <div style="display:flex; align-items:center; gap:1.2rem;">
                        <span class="price">$999</span>
                        <span class="old-price">$1,199</span>
                        <span class="badge">-17%</span>
                    </div>
                    <button class="btn btn-primary" id="buyDeal" style="margin-top:0.8rem;"><i class="fas fa-cart-plus"></i> Add deal</button>
                </div>
            </div>
        </section>

        <!-- testimonials -->
        <section style="margin-bottom:2.5rem;">
            <h2 class="section-title">Trusted by <i class="far fa-smile"></i></h2>
            <p class="section-sub">Real reviews from our community</p>
            <div class="testimonial-grid" id="testimonials"></div>
        </section>

        <!-- newsletter -->
        <section style="margin-bottom:2rem;">
            <div class="newsletter-glass glass">
                <h3 style="font-size:1.8rem; font-weight:600;">Stay in the loop</h3>
                <p style="opacity:0.8;">Exclusive offers & new arrivals</p>
                <form id="newsletterForm" style="display:flex; flex-wrap:wrap; justify-content:center; gap:0.6rem;">
                    <input type="email" id="newsletterEmail" placeholder="you@example.com" required />
                    <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
                </form>
                <div id="newsletterMsg" style="margin-top:0.8rem; font-weight:500;"></div>
            </div>
        </section>

        <!-- footer -->
        <footer class="footer-glass glass">
            <span class="brand"><i class="fas fa-gem"></i> NexusShop</span>
            <div class="footer-links">
                <a href="#">About</a>
                <a href="#">Careers</a>
                <a href="#">Press</a>
                <a href="#">Support</a>
            </div>
            <span style="opacity:0.5; font-size:0.9rem;">© <span id="year"></span> — glassy edition</span>
        </footer>
    </div>

    <script>
        // ---------- DATA ----------
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
            { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
            { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128,
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, oldPrice: 2199, rating: 4, reviews: 86,
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80' },
            { id: 3, title: 'Apple Watch S8', price: 349, oldPrice: 399, rating: 5, reviews: 214,
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80' },
            { id: 4, title: 'Nike Air Max 270', price: 150, oldPrice: 179, rating: 4, reviews: 53,
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80' },
            { id: 5, title: 'Sony A7 IV', price: 2499, rating: 5, reviews: 42,
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80' },
            { id: 6, title: 'Chanel No.5', price: 120, rating: 5, reviews: 189,
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80' },
            { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67,
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80' },
            { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156,
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80' }
        ];

        const testimonials = [
            { name: 'Ava Martin', avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
                text: 'Incredible quality & fast shipping. The glass UI is a bonus!', rating: 5 },
            { name: 'Michael Lee', avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
                text: 'Smooth experience, love the modern look. Will buy again.', rating: 4 },
            { name: 'Sophia Chen', avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
                text: 'Best deals & the interface feels premium.', rating: 5 }
        ];

        // ---------- RENDER ----------
        let cartCount = 0;
        const cartEl = document.getElementById('cartCount');

        function renderCategories() {
            const grid = document.getElementById('categoriesGrid');
            grid.innerHTML = '';
            CATEGORIES.forEach(c => {
                const div = document.createElement('div');
                div.className = 'cat-item glass-card';
                div.innerHTML = `<i class="fas ${c.icon}"></i><h4>${c.name}</h4>`;
                div.addEventListener('click', () => {
                    document.getElementById('searchInput').value = c.name;
                    filterProducts(c.name);
                });
                grid.appendChild(div);
            });
        }

        function renderProducts(list) {
            const grid = document.getElementById('productsGrid');
            grid.innerHTML = '';
            list.forEach(p => {
                const card = document.createElement('div');
                card.className = 'product-card glass-card';
                card.innerHTML = `
                    <img src="${p.img}" alt="${p.title}" loading="lazy" />
                    <div class="product-body">
                        <h5>${p.title}</h5>
                        <div class="price-row">
                            <span class="price">$${p.price}</span>
                            ${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}
                        </div>
                        <div class="rating">${'★'.repeat(p.rating)}${'☆'.repeat(5-p.rating)} <span style="opacity:0.6;font-size:0.75rem;">(${p.reviews})</span></div>
                    </div>
                    <div class="product-actions">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
                        <button class="wish-btn"><i class="far fa-heart"></i></button>
                    </div>
                `;
                grid.appendChild(card);
            });
            document.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', function(e) {
                    const id = Number(this.dataset.id);
                    addToCart(id);
                });
            });
        }

        function renderTestimonials() {
            const container = document.getElementById('testimonials');
            container.innerHTML = '';
            testimonials.forEach(t => {
                const div = document.createElement('div');
                div.className = 'testimonial-card glass-card';
                div.innerHTML = `
                    <div class="rating">${'★'.repeat(t.rating)}${'☆'.repeat(5-t.rating)}</div>
                    <p>"${t.text}"</p>
                    <div class="avatar">
                        <img src="${t.avatar}" alt="${t.name}" />
                        <div><strong>${t.name}</strong> <div style="opacity:0.6;font-size:0.8rem;">verified</div></div>
                    </div>
                `;
                container.appendChild(div);
            });
        }

        function addToCart(id) {
            const p = PRODUCTS.find(x => x.id === id);
            if (!p) return;
            cartCount++;
            cartEl.textContent = cartCount;
            const btn = document.querySelector(`.add-btn[data-id="${id}"]`);
            if (btn) {
                const orig = btn.innerHTML;
                btn.innerHTML = '<i class="fas fa-check"></i> Added';
                btn.style.background = '#0f3b5c';
                setTimeout(() => {
                    btn.innerHTML = orig;
                    btn.style.background = '';
                }, 900);
            }
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) { renderProducts(PRODUCTS); return; }
            const filtered = PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) ||
                CATEGORIES.some(c => c.name.toLowerCase().includes(q))
            );
            renderProducts(filtered);
        }

        // ---------- SEARCH ----------
        document.getElementById('searchBtn').addEventListener('click', () => filterProducts(document.getElementById('searchInput').value));
        document.getElementById('searchInput').addEventListener('keydown', e => { if (e.key === 'Enter') filterProducts(e.target
                .value); });

        // ---------- MOBILE TOGGLE ----------
        document.getElementById('mobileToggle').addEventListener('click', () => {
            const menu = document.getElementById('mobileMenu');
            menu.style.display = menu.style.display === 'none' ? 'flex' : 'none';
        });

        // ---------- DEAL TIMER ----------
        (function dealTimer() {
            const target = new Date
