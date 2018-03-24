var tcpp = require('tcp-ping');
tcpp.probe('132.239.8.164', 80, function(err, available) {console.log(available); });
tcpp.ping({ address: '132.239.8.164' }, function(err, data) {     console.log(data); });
