<script>
  import "tailwindcss/tailwind.css";

  let { children } = $props()
  
  let cartOpen = $state(false);
  let cartItems = $state([
    {
      id: 1,
      title: "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
      price: 109.95,
      quantity: 1,
      image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"
    }
  ]);

  function toggleCart() {
    cartOpen = !cartOpen;
  }

  function removeItem(id) {
    cartItems = cartItems.filter(item => item.id !== id);
  }

  function updateQuantity(id, newQuantity) {
    cartItems = cartItems.map(item => 
      item.id === id ? {...item, quantity: Math.max(1, newQuantity)} : item
    );
  }
</script>

<div class="{cartOpen ? "mr-60" : "mr-0"}">
  {@render children()}
</div>

<button onclick={toggleCart} class="fixed top-4 left-4 btn btn-primary">Cart</button>

<div class="fixed top-0 right-0 h-full w-60 bg-base-200 shadow-lg cart-container {cartOpen ? "translate-x-0" : "translate-x-full"}">
  <div class="p-4">
    <h2 class="mb-4 text-2xl font-bold">Shopping Cart</h2>
    {#each cartItems as item}
      <div class="flex p-2 mb-4 rounded-lg shadow-md bg-base-100">
        <img src={item.image} alt={item.title} class="object-cover w-20 h-20 mr-4 rounded-md" />
        <div class="flex-grow">
          <p class="font-bold">${item.price}</p>
          <div class="flex items-center mt-2">
            <button class="btn btn-xs btn-circle" onclick={() => updateQuantity(item.id, item.quantity - 1)}>-</button>
            <span class="mx-2">{item.quantity}</span>
            <button class="btn btn-xs btn-circle" onclick={() => updateQuantity(item.id, item.quantity + 1)}>+</button>
            <button class="ml-auto btn btn-xs" onclick={() => removeItem(item.id)}>Delete</button>
          </div>
        </div>
      </div>
    {/each}
    <a href="/checkout" class="w-full btn btn-primary">Proceed to Checkout</a>
  </div>
</div>