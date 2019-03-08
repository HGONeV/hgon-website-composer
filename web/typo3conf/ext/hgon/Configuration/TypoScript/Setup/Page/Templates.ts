# https://usetypo3.com/backend-layouts.html
page = PAGE
page {
	typeNum = 0

	10 = FLUIDTEMPLATE
	10 {
		# Template paths
		layoutRootPaths {
			20 = {$globalWebsiteConfig.templatePaths.default.layouts}
		}
		partialRootPaths {
			20 = {$globalWebsiteConfig.templatePaths.default.partials}
		}
		templateRootPaths {
			20 = {$globalWebsiteConfig.templatePaths.default.templates}
		}

		# Set template name
        templateName {
            cObject = TEXT
            cObject {
                data = pagelayout
                required = 1
                case = uppercamelcase
                split {
                    token = pagets__
                    cObjNum = 1
                    1.current = 1
                }
            }
            ifEmpty = Default
        }

		# Variables
		variables {
			# further data
			rootPid = TEXT
			rootPid.data = leveluid:0
			websiteName = TEXT
			websiteName.value = {$globalWebsiteConfig.websiteName}
			#pageTitle = TEXT
			#pageTitle.data = page:title
		}
	}
}