// User# follows ?
const FollowToggle = require("./follow_toggle.js");
 $(() => {
    $("button.follow-toggle").each(function (index, el) {
        const button = new FollowToggle(el);
    });
    
    
});

