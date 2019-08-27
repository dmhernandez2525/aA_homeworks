import { connect } from "react-redux";
import {requestAllPokemon} from "../actions/pokemon_actions"
import PokemonIndex from "./pokemon_index"
import {selectAllPokemon} from "../reducers/selectors"

const mapStateToProps = (state, ownProps) => {
    // debugger;
    return({
        
        pokemon: selectAllPokemon(state)
    })
// piece of state that container subscribes to
};

const mapDispatchToProps = (dispatch, ownProps) => {
    return ({
        requestAllPokemon: () => dispatch(requestAllPokemon()) 
    });
};

export default connect (mapStateToProps, mapDispatchToProps)(PokemonIndex)