# 3Columns
tx_gridelements.setup.4Columns {
    title          = 4 Columns
    description    = Zwei Spalten, zwei Reihen
    flexformDS     = FILE:EXT:hgon/Configuration/FlexForms/GridElements/4Columns.xml
    frame = 10

    config {
        rowCount = 2
        colCount = 2

        rows {
            1.columns {
                1 {
                    name   = Content oben links
                    colPos = 10
                    # allowed = *
                }
                2 {
                    name   = Content oben rechts
                    colPos = 20
                    # allowed = *
                }
            }
            2.columns {
                1 {
                    name   = Content unten links
                    colPos = 30
                    # allowed = *
                }
                2 {
                    name   = Content unten rechts
                    colPos = 40
                    # allowed = *
                }
            }
        }
    }
}