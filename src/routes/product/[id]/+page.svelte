<script>
  let { data } = $props();
  let product = $derived(data.product);
</script>

<div class="container p-4 mx-auto">
  <div class="shadow-xl card lg:card-side bg-base-100">
    <figure class="lg:w-1/2"><img src={product.image} alt={product.title} class="w-full h-auto" /></figure>
    <div class="card-body lg:w-1/2">
      <h2 class="text-2xl card-title">{product.title}</h2>
      <p class="text-lg">{product.description}</p>
      <p class="text-xl font-bold">${product.price}</p>
      <p class="text-sm text-gray-500">Category: {product.category}</p>

      <div class="justify-end card-actions">
        <button class="btn btn-primary">Add to Cart</button>
      </div>
    </div>
  </div>
</div>