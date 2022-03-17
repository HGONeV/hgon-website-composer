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
                    'pagetype-newletter'        => 1536732477,
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
            'rootpage_id' 		=> 1
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
                // HgonWorkGroups
                //===============================================
                'tx-hgon-workgroup' => array (
                    array(
                        'GETvar' => 'tx_hgonworkgroup_detail[controller]',
                        'noMatch' => 'bypass',
                    ),
                    array(
                        'GETvar' => 'tx_hgonworkgroup_detail[action]' ,
                        'noMatch' => 'bypass',
                    ),

                    // look-up table - param has to be set in cHash-ignore in Install-Tool!
                    array(
                        'GETvar' => 'tx_hgonworkgroup_detail[workGroup]' ,
                        'lookUpTable' => array(
                            'table' => 'tx_hgonworkgroup_domain_model_workgroup',
                            'id_field' => 'uid',
                            'alias_field' => 'CONCAT(title)',
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
                // HgonDonation
                //===============================================
                'tx-hgon-donation' => array (
                    array(
                        'GETvar' => 'tx_hgondonation_detail[controller]',
                        'noMatch' => 'bypass',
                    ),
                    array(
                        'GETvar' => 'tx_hgondonation_detail[action]' ,
                        'noMatch' => 'bypass',
                    ),

                    // look-up table - param has to be set in cHash-ignore in Install-Tool!
                    array(
                        'GETvar' => 'tx_hgondonation_detail[donation]' ,
                        'lookUpTable' => array(
                            'table' => 'tx_hgondonation_domain_model_donation',
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
                // HgonPayment
                //===============================================
                'tx-hgon-payment' => array (
                    array(
                        'GETvar' => 'tx_hgonpayment_order[controller]',
                        'noMatch' => 'bypass',
                    ),
                    array(
                        'GETvar' => 'tx_hgonpayment_order[action]' ,
                        'noMatch' => 'bypass',
                    ),
                    array(
                        'GETvar' => 'tx_hgonpayment_subscription[controller]',
                        'noMatch' => 'bypass',
                    ),
                    array(
                        'GETvar' => 'tx_hgonpayment_subscription[action]' ,
                        'noMatch' => 'bypass',
                    ),
                ),

                //===============================================
                // Journal (HgonTemplate)
                //===============================================
                'tx-hgon-journal' => array (
                    array(
                        'GETvar' => 'tx_hgontemplate_journal[controller]',
                        'noMatch' => 'bypass',
                    ),
                    array(
                        'GETvar' => 'tx_hgontemplate_journal[action]' ,
                        'noMatch' => 'bypass',
                    ),

                    // look-up table - param has to be set in cHash-ignore in Install-Tool!
                    array(
                        'GETvar' => 'tx_hgontemplate_journal[sysCategory]' ,
                        'lookUpTable' => array(
                            'table' => 'sys_category',
                            'id_field' => 'uid',
                            'alias_field' => 'title',
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
    $params['URL'] = preg_replace('/^event\//', 'veranstaltung/tx-rkw-events/event/show/', $params['URL']);
    $params['URL'] = preg_replace('/^aktuelles\//', 'detail/tx-news/detail/News/', $params['URL']);
    $params['URL'] = preg_replace('/^mit-freude-spenden\//', 'mit-freude-spenden/tx-hgon-donation/', $params['URL']);
    $params['URL'] = preg_replace('/^kategorie\//', 'tx-hgon-journal/', $params['URL']);
    $params['URL'] = preg_replace('/^arbeitskreis\//', 'detailansicht/tx-hgon-workgroup/', $params['URL']);
}

function user_encodeSpURL_postProc(&$params, &$ref) {
    $params['URL'] = str_replace('veranstaltung/tx-rkw-events/event/show/', 'event/', $params['URL']);
    $params['URL'] = str_replace('detail/tx-news/detail/News/', 'aktuelles/', $params['URL']);
    $params['URL'] = str_replace('mit-freude-spenden/tx-hgon-donation/', 'mit-freude-spenden/', $params['URL']);
    $params['URL'] = str_replace('tx-hgon-journal/', 'kategorie/', $params['URL']);
    $params['URL'] = str_replace('detailansicht/tx-hgon-workgroup/', 'arbeitskreis/', $params['URL']);
}



/**
 * Development environment
 * TYPO3_CONTEXT Development
 */
if(\TYPO3\CMS\Core\Utility\GeneralUtility::getApplicationContext()->isDevelopment()) {

    $TYPO3_CONF_VARS['EXTCONF']['realurl']['hgon-libellen.rkw.local'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['_DEFAULT'];
    $TYPO3_CONF_VARS['EXTCONF']['realurl']['hgon-libellen.rkw.local']['pagePath']['rootpage_id'] = 78;

    $TYPO3_CONF_VARS['EXTCONF']['realurl']['hgon-rebhuhn.rkw.local'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['_DEFAULT'];
    $TYPO3_CONF_VARS['EXTCONF']['realurl']['hgon-rebhuhn.rkw.local']['pagePath']['rootpage_id'] = 91;
}

/**
 * Staging environment
 * TYPO3_CONTEXT Production/Staging
 */
if(
    (\TYPO3\CMS\Core\Utility\GeneralUtility::getApplicationContext()->isProduction())
    && (\TYPO3\CMS\Core\Utility\GeneralUtility::getApplicationContext()->__toString() === 'Production/Staging')
){

    $TYPO3_CONF_VARS['EXTCONF']['realurl']['stage.hgon-libellen.de'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['_DEFAULT'];
    $TYPO3_CONF_VARS['EXTCONF']['realurl']['stage.hgon-libellen.de']['pagePath']['rootpage_id'] = 333;

    $TYPO3_CONF_VARS['EXTCONF']['realurl']['stage.hgon-rebhuhn.de'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['_DEFAULT'];
    $TYPO3_CONF_VARS['EXTCONF']['realurl']['stage.hgon-rebhuhn.de']['pagePath']['rootpage_id'] = 345;
}