import React from 'react';

class Tile extends React.Component{
    constructor(props){
        super(props);
        this.handleClick = this.handleClick.bind(this)
        this.flagged = props.tile.flagged;
        this.bombed = props.tile.bombed;
        this.explored = props.tile.explored;
        this.updateGame = props.updateGame;

    }



    handleClick(){
    //    console.log("hello word") 
        this.updateGame(this.props.tile, this.flagged, this.bombed, this.explored);
    }



    render(){

        if(this.props.tile.bombed) {
            
            // this.props.className = bombed/????
            return (<div> &#9760; </div>)
            
        } else if(this.props.tile.flagged) {
            
            // this.props.className = flagged/????
            
            
            return (<div className="tile flagged" onClick={this.handleClick}> &#9883;</div>)
        } else {
            
            // this.props.className = explored/????
            
            
                if (this.props.tile.adjacentBombCount() > 1) {
                    return(
                        <div> T </div>
                        )
                    }
        }
            
        return (<div className="tile" onClick={this.handleClick}>T</div>)


    }

}

export default Tile;