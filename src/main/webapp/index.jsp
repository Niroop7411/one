<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Nexus · Apple‑inspired</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: #f5f7fa;
      color: #1d1d1f;
      padding: 1.5rem 1rem;
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .app-wrapper {
      max-width: 1440px;
      width: 100%;
      margin: 0 auto;
    }

    /* ----- glassmorphism base ----- */
    .glass {
      background: rgba(255, 255, 255, 0.55);
      backdrop-filter: blur(18px) saturate(180%);
      -webkit-backdrop-filter: blur(18px) saturate(180%);
      border: 1px solid rgba(255, 255, 255, 0.6);
      box-shadow: 0 20px 40px -12px rgba(0, 0, 0, 0.08), 0 4px 18px rgba(0, 0, 0, 0.02);
      border-radius: 2.5rem;
    }

    .glass-card {
      background: rgba(255, 255, 255, 0.4);
      backdrop-filter: blur(12px) saturate(160%);
      -webkit-backdrop-filter: blur(12px) saturate(160%);
      border: 1px solid rgba(255, 255, 255, 0.7);
      border-radius: 2rem;
      transition: all 0.25s cubic-bezier(0.2, 0, 0, 1);
      box-shadow: 0 8px 24px -8px rgba(0, 0, 0, 0.04);
    }

    .glass-card:hover {
      background: rgba(255, 255, 255, 0.7);
      transform: translateY(-6px);
      box-shadow: 0 28px 44px -16px rgba(0, 0, 0, 0.12);
      border-color: rgba(255, 255, 255, 0.9);
    }

    /* ----- header (Apple-style) ----- */
    .header-glass {
      padding: 0.4rem 1.8rem;
      margin-bottom: 2.8rem;
      border-radius: 3.5rem;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      background: rgba(255, 255, 255, 0.5);
      backdrop-filter: blur(20px);
      border: 1px solid rgba(255, 255, 255, 0.5);
    }

    .brand {
      font-weight: 700;
      font-size: 1.9rem;
      letter-spacing: -0.03em;
      display: flex;
      align-items: center;
      gap: 0.3rem;
      background: linear-gradient(145deg, #1d1d1f, #434349);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .brand i {
      -webkit-text-fill-color: #0071e3;
      font-size: 1.8rem;
    }

    nav {
      display: flex;
      gap: 0.2rem;
      flex-wrap: wrap;
    }

    nav a {
      text-decoration: none;
      font-weight: 500;
      font-size: 0.95rem;
      padding: 0.5rem 1.2rem;
      border-radius: 3rem;
      color: #1d1d1f;
      background: transparent;
      transition: 0.15s;
      display: flex;
      align-items: center;
      gap: 6px;
      letter-spacing: -0.01em;
    }

    nav a:hover {
      background: rgba(0, 113, 227, 0.08);
      color: #0071e3;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: rgba(255, 255, 255, 0.5);
      backdrop-filter: blur(8px);
      border-radius: 3rem;
      padding: 0.15rem 0.15rem 0.15rem 1.4rem;
      border: 1px solid rgba(255, 255, 255, 0.5);
      transition: 0.2s;
    }
    .search-wrap:focus-within {
      background: rgba(255, 255, 255, 0.8);
      border-color: #0071e3;
      box-shadow: 0 0 0 3px rgba(0, 113, 227, 0.15);
    }
    .search-wrap input {
      border: none;
      background: transparent;
      padding: 0.55rem 0.2rem;
      font-size: 0.95rem;
      width: 170px;
      outline: none;
      color: #1d1d1f;
      font-weight: 450;
    }
    .search-wrap input::placeholder {
      color: #6e6e73;
      font-weight: 400;
    }
    .search-wrap button {
      background: #0071e3;
      border: none;
      border-radius: 3rem;
      padding: 0.5rem 1.2rem;
      color: white;
      font-weight: 600;
      cursor: pointer;
      transition: 0.15s;
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .search-wrap button:hover {
      background: #005bb5;
    }

    .header-actions {
      display: flex;
      gap: 0.6rem;
      align-items: center;
    }

    .icon-btn {
      background: transparent;
      border: none;
      font-size: 1.2rem;
      padding: 0.5rem 0.8rem;
      border-radius: 3rem;
      color: #1d1d1f;
      transition: 0.15s;
      cursor: pointer;
    }
    .icon-btn:hover {
      background: rgba(0, 113, 227, 0.08);
      color: #0071e3;
    }

    .cart-badge {
      position: relative;
      margin-left: 2px;
    }
    .cart-count {
      position: absolute;
      top: -6px;
      right: -4px;
      background: #0071e3;
      color: white;
      font-size: 0.65rem;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      border: 2px solid white;
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: none;
      font-size: 1.6rem;
      color: #1d1d1f;
    }

    /* ----- hero (Apple minimal) ----- */
    .hero-glass {
      padding: 3.2rem 2.5rem;
      text-align: center;
      margin-bottom: 3rem;
      background: linear-gradient(145deg, rgba(255, 255, 255, 0.35), rgba(245, 247, 250, 0.5));
      backdrop-filter: blur(16px);
      border: 1px solid rgba(255, 255, 255, 0.5);
    }

    .hero-glass h1 {
      font-size: 3.2rem;
      font-weight: 700;
      letter-spacing: -0.03em;
      background: linear-gradient(145deg, #1d1d1f, #434349);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .hero-glass h1 span {
      background: linear-gradient(145deg, #0071e3, #40a9ff);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
    }
    .hero-glass p {
      max-width: 520px;
      margin: 0.8rem auto 2rem;
      font-size: 1.15rem;
      color: #3a3a40;
      font-weight: 450;
      letter-spacing: -0.01em;
    }

    .btn-group {
      display: flex;
      gap: 1rem;
      justify-content: center;
      flex-wrap: wrap;
    }

    .btn {
      border: none;
      padding: 0.7rem 2.2rem;
      border-radius: 3rem;
      font-weight: 600;
      font-size: 1rem;
      background: rgba(255, 255, 255, 0.5);
      backdrop-filter: blur(8px);
      border: 1px solid rgba(255, 255, 255, 0.6);
      cursor: pointer;
      transition: 0.2s;
      display: inline-flex;
      align-items: center;
      gap: 8px;
    }
    .btn-primary {
      background: #0071e3;
      color: white;
      border: none;
      box-shadow: 0 6px 16px rgba(0, 113, 227, 0.2);
    }
    .btn-primary:hover {
      background: #005bb5;
      transform: scale(1.02);
    }
    .btn-outline {
      background: rgba(255, 255, 255, 0.3);
      border: 1px solid rgba(0, 0, 0, 0.08);
    }
    .btn-outline:hover {
      background: rgba(255, 255, 255, 0.7);
    }

    /* sections */
    .section-title {
      font-weight: 700;
      font-size: 2rem;
      letter-spacing: -0.02em;
      margin-bottom: 0.2rem;
    }
    .section-sub {
      color: #6e6e73;
      margin-bottom: 1.8rem;
      font-weight: 400;
    }

    .grid-cat {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
      gap: 1.2rem;
      margin-bottom: 3rem;
    }

    .cat-item {
      text-align: center;
      padding: 1.4rem 0.5rem;
      cursor: pointer;
      border-radius: 2rem;
      background: rgba(255, 255, 255, 0.25);
      backdrop-filter: blur(6px);
      border: 1px solid rgba(255, 255, 255, 0.3);
      transition: 0.2s;
    }
    .cat-item:hover {
      background: rgba(255, 255, 255, 0.6);
      border-color: #0071e3;
    }
    .cat-item i {
      font-size: 2.2rem;
      color: #1d1d1f;
      margin-bottom: 4px;
    }
    .cat-item h4 {
      font-weight: 600;
      font-size: 0.95rem;
    }

    .grid-prod {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
      gap: 2rem;
      margin-bottom: 3rem;
    }

    .product-card {
      padding: 0 0 1rem 0;
      overflow: hidden;
      background: rgba(255, 255, 255, 0.3);
      backdrop-filter: blur(12px);
      border: 1px solid rgba(255, 255, 255, 0.5);
    }
    .product-card img {
      width: 100%;
      height: 190px;
      object-fit: cover;
      border-radius: 2rem 2rem 0 0;
    }
    .product-body {
      padding: 1rem 1.2rem 0.2rem;
    }
    .product-body h5 {
      font-weight: 600;
      font-size: 1.05rem;
      letter-spacing: -0.01em;
    }
    .price-row {
      display: flex;
      align-items: center;
      gap: 0.8rem;
      margin-top: 0.2rem;
    }
    .price {
      font-weight: 700;
      font-size: 1.25rem;
    }
    .old-price {
      text-decoration: line-through;
      opacity: 0.5;
      font-size: 0.9rem;
    }
    .rating {
      color: #f5b342;
      letter-spacing: 1px;
      font-size: 0.85rem;
    }
    .product-actions {
      display: flex;
      gap: 0.5rem;
      padding: 0.8rem 1.2rem 0.2rem;
    }
    .add-btn {
      flex: 1;
      background: #1d1d1f;
      border: none;
      border-radius: 3rem;
      padding: 0.6rem;
      color: white;
      font-weight: 600;
      cursor: pointer;
      transition: 0.15s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
    }
    .add-btn:hover {
      background: #0071e3;
    }
    .wish-btn {
      background: rgba(255, 255, 255, 0.3);
      border: 1px solid rgba(255, 255, 255, 0.3);
      border-radius: 3rem;
      padding: 0.6rem 1rem;
      cursor: pointer;
      transition: 0.15s;
    }
    .wish-btn:hover {
      background: rgba(255, 255, 255, 0.7);
    }

    /* deal */
    .deal-glass {
      display: flex;
      flex-wrap: wrap;
      gap: 2rem;
      align-items: center;
      padding: 2rem;
      margin-bottom: 3rem;
    }
    .deal-glass img {
      width: 100%;
      max-width: 260px;
      border-radius: 2rem;
      object-fit: cover;
      height: 180px;
      flex: 1 1 180px;
    }
    .deal-content {
      flex: 2 1 260px;
    }
    .timer-box {
      display: flex;
      gap: 0.6rem;
      margin: 1rem 0;
    }
    .time-unit {
      background: rgba(255, 255, 255, 0.2);
      backdrop-filter: blur(6px);
      padding: 0.4rem 0.9rem;
      border-radius: 1.2rem;
      text-align: center;
      min-width: 64px;
      border: 1px solid rgba(255, 255, 255, 0.3);
    }
    .time-unit span {
      font-weight: 700;
      font-size: 1.6rem;
      display: block;
      line-height: 1.2;
    }
    .time-unit small {
      font-size: 0.65rem;
      opacity: 0.6;
    }
    .badge-deal {
      background: #0071e3;
      color: white;
      padding: 0.2rem 0.8rem;
      border-radius: 3rem;
      font-weight: 600;
      font-size: 0.8rem;
    }

    /* testimonials */
    .testimonial-grid {
      display: flex;
      gap: 1.5rem;
      overflow-x: auto;
      padding: 0.5rem 0.2rem 1.5rem;
      margin-bottom: 2.5rem;
      scrollbar-width: thin;
    }
    .testimonial-card {
      min-width: 260px;
      padding: 1.6rem;
      flex: 0 0 auto;
    }
    .testimonial-card .rating {
      font-size: 1rem;
    }
    .testimonial-card p {
      margin: 0.5rem 0;
      font-style: italic;
      font-weight: 400;
    }
    .avatar {
      display: flex;
      align-items: center;
      gap: 0.8rem;
      margin-top: 0.6rem;
    }
    .avatar img {
      width: 44px;
      height: 44px;
      border-radius: 50%;
      object-fit: cover;
      border: 2px solid white;
    }

    /* newsletter */
    .newsletter-glass {
      padding: 2.5rem 2rem;
      text-align: center;
      margin-bottom: 2rem;
    }
    .newsletter-glass input {
      padding: 0.7rem 1.6rem;
      border-radius: 3rem;
      border: 1px solid rgba(255, 255, 255, 0.5);
      background: rgba(255, 255, 255, 0.2);
      backdrop-filter: blur(4px);
      width: 280px;
      max-width: 100%;
      font-size: 0.95rem;
      outline: none;
      color: #1d1d1f;
    }
    .newsletter-glass input::placeholder {
      color: #6e6e73;
    }
    .newsletter-glass .btn {
      margin-left: 0.5rem;
    }

    /* footer */
    .footer-glass {
      padding: 1.8rem 2rem;
      margin-top: 2rem;
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      align-items: center;
      gap: 1.2rem;
    }
    .footer-glass .brand {
      font-size: 1.6rem;
    }
    .footer-links {
      display: flex;
      gap: 2rem;
    }
    .footer-links a {
      opacity: 0.6;
      text-decoration: none;
      color: #1d1d1f;
      font-weight: 500;
      transition: 0.15s;
    }
    .footer-links a:hover {
      opacity: 1;
      color: #0071e3;
    }

    /* responsiveness */
    @media (max-width: 860px) {
      .header-glass {
        flex-direction: column;
        align-items: stretch;
        gap: 0.8rem;
        padding: 0.8rem 1.2rem;
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
    }
    @media (max-width: 500px) {
      .grid-cat {
        grid-template-columns: repeat(2, 1fr);
      }
      .deal-glass {
        flex-direction: column;
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
  </style>
</head>
<body>
<div class="app-wrapper">

  <!-- header -->
  <header class="header-glass">
    <div style="display:flex; align-items:center; gap:1rem;">
      <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
      <span class="brand"><i class="fab fa-apple"></i> Nexus</span>
    </div>

    <nav class="nav-desktop" id="mainNav">
      <a href="#"><i class="fas fa-home"></i> Home</a>
      <a href="#"><i class="fas fa-th-large"></i> Browse</a>
      <a href="#"><i class="fas fa-fire"></i> Trending</a>
      <a href="#deals"><i class="fas fa-tag"></i> Deals</a>
    </nav>

    <div style="display:flex; align-items:center; gap:0.8rem; flex-wrap:wrap;">
      <div class="search-wrap">
        <input type="search" id="searchInput" placeholder="Search..." />
        <button id="searchBtn"><i class="fas fa-search"></i></button>
      </div>
      <div class="header-actions">
        <button class="icon-btn"><i class="far fa-heart"></i></button>
        <button class="icon-btn cart-badge"><i class="fas fa-shopping-bag"></i> <span class="cart-count" id="cartCount">0</span></button>
      </div>
    </div>
  </header>

  <!-- mobile nav -->
  <div id="mobileMenu" style="display:none; padding:0.6rem 0; margin-bottom:0.8rem;">
    <nav style="flex-direction:column; gap:0.3rem; display:flex; align-items:center;">
      <a href="#">Home</a>
      <a href="#">Browse</a>
      <a href="#">Trending</a>
      <a href="#deals">Deals</a>
    </nav>
  </div>

  <!-- hero -->
  <section class="hero-glass glass">
    <h1>New <span>Winter</span> Collection</h1>
    <p>Discover premium tech, fashion and accessories — designed for the modern edge.</p>
    <div class="btn-group">
      <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
      <button class="btn btn-outline" id="exploreDeals">Explore Deals</button>
    </div>
  </section>

  <!-- categories -->
  <section style="margin-bottom:2rem;">
    <h2 class="section-title">Categories</h2>
    <p class="section-sub">Curated collections for every taste</p>
    <div class="grid-cat" id="categoriesGrid"></div>
  </section>

  <!-- products -->
  <section style="margin-bottom:2rem;">
    <h2 class="section-title">Trending <i class="fas fa-arrow-up" style="color:#0071e3; font-size:1.6rem;"></i></h2>
    <p class="section-sub">Most loved by our community</p>
    <div class="grid-prod" id="productsGrid"></div>
  </section>

  <!-- deal -->
  <section id="deals" style="margin-bottom:2rem;">
    <h2 class="section-title">Flash Sale</h2>
    <p class="section-sub">Limited time — don't miss out</p>
    <div class="deal-glass glass-card">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="MacBook Air" />
      <div class="deal-content">
        <h3 style="font-size:1.8rem; font-weight:700; letter-spacing:-0.02em;">MacBook Air M2</h3>
        <p style="opacity:0.65;">Thin, light, and remarkably powerful.</p>
        <div class="timer-box">
          <div class="time-unit"><span id="dealDays">0</span><small>d</small></div>
          <div class="time-unit"><span id="dealHours">00</span><small>h</small></div>
          <div class="time-unit"><span id="dealMinutes">00</span><small>m</small></div>
          <div class="time-unit"><span id="dealSeconds">00</span><small>s</small></div>
        </div>
        <div style="display:flex; align-items:center; gap:1rem; flex-wrap:wrap;">
          <span class="price" style="font-size:1.8rem;">$999</span>
          <span class="old-price" style="font-size:1.1rem;">$1,199</span>
          <span class="badge-deal">-17%</span>
        </div>
        <button class="btn btn-primary" id="buyDeal" style="margin-top:0.8rem;"><i class="fas fa-bag-shopping"></i> Add deal</button>
      </div>
    </div>
  </section>

  <!-- testimonials -->
  <section style="margin-bottom:2.5rem;">
    <h2 class="section-title">What our customers say</h2>
    <p class="section-sub">Real reviews from verified buyers</p>
    <div class="testimonial-grid" id="testimonials"></div>
  </section>

  <!-- newsletter -->
  <section style="margin-bottom:2rem;">
    <div class="newsletter-glass glass">
      <h3 style="font-size:1.8rem; font-weight:600; letter-spacing:-0.02em;">Stay in the loop</h3>
      <p style="opacity:0.7;">Get the latest drops and exclusive offers</p>
      <form id="newsletterForm" style="display:flex; flex-wrap:wrap; justify-content:center; gap:0.6rem;">
        <input type="email" id="newsletterEmail" placeholder="Enter your email" required />
        <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
      </form>
      <div id="newsletterMsg" style="margin-top:0.8rem; font-weight:500;"></div>
    </div>
  </section>

  <!-- footer -->
  <footer class="footer-glass glass">
    <span class="brand"><i class="fab fa-apple"></i> Nexus</span>
    <div class="footer-links">
      <a href="#">About</a>
      <a href="#">Careers</a>
      <a href="#">Press</a>
      <a href="#">Support</a>
    </div>
    <span style="opacity:0.4; font-size:0.9rem;">© <span id="year"></span> — glassy edition</span>
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
    { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80' },
    { id: 2, title: 'MacBook Pro 14"', price: 1999, oldPrice: 2199, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80' },
    { id: 3, title: 'Apple Watch S8', price: 349, oldPrice: 399, rating: 5, reviews: 214, img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80' },
    { id: 4, title: 'Nike Air Max 270', price: 150, oldPrice: 179, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80' },
    { id: 5, title: 'Sony A7 IV', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80' },
    { id: 6, title: 'Chanel No.5', price: 120, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80' },
    { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80' },
    { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80' }
  ];

  const TESTIMONIALS = [
    { name: 'Ava Martin', avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80', text: 'Absolutely love the quality and the smooth experience.', rating: 5 },
    { name: 'Michael Lee', avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80', text: 'Clean, fast, and the glass UI feels premium.', rating: 4 },
    { name: 'Sophia Chen', avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80', text: 'Best deals and the interface is a joy to use.', rating: 5 }
  ];

  // ---------- RENDER ----------
  let cartCount = 0;
  const cartEl = document.getElementById('cartCount');

  function renderCategories() {
    const grid = document.getElementById('categoriesGrid');
    grid.innerHTML = '';
    CATEGORIES.forEach(c => {
      const div = document.createElement('div');
      div.className = 'cat-item';
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
          <div class="rating">${'★'.repeat(p.rating)}${'☆'.repeat(5-p.rating)} <span style="opacity:0.5;font-size:0.7rem;">(${p.reviews})</span></div>
        </div>
        <div class="product-actions">
          <button class="add-btn" data-id="${p.id}"><i class="fas fa-plus"></i> Add</button>
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
    TESTIMONIALS.forEach(t => {
      const div = document.createElement('div');
      div.className = 'testimonial-card glass-card';
      div.innerHTML = `
        <div class="rating">${'★'.repeat(t.rating)}${'☆'.repeat(5-t.rating)}</div>
        <p>"${t.text}"</p>
        <div class="avatar">
          <img src="${t.avatar}" alt="${t.name}" />
          <div><strong>${t.name}</strong> <div style="opacity:0.5;font-size:0.75rem;">verified</div></div>
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
      btn.style.background = '#0071e3';
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
  document.getElementById('searchInput').addEventListener('keydown', e => { if (e.key === 'Enter') filterProducts(e.target.value); });

  // ---------- MOBILE TOGGLE ----------
  document.getElementById('mobileToggle').addEventListener('click', () => {
    const menu = document.getElementById('mobileMenu');
    menu.style.display = menu.style.display === 'none' ? 'flex' : 'none';
  });

  // ---------- DEAL TIMER ----------
