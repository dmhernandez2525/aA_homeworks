function sum(nums) {
    let counter = 0;
    Object.values(arguments).forEach(function (ele) {
        counter += ele
    });
    // for(let i = 0; i < arguments.length; i++){
    //   counter += arguments[i];
    // }
    return counter;
}

function sum2(...nums) {
    let counter = 0;
    nums.forEach(function (ele) {
        counter += ele
    });
    return counter;
}


// console.log(sum2(1, 2, 3, 4) === 10); //true
// console.log(sum2(1, 2, 4, 5) === 15); //false
