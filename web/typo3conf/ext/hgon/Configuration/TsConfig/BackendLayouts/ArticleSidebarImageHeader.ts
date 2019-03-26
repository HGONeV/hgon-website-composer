#############
# Default
#############

mod {
	web_layout {
		BackendLayouts {
			articleSidebarImageHeader {
				title = Artikel mit Sidebar (Bild Header)
				#icon = EXT:hgon/Resources/Public/Icons/BackendLayouts/default.svg
				config {
					backend_layout {
						colCount = 3
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
                                    2 {
                                        name = LLL:EXT:hgon/Resources/Private/Language/BackendLayouts.xlf:content.sidebar
                                        colPos = 140
                                    }
                                    3 {
                                        name = LLL:EXT:hgon/Resources/Private/Language/BackendLayouts.xlf:content.sidebarInherit
                                        colPos = 150
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