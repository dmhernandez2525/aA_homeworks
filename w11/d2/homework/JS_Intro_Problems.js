function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
        var x = 'in block';
        console.log(x);
    }
    console.log(x);
};
// logs in block 2 times bc the x on line 7 can see line 5 
// mysteryScoping1();

function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
        const x = 'in block';
        console.log(x);
    }
    console.log(x);
};
// logs each ones bc const is block scoped
// mysteryScoping2();
function mysteryScoping3() {
    // const x = 'out of block';
    let x = 'out of block';
    if (true) {
        var x = 'in block';
        console.log(x);
    }
    console.log(x);
};
// throus an err bc you used const and you cant reasign it (dose the same with let)
// mysteryScoping3();

function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    console.log(x);
};
// mysteryScoping4();
function mysteryScoping5() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    let x = 'out of block again';
    console.log(x);
};
// ooooo it seams that you can reasign it in the same scope but you can not reinitialize it.
// mysteryScoping5();

function madLib(noun, verb, adNoun){
    console.log(`we shall ${noun.toUpperCase()} the ${verb.toUpperCase()} BEST ${adNoun.toUpperCase()}`)
};

// madLib('make', 'best', 'guac');

function isSubstring(searchString, subString){

};

isSubstring("time to program", "time");

isSubstring("Jump for joy", "joys");
