
const fetchSearchGiphys = (searchTerm) => {
    return (
        $.ajax({
           url: `http://api.giphy.com/v1/gifs/search?q=${searchTerm}&api_key=Nj1ZL5AT57GZZJpNxCUqVMyfzzFgr245&limit=2`,
           type: 'GET',
        //    data: formData,
           success() {
               console.log('Your callback here!');
           }
            
        })
    )
};

export default fetchSearchGiphys;