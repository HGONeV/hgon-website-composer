#############
# Default
#############

mod {
	web_layout {
		BackendLayouts {
			single {
				title = LLL:EXT:hgon/Resources/Private/Language/BackendLayouts.xlf:layout.single
				#icon = EXT:hgon/Resources/Public/Icons/BackendLayouts/default.svg
				config {
					backend_layout {
						colCount = 2
						rowCount = 4
						rows {
							1 {
								columns {
									1 {
										name = LLL:EXT:hgon/Resources/Private/Language/BackendLayouts.xlf:content.header
										colPos = 20
									}
								}
							}
							2 {
								columns {
									1 {
										name = LLL:EXT:hgon/Resources/Private/Language/BackendLayouts.xlf:content.teaser
										colPos = 30
									}
								}
							}
							3 {
								columns {
									1 {
										name = LLL:EXT:hgon/Resources/Private/Language/BackendLayouts.xlf:content.content
										colPos = 0
									}
								}
							}
							4 {
								columns {
									1 {
										name = LLL:EXT:hgon/Resources/Private/Language/BackendLayouts.xlf:content.footer
										colPos = 90
									}
								}
							}
						}
					}
				}
			}
		}
	}
}