<?php
$TYPO3_CONF_VARS['EXTCONF']['realurl'] = array(

    'encodeSpURL_postProc' => array('user_encodeSpURL_postProc'),
    'decodeSpURL_preProc' => array('user_decodeSpURL_preProc'),

    //===============================================
    // Configuration for ALL domains (fallback)
    '_DEFAULT' => array(

        //===============================================
        // Setup
        'init' => array(
            'enableCHashCache' 			=> 1,
            'appendMissingSlash' 		=> 'ifNotFile,redirect',
            'adminJumpToBackend'        => 1,
            'enableUrlDecodeCache' 		=> 1,
            'enableUrlEncodeCache' 		=> 1,
            'emptyUrlReturnValue'       => '/'
        ),

        //===============================================
        // Redirects
        'redirects' => array(

        ),

        //===============================================
        // Basic variables which are prepended
        'preVars' => array(

            // No-Cache
            array(
                'GETvar' => 'no_cache',
                'valueMap' => array(
                    'nc' => 1,
                ),
                'noMatch' => 'bypass',
            ),

            // type
            array(
                'GETvar' => 'type',
                'valueMap' => array(
                    'pagetype-print' 			=> 	'98',
                    'pagetype-xml'				=>	'150',
                    'pagetype-content-only' 	=> 	'160',
                    'pagetype-plaintext'		=>	'170',
                    'pagetype-csv'				=>	'180',

                    // types from extensions
                    // have to be set here, because otherwise they get ignored in linkBuilder!
                    'pagetype-alerts-ajax'           => 1446640418,
                    'pagetype-consultant-ajax'       => 1449742214,
                    'pagetype-infolayer-ajax'        => 1417609477,
                    'pagetype-registration-ajax'     => 1449722003,
                    'pagetype-search-ajax'           => 1433770902,
                    'pagetype-search-not-found'      => 1444893030,
                    'pagetype-socialcomments-ajax'   => 1417692531,
                    'pagetype-basics-google-sitemap' => 1453279478,
                    'pagetype-wepstra-ajax'          => 1470640639,
                    'pagetype-wepstra-print'         => 1470640673,
                    'pagetype-rss'                   => 1449588488,
                    'pagetype-instantarticles'       => 1449588489,
                    'pagetype-order-ajax'            => 1510210402,
                    'pagetype-tools-ajax'            => 1512989710,
                    'pagetype-ecosystem-ajax'        => 1513597215,
                    'pagetype-ecosystem-print'       => 1513597216,
                    'pagetype-newletter'             => 1536732477,
                ),
                'noMatch' => 'bypass',
            ),


            // Language
            array(
                'GETvar' => 'L',
                'valueMap' => array(
                    'de' => '0',
                    'en' => '1',
                    'fr' => '2',
                    'ru' => '3',
                    'it' => '4'
                ),
                'noMatch' => 'bypass',
            ),
        ),


        //===============================================
        // Params for path-processing
        'pagePath' => array(
            'type' 				=> 'user',
            # 'userFunc' 			=> 'EXT:rkw_tools/Classes/RealUrlV1/class.tx_rkwtools_realurl_advanced.php:&tx_rkwtools_realurl_advanced->main',
            'userFunc'          => 'EXT:realurl/class.tx_realurl_advanced.php:&tx_realurl_advanced->main',
            'spaceCharacter' 	=> '-',
            'languageGetVar' 	=> 'L',
            'expireDays' 		=> 3,
            'rootpage_id' 		=> 1,
        ),


        //===============================================
        // Variables without keyword based grouping
        'fixedPostVarSets' => array(

        ),


        //===============================================
        // Variables with keyword based grouping
        'postVarSets' => array(

            '_DEFAULT' => array(



                //===============================================
                // Registration
                'tx-rkw-registration' => array (
                    array(
                        'GETvar' => 'tx_rkwregistration_rkwregistration[controller]' ,
                        'valueMap' => array(
                            'register' => 'Registration',
                            'service' => 'Service',
                        ),
                    ),
                    array(
                        'GETvar' => 'tx_rkwregistration_rkwregistration[action]' ,
                    ),

                    array(
                        'GETvar' => 'tx_rkwregistration_rkwregistration[token]',
                    ),
                ),


                //===============================================
                // Events
                //===============================================
                'tx-rkw-events' => array (
                    array(
                        'GETvar' => 'tx_rkwevents_pi1[controller]',
                        'valueMap' => array(
                            'event' => 'Event',
                            'reservation' => 'EventReservation',
                        ),
                    ),
                    array(
                        'GETvar' => 'tx_rkwevents_pi1[action]' ,
                    ),

                    // look-up table - param has to be set in cHash-ignore in Install-Tool!
                    array(
                        'GETvar' => 'tx_rkwevents_pi1[event]' ,
                            'lookUpTable' => array(
                            'table' => 'tx_rkwevents_domain_model_event',
                            'id_field' => 'uid',
                            'alias_field' => 'CONCAT(title, "-", uid)',
                            'addWhereClause' => ' AND NOT deleted AND NOT hidden',
                            'useUniqueCache' => 1,
                            'useUniqueCache_conf' => array(
                                'strtolower' => 1,
                                'spaceCharacter' => '-',
                            ),
                        ),
                    ),
                ),

                //===============================================
                // WorkGroups
                //===============================================
                'tx-hgon-workgroup' => array (
                    array(
                        'GETvar' => 'tx_hgonworkgroup_list[controller]',
                        'noMatch' => 'bypass',
                    ),
                    array(
                        'GETvar' => 'tx_hgonworkgroup_list[action]' ,
                        'noMatch' => 'bypass',
                    ),

                    // look-up table - param has to be set in cHash-ignore in Install-Tool!
                    array(
                        'GETvar' => 'tx_hgonworkgroup_list[workGroup]' ,
                        'lookUpTable' => array(
                            'table' => 'tx_hgonworkgroup_domain_model_workgroup',
                            'id_field' => 'uid',
                            'alias_field' => 'CONCAT(title, "-", district)',
                            'addWhereClause' => ' AND NOT deleted AND NOT hidden',
                            'useUniqueCache' => 1,
                            'useUniqueCache_conf' => array(
                                'strtolower' => 1,
                                'spaceCharacter' => '-',
                            ),
                        ),
                    ),
                ),

                //===============================================
                // News
                //===============================================
                'tx-news' => [
                    [
                        'GETvar' => 'tx_news_pi1[action]',
                    ],
                    [
                        'GETvar' => 'tx_news_pi1[controller]',
                    ],
                    [
                        'GETvar' => 'tx_news_pi1[news]',
                        'lookUpTable' => [
                            'table' => 'tx_news_domain_model_news',
                            'id_field' => 'uid',
                            'alias_field' => 'IF(path_segment!="",path_segment,title)',
                            'addWhereClause' => ' AND NOT deleted',
                            'useUniqueCache' => 1,
                            'languageGetVar' => 'L',
                            'languageExceptionUids' => '',
                            'languageField' => 'sys_language_uid',
                            'transOrigPointerField' => 'l10n_parent',
                            'expireDays' => 180,
                            'enable404forInvalidAlias' => true
                        ]
                    ]
                ],
            ),
        ),
    )
);


function user_decodeSpURL_preProc(&$params, &$ref) {
    $params['URL'] = str_replace('event/', 'detail/tx-rkw-events/event/show/', $params['URL']);
    $params['URL'] = str_replace('standort/', 'arbeitskreise/tx-hgon-workgroup/', $params['URL']);
    $params['URL'] = str_replace('aktuelles/', 'detail/tx-news/detail/News/', $params['URL']);
}

function user_encodeSpURL_postProc(&$params, &$ref) {
    $params['URL'] = str_replace('detail/tx-rkw-events/event/show/', 'event/', $params['URL']);
    $params['URL'] = str_replace('arbeitskreise/tx-hgon-workgroup/', 'standort/', $params['URL']);
    $params['URL'] = str_replace('detail/tx-news/detail/News/', 'aktuelles/', $params['URL']);
}
