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

        gridelements {
            layouts = EXT:hgon/Resources/Private/Gridelements/Layouts/
            partials = EXT:hgon/Resources/Private/Gridelements/Partials/
            templates = EXT:hgon/Resources/Private/Gridelements/Templates/
        }

	}

	breakpoints {
		mobile = 320
		tablet = 768
		desktop = 1024
	}

	// IMPORTANT: With / at the end for ClickEnlarge
	baseUrl = https://www.hgon.de/

    website {
        name = HGON
        description = Hessische Gesellschaft für Ornithologie und Naturschutz e.V.

        logoFile = {$globalWebsiteConfig.templatePaths.default.logos}/logo-hgon.svg
        logoFileSmall = {$globalWebsiteConfig.templatePaths.default.logos}/logo-hgon-small.svg
        #logoOffcanvasFile = {$globalWebsiteConfig.templatePaths.default.logos}/logo-offcanvas.png
        #logoOffcanvasIconOnlyFile = {$globalWebsiteConfig.templatePaths.default.logos}/logo-offcanvas-icon.png
        #logoBrokenLinkFile = {$globalWebsiteConfig.templatePaths.default.logos}/broken-link.png

        #socialMedia = 1
    }


}