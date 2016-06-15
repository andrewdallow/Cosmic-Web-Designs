<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8" />
        <% base_tag %>
        $MetaTags

        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <link rel="shortcut icon" href="{$AbsolutePath}favicon.ico?v=2" />

        <!-- IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script> 
        <![endif]-->

    </head>
    <body ng-app="businessApp">
       

        <div id="wrapper">

            <header id="header">
                <% include Banner %>
                <% include MainNav %>
            </header>
            <main>
                $Layout 
            </main>


            <% include Footer %>

        </div>
         <!-- Google Tag Manager -->
        <noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-TP4QHG"
                          height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
        <script>(function(w, d, s, l, i){w[l] = w[l] || []; w[l].push({'gtm.start':
                new Date().getTime(), event:'gtm.js'}); var f = d.getElementsByTagName(s)[0],
                j = d.createElement(s), dl = l != 'dataLayer'?'&l=' + l:''; j.async = true; j.src =
                '//www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
            })(window, document, 'script', 'dataLayer', 'GTM-TP4QHG');</script>
        <!-- End Google Tag Manager -->
    </body>
</html>
