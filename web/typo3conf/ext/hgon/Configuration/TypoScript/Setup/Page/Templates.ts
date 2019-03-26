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
               // case = uppercamelcase
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

            # following is part of settings
			#websiteName = TEXT
			#websiteName.value = {$globalWebsiteConfig.websiteName}
			#pageTitle = TEXT
			#pageTitle.data = page:title

            header = CONTENT
            header.table = tt_content
            header.slide = -1
            header.select {
                where = colPos = 30
                orderBy = sorting
                languageField = sys_language_uid
            }

            sidebar = CONTENT
            sidebar.table = tt_content
            sidebar.slide = -1
            sidebar.select {
                where = colPos = 140
                orderBy = sorting
                languageField = sys_language_uid
            }

            sidebarInherit = CONTENT
            sidebarInherit.table = tt_content
            sidebarInherit.slide = -1
            sidebarInherit.select {
                where = colPos = 150
                orderBy = sorting
                languageField = sys_language_uid
            }

            footer = CONTENT
            footer.table = tt_content
            footer.slide = -1
            footer.select {
                where = colPos = 90
                orderBy = sorting
                languageField = sys_language_uid
            }
		}
	}
}