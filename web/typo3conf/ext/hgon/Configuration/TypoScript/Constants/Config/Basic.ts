// ############################################################################
// Global paths
// ############################################################################
globalWebsiteConfig {
	templatePaths {
		default {
			# private
			layouts = EXT:hgon/Resources/Private/Page/Layouts/
			partials = EXT:hgon/Resources/Private/Page/Partials/
			templates = EXT:hgon/Resources/Private/Page/Templates/

			# public
			styles = EXT:hgon/Resources/Public/Styles
			scripts = EXT:hgon/Resources/Public/Scripts
			images = EXT:hgon/Resources/Public/Images
			icons = EXT:hgon/Resources/Public/Icons
			logos = EXT:hgon/Resources/Public/Logos

			#specials = fileadmin/templates/kompetenzzentrum/specials
			#lib = fileadmin/templates/kompetenzzentrum/lib
		}

        fluidStyledContent {
            layouts = EXT:hgon/Resources/Private/FluidStyledContent/Layouts/
            partials = EXT:hgon/Resources/Private/FluidStyledContent/Partials/
            templates = EXT:hgon/Resources/Private/FluidStyledContent/Templates/
        }
		/*
		extensions {
			templates = fileadmin/templates/kompetenzzentrum/html/Extensions
			partials = fileadmin/templates/kompetenzzentrum/html/Extensions
			layouts = fileadmin/templates/kompetenzzentrum/html/Extensions
		}

		micrositeMainWebsite {
			images = fileadmin/templates/kompetenzzentrum/images
			logos = fileadmin/templates/kompetenzzentrum/images/logos
		}
		*/
	}

	#breakpoints {
	#	mobile = 320
	#	tablet = 768
	#	desktop = 1024
	#}

	// IMPORTANT: With / at the end for ClickEnlarge
	baseUrl = https://www.hgon.de/

	websiteName = HGON

	websiteLogoFile = {$globalWebsiteConfig.templatePaths.default.logos}/hgon_logo.png
	#websiteLogoTabletFile =
	#websiteLogoOffcanvasFile = {$globalWebsiteConfig.templatePaths.default.logos}/logo-offcanvas.png
	#websiteLogoOffcanvasIconOnlyFile = {$globalWebsiteConfig.templatePaths.default.logos}/logo-offcanvas-icon.png
	#websiteLogoBrokenLinkFile = {$globalWebsiteConfig.templatePaths.default.logos}/broken-link.png

	#socialMedia = 1
	#isMicrosite = 0

}
