export async function load({ fetch }) {
  const response = await fetch(
    `https://fakestoreapi.com/products/?offset=0&limit=10`
  );
  const products = await response.json();
  return { products };
}
