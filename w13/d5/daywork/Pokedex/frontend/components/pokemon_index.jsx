import React from "react";


class PokemonIndex extends React.Component {
    constructor(props){
        super(props)
    }

    componentDidMount(){
        this.props.requestAllPokemon()
    }

    render(){
        let pokemon = this.props.pokemon;
        // debugger;
        if (pokemon.length === 0) return <h1>no pokemon</h1>;

        let allPokemon = pokemon.map(ele => {
            // debugger;
            let img = ele.image_url
            return <li> <img src={img} /> </li>
        })

          return(
            <ul>
                {allPokemon}
            </ul>
          )

     
    }
}



export default PokemonIndex;