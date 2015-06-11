{if $this->app->debug}

    <div class="page-section -gray-300">
        <div class="table-default">
            <table>
                <tr>
                    <th>
                        $app&rarr;database&rarr;getConnection()
                        <small>Default database connection (<code>false</code> if unable to connect)</small>
                    </th>
                    <td>{$this->dump($this->app->database->connectionStatus())}</td>
                </tr>
                <tr>
                    <th>
                        $app&rarr;env
                        <small>App environment</small>
                    </th>
                    <td>{$this->dump($this->app->env)}</td>
                </tr>
                <tr>
                    <th>
                        $app&rarr;environment
                        <small>Server environment</small>
                    </th>
                    <td>{$this->dump($this->app->environment)}</td>
                </tr>
                <tr>
                    <th>
                        $app&rarr;debug
                        <small>App debug flag</small>
                    </th>
                    <td>{$this->dump($this->app->debug)}</td>
                </tr>
                <tr>
                    <th>
                        $app&rarr;pathBase
                        <small>Install path</small>
                    </th>
                    <td>{$this->dump($this->app->pathBase)}</td>
                </tr>
                 <tr>
                    <th>
                        $app&rarr;pathWeb
                        <small>Webserver path (DocumentRoot)</small>
                    </th>
                    <td>{$this->dump($this->app->pathWeb)}</td>
                </tr>
                <tr>
                    <th>
                        $app&rarr;pathTmp
                        <small>Temporary files path</small>
                    </th>
                    <td>{$this->dump($this->app->pathTmp)}</td>
                </tr>
                <tr>
                    <th>
                        $app&rarr;config&rarr;getItems()
                        <small>App configuration</small>
                    </th>
                    <td>{$this->dump($this->app->config->getItems())}</td>
                </tr>
                <tr>
                    <th>
                        $app&rarr;bundle&rarr;loaded()
                        <small>Loaded bundles</small>
                    </th>
                    <td>{$this->dump($this->app->bundle->loaded())}</td>
                </tr>
                <tr>
                    <th>
                        $app&rarr;getContainer()&rarr;keys()
                        <small>Services inside service container</small>
                    </th>
                    <td>{$this->dump($this->app->getContainer()->keys())}</td>
                </tr>
            </table>
        </div>
    </div>

{/if}
