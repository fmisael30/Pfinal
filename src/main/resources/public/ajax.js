$(function() {
    $('#action').click(function() {
        $.ajax({
            url: "/usong",
            success: function(res) {
                console.log(res);
                $('#titulo').text(res.name);
                $('#artistas').text('');
                for(var i = 0; i < res.artist.length; i++) {
                    var artist = res.artists[i];
                    $('#artista').append(
                        '<li>' + artist.name + '</li>'
                    );
                }
                
                $('#generos').text('');
                for(var i = 0; i < res.genres.length; i++) {
                    var gene = res.genres[i];
                    $('#generos').append(
                        '<li>' + gene + '</li>'
                    );
                }
                
                $('#ano').text(res.year);

            },
            error: function(err) {
                console.log(err);
            },
        });
    });
});