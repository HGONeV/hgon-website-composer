# 3Columns
tx_gridelements.setup.3Columns {
    title          = 3 Columns
    description    = Drei Spalten Layout
   # flexformDS     = FILE:EXT:hgon/Configuration/FlexForms/GridElements/3Columns.xml
    frame = 10

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