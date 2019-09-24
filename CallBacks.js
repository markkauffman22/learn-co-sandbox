function clean(item) {
  console.log(`I just cleaned a ${item}`);
}

var nails = ["rusty nail", "rusty nail", "bent nail", "clean nail"];

var planks = ["splintered plank", "straight plank", "bent plank"];

function groupAndClean(items, cleaningMethod, done) {
  for (var i = 0; i < items.length; i++) {
    cleaningMethod(items[i]);
  }
  done();
} 

groupAndClean(nails.concat(planks), clean, function() {
  console.log('Whew, that was a lot of work!');
})
////////////////////////////////////////////////////////////



// Result ...>
// I just cleaned a rusty nail
// I just cleaned a bent nail
// I just cleaned a clean nail
// I just cleaned a splintered plank
// I just cleaned a straight plank
// I just cleaned a bent plank
// SWhew, that was a lot of work!
