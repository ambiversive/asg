var asgRss = {
    
    loadLinks: function(feed_id){
            $.ajax({
                type: "GET",
                url: "rss/fetch_single_rss.php",
                data: { feed_id: feed_id  },
                dataType: "json",
                timeout: 2500, 
                success: function(response){ asgRss.success(response,feed_id); }
            });
    },

    success: function(response, fid){
        $('#feed_'+fid).html('');
        for(link in response){
            title = response[link].title;
            url = response[link].url;
            $('#feed_'+fid).append('<p><a href="'+url+'">'+title+'</a></p>');
        }
    }
         
}
