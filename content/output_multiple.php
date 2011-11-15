<?php
include('../top.php');

if(!$loggedIn){ die('wtf'); }

    foreach($_GET['cmds'] as $cmd){
            
            $q = "SELECT * FROM aspects WHERE command = ?";
            $sth = $dbh->prepare($q);
            $sth->execute(array($cmd));
            if($sth->rowCount() == 1){
                $row = $sth->fetch();
                $div = $row['div'];
                $oid = $row['function'];
                $pref = $row['pref_column'];
                $css = $row['css_class'];

                $doc = new Document($oid);
                print "<div id=\"$div\" class=\"$css\">";
                print "<div id=\"min_$div\" class=\"rollbar\"><div id=\"x_$div\" class=\"x\">&#10006;</div></div>";
                print "<div id=\"".$div."_full\">";
                $doc->outputAndEval();
                print "</div>";
                print "</div>";
?>
<script type="text/javascript">
    asgConfig.onPreference('<?=$pref?>');
    x_div = $('#x_<?=$div?>');
    min_div = $('#min_<?=$div?>');

    x_div.click(function (event) { 
        $('#<?=$div?>').remove();
        asgConfig.offPreference('<?=$pref?>');
        event.stopPropagation(); 
    });

    min_div.click(function(event){
        $('#<?=$div?>_full').toggle();            
    });

</script>

<?php
          }

    }
