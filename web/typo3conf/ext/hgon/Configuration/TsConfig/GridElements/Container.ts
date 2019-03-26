# Bootstrap Container

tx_gridelements {
    # TS Elemente haben Vorrang vor Datensätzen mit gleichen IDs
    overruleRecords = 1

    setup {
        #OneColumns
        #-------------------------------------------------------------------------------
        Container {
            title = Container
            description = Container Beispiel
            frame = 1
            flexformDS = FILE:EXT:hgon/Configuration/FlexForms/GridElements/Container.xml
            topLevelLayout = 0
            config {
                colCount = 1
                rowCount = 1
                rows {
                    1 {
                        columns {
                            1 {
                                name = Container
                                colPos = 10
                            }
                        }
                    }
                }
            }
        }
    }
}