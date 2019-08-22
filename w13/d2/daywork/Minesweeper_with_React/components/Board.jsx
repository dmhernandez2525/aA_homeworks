import React from 'react';
import Tile from './Tile';

// const Congrats = () => <h1>Congratulations, you did it!</h1>;
class Board extends React.Component{
    constructor(props){
        super(props);
        this.updateGame = props.update;
    }


    render(){
        // array[0].map((a,b) => array.map(c => c[b] ))
        return(
            <div  >
                {this.props.board.grid.map((row, i) => (
                    <div key={i} className="row">
                        {row.map( (tile,i) =>(
                            
                            <Tile key={i} tile={tile} updateGame={this.updateGame}  />
                            // className={class= tile}???
                        ))}
                    </div>
                ))}

            </div>
        )
    }
}

export default Board;