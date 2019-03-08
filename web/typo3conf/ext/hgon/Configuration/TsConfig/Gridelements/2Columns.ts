# 2Columns
tx_gridelements.setup.2Columns {
    title          = 2 Columns
    description    = Zwei Spalten Layout
  //  flexformDS     = FILE:EXT:hgon/Configuration/FlexForm/Gridelements/2Columns.xml
   // iconIdentifier = icon

    frame = 10

    tt_content_defValues {
        header = Ein Header
        header_layout = 100
    }

    config {
        rowCount = 1
        colCount = 2

        rows.1.columns {
            1 {
                name   = Content links
                colPos = 10
                # allowed = *
            }
            2 {
                name   = Content rechts
                colPos = 20
                # allowed = *
            }
        }
    }
}