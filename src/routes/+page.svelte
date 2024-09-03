<script>
  let { data } = $props();
  let products = $state(data.products);
</script>

<div class="container grid grid-cols-2 gap-4 mx-auto md:grid-cols-5">
  {#each products as product}
    <div class="shadow-xl card">
      <a href="/product/1">
        <img src={product.image} alt={product.name} />
      </a>
      <div class="card-body">
        <h2 class="card-title">{product.title}</h2>
        <p>{product.description}</p>
        <button class="btn btn-primary">Buy Now</button>
      </div>
    </div>
  {/each}
</div>