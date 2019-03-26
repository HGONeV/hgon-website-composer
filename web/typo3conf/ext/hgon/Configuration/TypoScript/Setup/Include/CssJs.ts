//############################################################################
// CSS and JS
//############################################################################
page {
	//===============================================================
	// CSS
	//===============================================================
	includeCSS {

        file10 = {$globalWebsiteConfig.templatePaths.default.styles}/styles.css
		file10.media = screen,print

        file15 = {$globalWebsiteConfig.templatePaths.default.styles}/Main.css
        file15.media = screen,print

		#file20 = {$globalWebsiteConfig.templatePaths.default.styles}/ie9.css
		#file20.media = screen,print
		#file20.allWrap = <!--[if IE]>|<![endif]-->

		// Nur auf den Druck-Seiten!
		// file30 = {$globalWebsiteConfig.templatePaths.default.styles}/print.css
		// file30.media = screen,print
	}

	//===============================================================
	// Other CSS
	//===============================================================
	/*
	headerData {
		20 = TEXT
		20 {
			value = <script src="/{$globalWebsiteConfig.templatePaths.default.scripts}/libs/html5shiv.js"></script>
			wrap = <!--[if lte IE 8]>|<![endif]-->
		}

		30 = TEXT
		30.value = <script src="//use.typekit.net/frq0css.js"></script>

		40 = TEXT
		40.value (
			<script>document.createElement("picture");</script>
			<script src="{$globalWebsiteConfig.templatePaths.default.js}/libs/picturefill.js" async></script>
		)
	}
	*/

	//===============================================================
	// JS
	//===============================================================
	// Remove JavaScripts from header
	includeJS >

	// Include JavaScripts in footer (loading time optimization)
	includeJSFooter {

	}

	// Include as lib because it contains jQuery
	includeJSFooterlibs {
		// Important: Force on top is dependent on its call in script, so the latest call is the first script being loaded
		// it is NOT dependent on the number given to that file
        file5 = {$globalWebsiteConfig.templatePaths.default.scripts}/vendor.js

		file10 = {$globalWebsiteConfig.templatePaths.default.scripts}/scripts.js
		//file10.forceOnTop = 1

        file15 = {$globalWebsiteConfig.templatePaths.default.scripts}/main.js

       // file30 = {$globalWebsiteConfig.templatePaths.default.scripts}/loadcss.js

		//file5 = {$globalWebsiteConfig.templatePaths.default.scripts}/libs/polyfills.js
		//file5.forceOnTop = 1

		//file15 = {$globalWebsiteConfig.templatePaths.default.scripts}/libs/jquery-ui.js

		//file20 = {$globalWebsiteConfig.templatePaths.default.scripts}/libs/responsive-tables.js
	}

}
