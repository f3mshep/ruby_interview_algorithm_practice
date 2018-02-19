function highestProduct(intArr) {
  let highest = Math.max(intArr[0], intArr[1]);
  let lowest = Math.min(intArr[0], intArr[1]);
  let highestProductOfTwo = intArr[0] * intArr[1];
  let lowestProductOfTwo = highestProductOfTwo;
  let highestProductOfThree = highestProductOfTwo * intArr[2];

  for (let index = 2; index < intArr.length; index++) {
    currentInt = intArr[index]
    // We want to check for the highest product before we change any
    // other variables, otherwise we might use a number twice!
    highestProductOfThree = Math.max(
      highestProductOfThree,
      lowestProductOfTwo * currentInt,
      highestProductOfTwo * currentInt
    );
    // Why do we check if the lowest multiplier
    // could make the highest product of two?
    // negative times negative!
    highestProductOfTwo = Math.max(
      highestProductOfTwo,
      highest * currentInt,
      lowest * currentInt
    );
    lowestProductOfTwo = Math.min(
      lowestProductOfTwo,
      highest * currentInt,
      lowest * currentInt
    );
    if (currentInt > highest) highest = currentInt;
    if (currentInt < lowest) lowest = currentInt;
  }

  return highestProductOfThree
}

highestProduct([1, 3, 5, 7, 9, 10])
