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
        whereTo = $('#feed_'+fid);
        whereTo.html('');
        $.scrollTo(whereTo, 800);
        for(link in response){
            title = response[link].title;
            title_ = asgRss.addslashes(title);
            url = response[link].url;
            whereTo.append('<p><a target="new" href="'+url+'">'+title+'</a>&nbsp;<a onclick="asgConfig.simcom(\'/bload '+url+'\')" title="load in metabrowser">&#9724;</a>&nbsp;<a title="save locally" onclick="asgConfig.submitLink(\''+url+'\',\''+title_+'\');">&#9670;</a></p>');
        }
    },

    addslashes: function(str) {
        str=str.replace(/\\/g,'\\\\');
        str=str.replace(/\'/g,'\\\'');
        str=str.replace(/\"/g,'\\"');
        str=str.replace(/\0/g,'\\0');
        return str;
    }
         
}
