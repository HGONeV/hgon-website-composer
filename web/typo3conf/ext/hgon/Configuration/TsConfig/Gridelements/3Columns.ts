# 3Columns
tx_gridelements.setup.3Columns {
    title          = 3 Columns
    description    = Drei Spalten Layout

    frame = 10

    tt_content_defValues {
        header = DefValues header titel
        header_layout = 100
    }

    config {
        rowCount = 1
        colCount = 3

        rows.1.columns {
            1 {
                name   = Content links
                colPos = 10
                # allowed = *
            }
            2 {
                name   = Content mitte
                colPos = 20
                # allowed = *
            }
            3 {
                name   = content rechts
                colPos = 30
                # allowed = *
            }
        }
    }
}