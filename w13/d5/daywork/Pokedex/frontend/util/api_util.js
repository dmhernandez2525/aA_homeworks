export const fetchAllPokemon = () =>{
    return (
        $.ajax({
            url: "/api/pokemon",
            type: 'GET'
            // success(){
            //     console.log('ajax in success');
            // }
        })
    );
};

