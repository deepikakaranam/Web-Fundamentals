## Build out a .js file on your own this time and call it algorithm5.js  In that file, code out your functions to solve the challenges.  #4 is a tough one again! Do your best!

<!-- Return the given array, after setting any negative values to zero.  For example resetNegatives( [1,2,-1, -3]) should return [1,2,0,0]. -->

function returnZero(arr){
    for(var i=0;i< arr.length;i++){
        if(arr[i]<0){
            arr[i]=0;
        }
    }
    return arr;
}
console.log(returnZero([1,2,-1,-3]));