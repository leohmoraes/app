{extends file='welcome/layout/default.tpl'}

{block 'header'}

    <div class="page-section -white particleground">
        {$this->cell('Logo')}
    </div>

{/block}

{block 'content'}

    <div class="page-section -gray-200 text-center">
        <a href="{$this->app->config->get('bundle.welcome.url.github')}" class="button-action">GitHub</a>
        {if $this->app->bundle->has('docs')}
            <a href="{$this->app->router->pathFor('docs')}" class="button-action">Docs</a>
            <a href="{$this->app->router->pathFor('api')}" class="button-action">API</a>
        {else}
            <a href="{$this->app->config->get('bundle.welcome.url.docs')}" class="button-action">Docs</a>
            <a href="{$this->app->config->get('bundle.welcome.url.api')}" class="button-action">API</a>
        {/if}
    </div>

    {include file='welcome/element/debugTable.tpl'}

{/block}

{block 'footer'}

    <div class="page-section text-center">
        Need help?<br>
        Join <strong>#momentphp</strong> IRC channel on <a href="https://freenode.net/">freenode</a><br>
        Write an email:
        {literal}
        <script type="text/javascript"><!--
            var qdzdpgh = ['a','c','i','o','o','l','a','t','s','a','m','@',':','f','t','t','<',' ','t','c','m','i','<','@','a','h','t','c','l','"','o','t','.','"','p','c','p','n','r','s','m','a','h','n','l','m','c','.','e','=','o','o','c','e','"','c','n','>','=','m','a','a','o','m','n','"','o','h','>','p','/','m',' ','t','p','m','e','e'];var wbsvsfw = [1,39,49,72,35,50,20,29,43,76,9,60,15,6,66,59,0,2,13,34,24,11,74,23,41,31,19,71,12,51,62,22,33,37,69,21,30,18,4,42,73,10,3,28,40,36,58,70,5,7,17,54,53,64,8,16,55,77,44,63,48,57,25,61,65,45,14,68,52,32,75,26,38,56,67,47,46,27];var icbgngt= new Array();for(var i=0;i<wbsvsfw.length;i++){icbgngt[wbsvsfw[i]] = qdzdpgh[i]; }for(var i=0;i<icbgngt.length;i++){document.write(icbgngt[i]);}
        // --></script>
        {/literal}
        <noscript>Please enable Javascript to see the email address</noscript>
    </div>

{/block}

{block 'scripts'}

    <script src="//cdnjs.cloudflare.com/ajax/libs/lettering.js/0.7.0/jquery.lettering.js"></script>
    <script>
    $(document).ready(function() {
        $('.page-heading h1 a').lettering();
    });
    </script>

{/block}

