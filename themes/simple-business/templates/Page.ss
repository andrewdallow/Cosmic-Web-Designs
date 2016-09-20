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

                <!-- Facebook Pixel Code -->
                <script>
                    !function (f, b, e, v, n, t, s) {
                        if (f.fbq)
                            return;
                        n = f.fbq = function () {
                            n.callMethod ?
                                n.callMethod.apply(n, arguments) : n.queue.push(arguments)
                        };
                        if (!f._fbq)
                            f._fbq = n;
                        n.push = n;
                        n.loaded = !0;
                        n.version = '2.0';
                        n.queue = [];
                        t = b.createElement(e);
                        t.async = !0;
                        t.src = v;
                        s = b.getElementsByTagName(e)[0];
                        s.parentNode.insertBefore(t, s)
                    }(window,
                        document, 'script', 'https://connect.facebook.net/en_US/fbevents.js');

                    fbq('init', '1028650177220636');
                    fbq('track', "PageView");</script>
                <noscript><img height="1" width="1" style="display:none"
                               src="https://www.facebook.com/tr?id=1028650177220636&ev=PageView&noscript=1"
                               /></noscript>
                <!-- End Facebook Pixel Code -->
            </header>
            <main>
                $Layout 
            </main>


            <% include Footer %>

        </div>
        <!-- Google Tag Manager -->
        <noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-TP4QHG"
                          height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
        <script>(function (w, d, s, l, i) {
                w[l] = w[l] || [];
                w[l].push({'gtm.start':
                        new Date().getTime(), event: 'gtm.js'});
                var f = d.getElementsByTagName(s)[0],
                    j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
                j.async = true;
                j.src =
                    '//www.googletagmanager.com/gtm.js?id=' + i + dl;
                f.parentNode.insertBefore(j, f);
            })(window, document, 'script', 'dataLayer', 'GTM-TP4QHG');</script>
        <!-- End Google Tag Manager -->
        <!-- Go to www.addthis.com/dashboard to customize your tools -->
        <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5770b7ed60ef4a87"></script>

    </body>
</html>
