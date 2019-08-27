export const selectAllPokemon = (state) => {
    Object.freeze(state);
    return(
        Object.values(state.entities.pokemon)
    )
};

