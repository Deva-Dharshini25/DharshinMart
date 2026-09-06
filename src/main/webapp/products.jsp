<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>DharshinMart - Products</title>

    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        body {
            background: #f5f5f5;
        }

        /* Header */
        .header {
            background: #131921;
            color: white;
            padding: 18px 35px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 28px;
            font-weight: bold;
        }

        .cart-button {
            background: #ffd814;
            color: #111;
            border: none;
            padding: 11px 20px;
            border-radius: 5px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        /* Page heading */
        .page-heading {
            text-align: center;
            padding: 28px 10px;
        }

        .page-heading h1 {
            font-size: 30px;
            color: #222;
        }

        .page-heading p {
            margin-top: 8px;
            color: #666;
        }

        /* Product grid */
        .products-container {
            width: 92%;
            max-width: 1400px;
            margin: auto;
            display: grid;
            grid-template-columns: repeat(5, 1fr);
            gap: 20px;
            padding-bottom: 40px;
        }

        /* Product card */
        .product-card {
            background: white;
            border-radius: 8px;
            padding: 15px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.12);
            transition: 0.2s;
        }

        .product-card:hover {
            transform: translateY(-3px);
        }

        .product-image {
            width: 100%;
            height: 180px;
            object-fit: contain;
            margin-bottom: 12px;
        }

        .product-name {
            font-size: 18px;
            font-weight: bold;
            color: #222;
            margin-bottom: 7px;
        }

        .quantity {
            font-size: 14px;
            color: #666;
            margin-bottom: 8px;
        }

        .price {
            font-size: 21px;
            font-weight: bold;
            color: #b12704;
            margin-bottom: 12px;
        }

        .add-cart {
            width: 100%;
            border: none;
            padding: 11px;
            background: #ffd814;
            color: #111;
            border-radius: 5px;
            font-size: 15px;
            font-weight: bold;
            cursor: pointer;
        }

        .add-cart:hover {
            background: #f7ca00;
        }

        /* Responsive */
        @media (max-width: 1100px) {
            .products-container {
                grid-template-columns: repeat(3, 1fr);
            }
        }

        @media (max-width: 700px) {
            .products-container {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 450px) {
            .products-container {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>

<body>

<!-- Header -->
<div class="header">
    <div class="logo">DharshinMart</div>

    <button class="cart-button">
        Cart (0)
    </button>
</div>

<!-- Page Heading -->
<div class="page-heading">
    <h1>Fresh & Grocery</h1>
    <p>Choose your products</p>
</div>

<!-- Products -->
<div class="products-container">

    <!-- 1. Apple -->
    <div class="product-card">
        <img src="images/product1.jpg"
             class="product-image"
             alt="Apple">

        <div class="product-name">Apple</div>
        <div class="quantity">1 kg</div>
        <div class="price">₹80</div>

        <button class="add-cart">Add to Cart</button>
    </div>

    <!-- 2. Carrot Juice -->
    <div class="product-card">
        <img src="images/product2.jpg"
             class="product-image"
             alt="Carrot Juice">

        <div class="product-name">Carrot Juice</div>
        <div class="quantity">1 bottle</div>
        <div class="price">₹60</div>

        <button class="add-cart">Add to Cart</button>
    </div>

    <!-- 3. Milk -->
    <div class="product-card">
        <img src="images/product3.jpg"
             class="product-image"
             alt="Milk">

        <div class="product-name">Milk</div>
        <div class="quantity">1 litre</div>
        <div class="price">₹35</div>

        <button class="add-cart">Add to Cart</button>
    </div>

    <!-- 4. Bread -->
    <div class="product-card">
        <img src="images/product4.jpg"
             class="product-image"
             alt="Bread">

        <div class="product-name">Bread</div>
        <div class="quantity">1 packet</div>
        <div class="price">₹45</div>

        <button class="add-cart">Add to Cart</button>
    </div>

    <!-- 5. Biscuits -->
    <div class="product-card">
        <img src="images/product5.jpg"
             class="product-image"
             alt="Biscuits">

        <div class="product-name">Biscuits</div>
        <div class="quantity">10 biscuits</div>
        <div class="price">₹30</div>

        <button class="add-cart">Add to Cart</button>
    </div>

    <!-- 6. Chocolate -->
    <div class="product-card">
        <img src="images/product6.jpg"
             class="product-image"
             alt="Chocolate">

        <div class="product-name">Chocolate</div>
        <div class="quantity">50 g</div>
        <div class="price">₹50</div>

        <button class="add-cart">Add to Cart</button>
    </div>

    <!-- 7. Laddu -->
    <div class="product-card">
        <img src="images/product7.jpg"
             class="product-image"
             alt="Laddu">

        <div class="product-name">Laddu</div>
        <div class="quantity">2 pieces</div>
        <div class="price">₹40</div>

        <button class="add-cart">Add to Cart</button>
    </div>

    <!-- 8. Banana -->
    <div class="product-card">
        <img src="images/product8.jpg"
             class="product-image"
             alt="Banana">

        <div class="product-name">Banana</div>
        <div class="quantity">5 bananas</div>
        <div class="price">₹50</div>

        <button class="add-cart">Add to Cart</button>
    </div>

    <!-- 9. Sweet Corn -->
    <div class="product-card">
        <img src="images/product9.jpg"
             class="product-image"
             alt="Sweet Corn">

        <div class="product-name">Sweet Corn</div>
        <div class="quantity">2 pieces</div>
        <div class="price">₹55</div>

        <button class="add-cart">Add to Cart</button>
    </div>

    <!-- 10. Honey -->
    <div class="product-card">
        <img src="images/product10.jpg"
             class="product-image"
             alt="Honey">

        <div class="product-name">Honey</div>
        <div class="quantity">200 g</div>
        <div class="price">₹100</div>

        <button class="add-cart">Add to Cart</button>
    </div>

</div>

</body>
</html>