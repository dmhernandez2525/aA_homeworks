export const RECEIVE_ALL_POKEMON = "RECEIVE_ALL_POKEMON";

export const receiveAllPokemon = pokemon => ({
    type: RECEIVE_ALL_POKEMON,
    pokemon
});

// FIGURE OUT EXPLICIT RETURN LATER
// export const receiveAllPokemon = (pokemon) => {
//     return (
//         debugger
//     type: RECEIVE_ALL_POKEMON,
//     pokemon
//     );
// };