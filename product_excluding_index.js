
// Brute Force Solution 
function getProductsExcludingIndex(intArr){
  let results = [];

  for (let indexA = 0; indexA < intArr.length; indexA++) {
    let product = 1;
    for (let indexB = 0; indexB < intArr.length; indexB++) {
      if(indexA !== indexB){
        let currentInt = intArr[indexB];
        product = currentInt * product;
      }
    }
    results.push(product);
  }

  return results;
}

//Efficient Solution
function getProductsBeforeIndex(intArr){
  let products = [];
  let currentProduct = 1;
  for (const int of intArr) {
    products.push(currentProduct);
    currentProduct = int * currentProduct;
  }
  return products
}

function efficientGetProducts(intArr){
  let products = [];
  let productsBeforeIndex = getProductsBeforeIndex(intArr);
  let currentProduct = 1;
  if(intArr.length == 1) return products;
    for (let index = intArr.length - 1 ; index >= 0; index--) {
      products[index] = currentProduct * productsBeforeIndex[index];
      currentProduct = currentProduct * intArr[index];
    }
  return products;
}