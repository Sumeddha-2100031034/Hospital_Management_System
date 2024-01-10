
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
/**
* ! Changing default styles of the browser
**/

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: sans-serif;
}

i {
  cursor: pointer;
}

a {
  text-decoration: none;
  color: white;
}

/**
* ! Navbar STyles are here
**/

.navbar {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  background-color: #428BCA;
  color: white;
  padding: 12px 60px;
  margin-bottom: 30px;
}

.cart {
  position: relative;
  background-color: #fff;
  color: #212529;
  font-size: 30px;
  padding: 5px;
  border-radius: 4px;
}

.cartAmount {
  position: absolute;
  top: -5px;
  right: -10px;
  font-size: 16px;
  background-color: red;
  color: white;
  padding: 3px;
  border-radius: 3px;
}

/**
* ! Shop items styles are here
**/

.shop {
  display: grid;
  grid-template-columns: repeat(4, 223px);
  gap: 30px;
  justify-content: center;
}

@media (max-width: 1000px) {
  .shop {
    grid-template-columns: repeat(2, 223px);
  }
}

@media (max-width: 500px) {
  .shop {
    grid-template-columns: repeat(1, 223px);
  }
}

.item {
  border: 2px solid #212529;
  border-radius: 4px;
}

.details {
  display: flex;
  flex-direction: column;
  padding: 10px;
  gap: 10px;
}

.price-quantity {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  align-items: center;
}

.buttons {
  display: flex;
  flex-direction: row;
  gap: 8px;
  font-size: 16px;
}

.bi-dash-lg {
  color: red;
}

.bi-plus-lg {
  color: green;
}

/**
* ! style rules for label and some buttons
**/

.text-center {
  text-align: center;
  margin-bottom: 20px;
}

.HomeBtn,
.checkout,
.removeAll {
  background-color: #212529;
  color: white;
  border: none;
  padding: 6px;
  border-radius: 3px;
  cursor: pointer;
  margin-top: 10px;
}

.checkout {
  background-color: green;
}
.removeAll {
  background-color: red;
}
.bi-x-lg {
  color: red;
  font-weight: bold;
}

/**
* ! style rules for shopping-cart
**/

.shopping-cart {
  display: grid;
  grid-template-columns: repeat(1, 320px);
  justify-content: center;
  gap: 15px;
}

/**
* ! style rules for cart-item
**/

.cart-item {
  border: 2px solid #212529;
  border-radius: 5px;
  display: flex;
}

.title-price-x {
  width: 195px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  /* border: 2px solid red; */
}

.title-price {
  display: flex;
  align-items: center;
  gap: 10px;
}

.cart-item-price {
  background-color: #212529;
  color: white;
  border-radius: 4px;
  padding: 3px 6px;
}


</style>
</head>
<body>

<div class="navbar">
    <a href="index.html">
      <h2>Aster Pharmaceuticals</h2>
    </a>

    <a href="cart.html">
      <div class="cart">
        <i class="bi bi-cart2"></i>
        <div id="cartAmount" class="cartAmount">0</div>
      </div>
    </a>

  </div>

  <div class="shop" id="shop">


  </div>
