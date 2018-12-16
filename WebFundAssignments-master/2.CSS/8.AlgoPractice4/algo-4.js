// Given an array and a value Y, count and print the number of array values greater than Y.

function printCount(arr,val){
    var count=0;
    for(i=0;i<arr.length;i++){
        if(arr[i]>val){
            count=count+1;
        }
        
    }
    return count;
}
console.log(printCount([2,3,6],4));

// Given an array, print the max, min and average values for that array.

function printMaxMinAvg(arr){
    var max=arr[0];
    var min=arr[0];
    var sum=0;
    newarr=[];
    for(i=0;i<arr.length;i++){
        if(arr[i]>max){
            max=arr[i];
        }
        if(arr[i]<min){
            min=arr[i];
        }
        sum+=arr[i];
        var avg=sum/arr.length;
       
    }
    newarr.push(max,min,avg);
    return newarr;
}
console.log(printMaxMinAvg([2,4,6,8]));

// Given an array of numbers, create a function that returns a new array where negative values were
//  replaced with the string ‘Dojo’.  
//  For example, replaceNegatives( [1,2,-3,-5,5]) should return [1,2, "Dojo", "Dojo", 5].
    function returnNegatives(arr){
        for(var i=0;i<arr.length;i++){
            if(arr[i]<0){
                arr[i]="Dojo";
            }
           
        }
        return arr;
    }
    console.log(returnNegatives([4,-2,3,-7]));
// Given array, and indices start and end, remove values in that index range,
//   working in-place (hence shortening the array).  
// For example, removeVals([20,30,40,50,60,70],2,4) should return [20,30,70].
function shortenArr(arr,x,y){
    for(i=x;i<y;i++){
      var temp=arr[i];
      arr[i]=arr[arr.length-1];
      arr[arr.length-1]=temp;
    arr.pop();
    }
 console.log(arr);
       arr.pop();
   
    return arr;
  }
  console.log(shortenArr([20,30,40,50,60,70],2,4));
