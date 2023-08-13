const { OpenFeature } = require('@openfeature/js-sdk');
const { FlagdProvider } = require('@openfeature/flagd-provider');

OpenFeature.setProvider(new FlagdProvider({socketPath: '/var/run/flagd.sock'}));


const client = OpenFeature.getClient();

(async ()=> {
	const message = await client.getStringValue("helloMessage", "This is the default hello message");

	console.log(message);
	OpenFeature.close();	
})()