<div class="text-center" style="position: relative;bottom: 0px;padding:2.5px;margin:0px;background-color: whitesmoke;"></div>
</body>
<script src="src/Data.js"></script>
<script>
let shopItemsData = [
	  {
	    id: "jfhgbvnscs",
	    name: "Dolo 650",
	    price: 18999,
	    desc: "Paracetamol Aceclofenac 650 mg.",
	    img: "https://www.tradeindia.com/_next/image/?url=https%3A%2F%2Ftiimg.tistatic.com%2Ffp%2F1%2F007%2F759%2Fdolo-650-mg-tablets-298.jpg&w=750&q=75",
	  },
	  {
	    id: "ioytrhndcv",
	    name: "Aceclo Plus",
	    price: 139,
	    desc: "Aceclofenac Hydrochloride Tablets",
	    img: "https://livinghealthy24.com/manager/uploads/10001623_-_ACECLO_PLUS_TAB_(15_TAB).jpg",
	  },
	  {
	    id: "wuefbncxbsn",
	    name: "Okacet",
	    price: 199,
	    desc: "Cetrizine Hypochloride 10 mg",
	    img: "https://www.netmeds.com/images/product-v1/600x600/1054470/okacet_new_tablet_10s_442014_0_0.jpg",
	  },
	  {
	    id: "thyfhcbcv",
	    name: "Combiflam",
	    price: 49,
	    desc: "Paracetamol & Ibuprofen Hyrochloride",
	    img: "https://onemg.gumlet.io/l_watermark_346,w_480,h_480/a_ignore,w_480,h_480,c_fit,q_auto,f_auto/cropped/zwbqj8ekwvxwej1z0dbq.png",
	  },
	  {
	    id: "kokjfhgbvnscs",
	    name: "Diovol",
	    price: 49,
	    desc: "Dried Alluminum Hydrate, Magnesium Silicate and Methycone",
	    img: "https://images.apollo247.in/pub/media/catalog/product/D/I/DIO0116_1.jpg",
	  },
	  {
	    id: "jijioytrhndcv",
	    name: "Domstal",
	    price: 40799,
	    desc: "Domperidone Hydrochloride",
	    img: "data:image/jpeg;base64,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",
	  },
	  {
	    id: "ujwuefbncxbsn",
	    name: "Montek LC Kids",
	    price: 199,
	    desc: "Montelukast, Levocetrizine Tablets (Chewable) for kids",
	    img: "https://static2.medplusmart.com/products/_b6c0a5_/MONT0025_L.jpg",
	  },
	  {
	    id: "tjuvhyfhcbcv",
	    name: "Painting",
	    price: 42099,
	    desc: "Painting Mantra - Multicolor Jardine Birds Set of 4 Brown Framed Painting,UV Textured Art Prints (10 x 10 inch)",
	    img: "images/img-8.jpg",
	  },
	];
</script>
<script src="src/main.js"></script>
<script>
let shop = document.getElementById("shop");

let basket = JSON.parse(localStorage.getItem("data")) || [];

let generateShop = () => {
  return (shop.innerHTML = shopItemsData
    .map((x) => {
      let { id, name, price, desc, img } = x;
      let search = basket.find((x) => x.id === id) || [];
      return `
    <div id=product-id-${id} class="item">
        <img width="220" src=${img} alt="">
        <div class="details">
          <h3>${name}</h3>
          <p>${desc}</p>
          <div class="price-quantity">
            <h2>&#8377; ${price} </h2>
            <div class="buttons">
              <i onclick="decrement(${id})" class="bi bi-dash-lg"></i>
              <div id=${id} class="quantity">
              ${search.item === undefined ? 0 : search.item}
              </div>
              <i onclick="increment(${id})" class="bi bi-plus-lg"></i>
            </div>
          </div>
        </div>
      </div>
    `;
    })
    .join(""));
};

generateShop();

let increment = (id) => {
  let selectedItem = id;
  let search = basket.find((x) => x.id === selectedItem.id);

  if (search === undefined) {
    basket.push({
      id: selectedItem.id,
      item: 1,
    });
  } else {
    search.item += 1;
  }

  // console.log(basket);
  update(selectedItem.id);
  localStorage.setItem("data", JSON.stringify(basket));
};
let decrement = (id) => {
  let selectedItem = id;
  let search = basket.find((x) => x.id === selectedItem.id);

  if (search === undefined) return;
  else if (search.item === 0) return;
  else {
    search.item -= 1;
  }
  update(selectedItem.id);
  basket = basket.filter((x) => x.item !== 0);
  // console.log(basket);
  localStorage.setItem("data", JSON.stringify(basket));
};
let update = (id) => {
  let search = basket.find((x) => x.id === id);
  // console.log(search.item);
  document.getElementById(id).innerHTML = search.item;
  calculation();
};

let calculation = () => {
  let cartIcon = document.getElementById("cartAmount");
  cartIcon.innerHTML = basket.map((x) => x.item).reduce((x, y) => x + y, 0);
};

calculation();

</script>
</html>