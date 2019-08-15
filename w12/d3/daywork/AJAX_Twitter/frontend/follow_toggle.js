const APIUtil = require("./api_util.js");

class FollowToggle {
    constructor(el) {
        this.$el = $(el);
        this.userId = this.$el.data("user-id");
        this.followState =
            this.$el.data("initial-follow-state");
        this.render();
        this.$el.on("click", this.handleClick.bind(this))
    }

    render(){
        if (this.followState === "unfollowed"){
            this.$el.text("Follow")
        };
        if (this.followState === "followed"){
           this.$el.text("Unfollow")
        };
    }
    
    handleClick(e){
      e.preventDefault();
      let that = this;

      if (this.followState === "unfollowed") {
        APIUtil.followUser(this.userId).then(() => { 
            this.followState = "followed"; 
            this.render();
        });
        
      } else {
       APIUtil.unfollowUser(this.userId).then(() => {
           this.followState = "unfollowed";
           this.render();
       });
       
      }

    }

    // function deepDup(arr) {
    //     return arr.map(el => el instanceof Array ? deepDup(el) : el);
    // }


    // success: function () {
    //         that.followState = "followed";
    //         that.render();
    //     },
    //     error: function () {
    //         console.log('Errorrrrrrrr!');            }

    // success: function () {
    //         that.followState = "unfollowed";
    //         that.render();
    //         that.followState = "unfollowed";
    //         that.render();
    //     },
    //     error: function () {
    //         console.log("you did it wrong bra")
    //     }
}

module.exports = FollowToggle;










