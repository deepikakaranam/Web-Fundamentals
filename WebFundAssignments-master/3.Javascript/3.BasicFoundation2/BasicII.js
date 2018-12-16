// Biggie Size - Given an array, write a function that changes all positive numbers in the array to 
// the string "big".  Example: makeItBig([-1,3,5,-5]) returns that same array, changed to 
// [-1, "big", "big", -5].

function makeitbig(arr){
    for (var i=0;i<arr.length;i++){
        if(arr[i]>0){
            arr[i]="big";
        }
    }
        return arr;
}
console.log(makeitbig([-1,3,5,-5]));

// Print Low, Return High - Create a function that takes in an array of numbers.  The function should
//  print the lowest value in the array, and return the highest value in the array.

function printlow(arr){
    var low=arr[0];
    var high=arr[0];
    for(var i=0;i<arr.length;i++){
            if(arr[i]<low){
                low=arr[i];
            }else{
                high=arr[i];
            }
    }
    console.log(low);
    return high;

}
highestnumber=printlow([1,9,4,2,7,6]);
console.log(printlow([1,9,4,2,7,6]));

// Print One, Return Another - Build a function that takes in an array of numbers.  The function should
//  print the second-to-last value in the array, and return the first odd value in the array.

function returnanother(arr){
   
    console.log(arr[arr.length-2]);
    for(var i=0;i<arr.length;i++){
        if(arr[i]%2!=0){
            x=(arr[i]);
          return x;
        }

    }
    
}
console.log(returnanother([2,5,3,8,9,6,7]));

// Double Vision - Given an array (similar to saying 'takes in an array'), create a function that
//  returns a new array where each value in the original array has been doubled.  Calling
//   double([1,2,3]) should return [2,4,6] without changing the original array


function doublevalue(){
    var newarr=[];
    for(var i=0;i<arr.length;i++){
            arr[i]=arr[i]*2;
            newarr.push(arr[i]);
    }
        console.log(newarr);
        console.log(arr);
}
doublevalue(([1,2,3]));

// Count Positives - Given an array of numbers, create a function to replace the last value with the 
// number of positive values found in the array.  Example, countPositives([-1,1,1,1]) changes the 
// original array to [-1,1,1,3] and returns it.


function countpositives(arr){
    var count=0;
    for(var i=0;i<arr.length;i++){
        if(arr[i]>0){
            count+=1;
        }
        arr.pop();
        arr.push(count);
    }
    return arr;
}
console.log(countpositives([-1,1,1,1]));

// Evens and Odds - Create a function that accepts an array.  Every time that array has three odd values
//  in a row, print "That's odd!".  Every time the array has three evens in a row, print "Even more so!".

function evenandodds(arr){
    var countodds=0;
    var countevens=0;
 for (var i=0;i<arr.length;i++){
     if(arr[i]%2!==0){
         countodds+=1;
         countevens=0;
       
    }
  else if(arr[i]%2==0){
          countevens+=1;
          countodds=0;
         
 }
//       console.log(countodds);
 
if (countodds==3){
 console.log("That's odd");
 countodds=0;
}else if(countevens===3){
 console.log("Even More so");
countevens=0;
}
 }

}
evenandodds([1,3,5,2,4,6,8,3,1,2,1]);


// Increment the Seconds - Given an array of numbers arr, add 1 to every other element, specifically those
//  whose index is odd (arr[1], arr[3], arr[5], etc).  Afterward, console.log each array value and return arr.


function incrementOdds(arr){
    for(var i=0;i<arr.length;i++){
      if(i%2!==0){
        arr[i]=(arr[i])+1;
        console.log(arr[i]);
      }
    }
    return arr;
}
console.log(incrementOdds([1,3,5,2,4,6,8,3,1,2,1]));

// Previous Lengths - You are passed an array (similar to saying 'takes in an array' or 'given an array')
//  containing strings.  Working within that same array, replace each string with a number - the length of
//   the string at the previous array index - and return the array.  For example,
//    previousLengths(["hello", "dojo", "awesome"]) should return ["hello", 5, 4].
//     Hint: Can for loops only go forward?

function previouslengths(arr){
       
    for(var i=arr.length-1;i>0;i--){
      arr[i]=arr[i-1].length;
    }
  return arr;
}
console.log(previouslengths(["hello", "dojo", "awesome"]));

// Add Seven to Most - Build a function that accepts an array. Return a new array with all the values of the 
// original, but add 7 to each. Do not alter the original array.  Example, addSeven([1,2,3]) 
// should return [8,9,10] in a new array.
function addseven(arr){
    for (var i=0;i<arr.length;i++){
        arr[i]=arr[i]+7;
    }
    return arr;
}
console.log(addseven([1,2,3]));

// Reverse Array - Given an array, write a function that reverses its values, in-place.  
// Example: reverse([3,1,6,4,2]) returns the same array, but now contains values reversed like so...
//  [2,4,6,1,3].  Do this without creating an empty temporary array.  (Hint: you'll need to swap values).

function reversearr(arr){
    // for(var i=0;i<arr.length/2;i++){
    //     var temp=arr[i];
    //     arr[i]=arr[arr.length-1-i];
    //     arr[arr.length-1-i]=temp;
    for(var i=0;i<arr.length;i++){
        arr[i]=arr[i+1];
    
    }
    return arr;
}
console.log(reversearr([3,1,6,4,2]))

// Always Hungry - Create a function that accepts an array, and prints "yummy" each time one of the values is
//  equal to "food".  If no array values are "food", then print "I'm hungry" once.

function alwaysHungry(arr){

    var count=0;
 for (var i=0;i<arr.length;i++){
     if(arr[i]==="food"){
         console.log("yummy");
    
       count+=1;
     
     
     }
 }
         if(count!=1)
        console.log("I'm hungry");
     
 }


alwaysHungry(["food",1,2,3]);
alwaysHungry([1,2,3]);

//  Swap Toward the Center - Given an array, swap the first and last values, third and third-to-last values,
//   etc.  Example: swapTowardCenter([true,42,"Ada",2,"pizza"]) turns the array 
//   into ["pizza", 42, "Ada", 2, true].  swapTowardCenter([1,2,3,4,5,6]) turns the array
//    into [6,2,4,3,5,1].  No need to return the array this time.

function swaptocenter(arr){
    for(var i=0;i<arr.length/2;i+=2){
        var temp=arr[i];
        arr[i]=arr[arr.length-1-i];
        arr[arr.length-1-i]=temp;
    }
    return arr;
}
// console.log(swaptocenter(["pizza", 42, "Ada", 2, true]));
          console.log(swaptocenter([1,2,3,4,5,6]));

// Scale the Array - Given an array arr and a number num, multiply all values in the array arr
// by the number num, and return the changed array arr.  For example, scaleArray([1,2,3], 3) 
// should return [3,6,9].

function scalethearray(arr,y){
    for(var i=0;i<arr.length;i++){
        arr[i]=arr[i]*y
    }
    return arr;
}
console.log(scalethearray([1,2,3],8));