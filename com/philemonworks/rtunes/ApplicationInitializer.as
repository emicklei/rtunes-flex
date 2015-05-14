package com.philemonworks.rtunes
{
	import com.philemonworks.flex.util.ApplicationContext;
	import com.philemonworks.rtunes.controllers.impl.TrackControllerClient;
	import mx.core.Application;
	import com.philemonworks.flex.nls.NLSResourceBundle;
	import com.philemonworks.flex.nls.NLS;
	
	public class ApplicationInitializer
	{
		public static function init():void {
			var ctx:ApplicationContext = ApplicationContext.current			
			var baseURL:String = "/"
			
			ctx.DEBUG = Application.application.url.indexOf('debug') > 0
			if (ctx.DEBUG) baseURL = "http://localhost:3001/"
			ctx.put("TrackController", new TrackControllerClient(baseURL))
			
			NLS.setProvider(new NLSResourceBundle("us"))
		}
	}
}