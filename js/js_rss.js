var asgRss = {
    
    loadLinks: function(feed_id){
            $.ajax({
                type: "GET",
                url: "rss/fetch_single_rss.php",
                data: { feed_id: feed_id  },
                dataType: "json",
                timeout: 25000, 
                success: function(response){ asgRss.success(response,feed_id); }
            });
    },

    success: function(response, fid){
        whereTo = $('#feed_'+fid);
        whereTo.html('');
        
        whereTo.append('<table>');
        for(link in response){
            sub = response[link].subreddit;
            title_en = response[link].title_en;
            title = response[link].title;
            title_ = asgRss.addslashes(title);
            url = response[link].url;
            whereTo.append('<tr><td class=\"rss_reddit\"><a target="_blank" href="http://reddit.com/r/'+sub+'/submit?url='+url+'&title='+title_en+'" title="submit to reddit/r/'+sub+'">&#9664;</a></td><td class=\"rss_link\"><a target="_blank" href="'+url+'">&nbsp;'+title+'&nbsp;</a></td><td class=\"rss_meta\"><a onclick="asgConfig.simcom(\'/bload '+url+'\')" title="load in metabrowser">&#9724;</a></td><td class=\"rss_save\"><a title="save locally" onclick="$(this).hide();asgConfig.submitLink(\''+url+'\',\''+title_+'\');">&#9654;</a></td></tr>');
        }
        whereTo.append('</table>');
        $.scrollTo($('#rss'), 800);
        $('#rss_full').scrollTo(whereTo, 800);
    },

    addslashes: function(str) {
        str=str.replace(/\\/g,'\\\\');
        str=str.replace(/\'/g,'\\\'');
        str=str.replace(/\"/g,'\\"');
        str=str.replace(/\0/g,'\\0');
        return str;
    }
         
}

