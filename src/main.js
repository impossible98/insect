var liveServer = require('live-server');

var params = {
    port: 9191,
    host: '0.0.0.0',
    root: 'src',
    open: true,
    logLevel: 3
};

liveServer.start(params);
