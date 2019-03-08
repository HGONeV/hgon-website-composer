# https://jweiland.net/typo3/codebeispiele/typoscript/zusaetzliche-ueberschriften.html

lib.contentElement {
    templateRootPaths {
        30 = {$globalWebsiteConfig.templatePaths.fluidStyledContent.templates}
    }
    partialRootPaths {
        30 = {$globalWebsiteConfig.templatePaths.fluidStyledContent.partials}
    }
    layoutRootPaths {
        30 = {$globalWebsiteConfig.templatePaths.fluidStyledContent.layouts}
    }
}

