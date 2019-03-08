# https://docs.typo3.org/typo3cms/extensions/core/Changelog/8.5/Feature-78672-IntroduceFluidDataProcessorForMenus.html
# https://www.thomaskieslich.de/blog/132-typo3-8-menues-mit-fluid-und-menuprocessor-erstellen/

page.10 {
	# Main
	dataProcessing {
		10 = TYPO3\CMS\Frontend\DataProcessing\MenuProcessor
		10 {
			special = directory
			special.value = 1
			levels = 2
			includeSpacer = 1
			as = menuMain
		}

		20 = TYPO3\CMS\Frontend\DataProcessing\MenuProcessor
		20 {
			special = list
			special.value = 10,11
            includeSpacer = 0
			levels = 1
			as = menuMeta
		}


        // @toDo: Erster Menüpunkt ist "Über uns" und nicht "HGON"
        30 = TYPO3\CMS\Frontend\DataProcessing\MenuProcessor
        30 {
            special = list
            special.value = 6,2,5
            includeSpacer = 0
            levels = 2
            as = menuFooter
        }

        40 = TYPO3\CMS\Frontend\DataProcessing\MenuProcessor
        40 {
            special = list
            special.value = 11
            includeSpacer = 0
            levels = 0
            as = menuFooterAdditional
        }
	}
}
