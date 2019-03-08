<?php
namespace HGON\HgonBasic\Tests\Unit\Domain\Model;

/**
 * Test case.
 *
 * @author Maximilian Fäßler <maximilian@faesslerweb.de>
 */
class OperatorTest extends \TYPO3\CMS\Core\Tests\UnitTestCase
{
    /**
     * @var \HGON\HgonBasic\Domain\Model\Operator
     */
    protected $subject = null;

    protected function setUp()
    {
        parent::setUp();
        $this->subject = new \HGON\HgonBasic\Domain\Model\Operator();
    }

    protected function tearDown()
    {
        parent::tearDown();
    }

    /**
     * @test
     */
    public function getFirstNameReturnsInitialValueForString()
    {
        self::assertSame(
            '',
            $this->subject->getFirstName()
        );

    }

    /**
     * @test
     */
    public function setFirstNameForStringSetsFirstName()
    {
        $this->subject->setFirstName('Conceived at T3CON10');

        self::assertAttributeEquals(
            'Conceived at T3CON10',
            'firstName',
            $this->subject
        );

    }

    /**
     * @test
     */
    public function getMiddleNameReturnsInitialValueForString()
    {
        self::assertSame(
            '',
            $this->subject->getMiddleName()
        );

    }

    /**
     * @test
     */
    public function setMiddleNameForStringSetsMiddleName()
    {
        $this->subject->setMiddleName('Conceived at T3CON10');

        self::assertAttributeEquals(
            'Conceived at T3CON10',
            'middleName',
            $this->subject
        );

    }

    /**
     * @test
     */
    public function getLastNameReturnsInitialValueForString()
    {
        self::assertSame(
            '',
            $this->subject->getLastName()
        );

    }

    /**
     * @test
     */
    public function setLastNameForStringSetsLastName()
    {
        $this->subject->setLastName('Conceived at T3CON10');

        self::assertAttributeEquals(
            'Conceived at T3CON10',
            'lastName',
            $this->subject
        );

    }

    /**
     * @test
     */
    public function getTitleAfterReturnsInitialValueForString()
    {
        self::assertSame(
            '',
            $this->subject->getTitleAfter()
        );

    }

    /**
     * @test
     */
    public function setTitleAfterForStringSetsTitleAfter()
    {
        $this->subject->setTitleAfter('Conceived at T3CON10');

        self::assertAttributeEquals(
            'Conceived at T3CON10',
            'titleAfter',
            $this->subject
        );

    }

    /**
     * @test
     */
    public function getTitleBeforeReturnsInitialValueForString()
    {
        self::assertSame(
            '',
            $this->subject->getTitleBefore()
        );

    }

    /**
     * @test
     */
    public function setTitleBeforeForStringSetsTitleBefore()
    {
        $this->subject->setTitleBefore('Conceived at T3CON10');

        self::assertAttributeEquals(
            'Conceived at T3CON10',
            'titleBefore',
            $this->subject
        );

    }

    /**
     * @test
     */
    public function getStreetReturnsInitialValueForString()
    {
        self::assertSame(
            '',
            $this->subject->getStreet()
        );

    }

    /**
     * @test
     */
    public function setStreetForStringSetsStreet()
    {
        $this->subject->setStreet('Conceived at T3CON10');

        self::assertAttributeEquals(
            'Conceived at T3CON10',
            'street',
            $this->subject
        );

    }

    /**
     * @test
     */
    public function getHouseNumberReturnsInitialValueForString()
    {
        self::assertSame(
            '',
            $this->subject->getHouseNumber()
        );

    }

    /**
     * @test
     */
    public function setHouseNumberForStringSetsHouseNumber()
    {
        $this->subject->setHouseNumber('Conceived at T3CON10');

        self::assertAttributeEquals(
            'Conceived at T3CON10',
            'houseNumber',
            $this->subject
        );

    }

    /**
     * @test
     */
    public function getZipReturnsInitialValueForInt()
    {
    }

    /**
     * @test
     */
    public function setZipForIntSetsZip()
    {
    }

    /**
     * @test
     */
    public function getCityReturnsInitialValueForString()
    {
        self::assertSame(
            '',
            $this->subject->getCity()
        );

    }

    /**
     * @test
     */
    public function setCityForStringSetsCity()
    {
        $this->subject->setCity('Conceived at T3CON10');

        self::assertAttributeEquals(
            'Conceived at T3CON10',
            'city',
            $this->subject
        );

    }

    /**
     * @test
     */
    public function getEmailReturnsInitialValueForString()
    {
        self::assertSame(
            '',
            $this->subject->getEmail()
        );

    }

    /**
     * @test
     */
    public function setEmailForStringSetsEmail()
    {
        $this->subject->setEmail('Conceived at T3CON10');

        self::assertAttributeEquals(
            'Conceived at T3CON10',
            'email',
            $this->subject
        );

    }

    /**
     * @test
     */
    public function getPhoneFixedReturnsInitialValueForString()
    {
        self::assertSame(
            '',
            $this->subject->getPhoneFixed()
        );

    }

    /**
     * @test
     */
    public function setPhoneFixedForStringSetsPhoneFixed()
    {
        $this->subject->setPhoneFixed('Conceived at T3CON10');

        self::assertAttributeEquals(
            'Conceived at T3CON10',
            'phoneFixed',
            $this->subject
        );

    }

    /**
     * @test
     */
    public function getPhoneMobileReturnsInitialValueForString()
    {
        self::assertSame(
            '',
            $this->subject->getPhoneMobile()
        );

    }

    /**
     * @test
     */
    public function setPhoneMobileForStringSetsPhoneMobile()
    {
        $this->subject->setPhoneMobile('Conceived at T3CON10');

        self::assertAttributeEquals(
            'Conceived at T3CON10',
            'phoneMobile',
            $this->subject
        );

    }

    /**
     * @test
     */
    public function getFaxReturnsInitialValueForString()
    {
        self::assertSame(
            '',
            $this->subject->getFax()
        );

    }

    /**
     * @test
     */
    public function setFaxForStringSetsFax()
    {
        $this->subject->setFax('Conceived at T3CON10');

        self::assertAttributeEquals(
            'Conceived at T3CON10',
            'fax',
            $this->subject
        );

    }

    /**
     * @test
     */
    public function getUrlReturnsInitialValueForString()
    {
        self::assertSame(
            '',
            $this->subject->getUrl()
        );

    }

    /**
     * @test
     */
    public function setUrlForStringSetsUrl()
    {
        $this->subject->setUrl('Conceived at T3CON10');

        self::assertAttributeEquals(
            'Conceived at T3CON10',
            'url',
            $this->subject
        );

    }

    /**
     * @test
     */
    public function getFacebookUrlReturnsInitialValueForString()
    {
        self::assertSame(
            '',
            $this->subject->getFacebookUrl()
        );

    }

    /**
     * @test
     */
    public function setFacebookUrlForStringSetsFacebookUrl()
    {
        $this->subject->setFacebookUrl('Conceived at T3CON10');

        self::assertAttributeEquals(
            'Conceived at T3CON10',
            'facebookUrl',
            $this->subject
        );

    }

    /**
     * @test
     */
    public function getTwitterUrlReturnsInitialValueForString()
    {
        self::assertSame(
            '',
            $this->subject->getTwitterUrl()
        );

    }

    /**
     * @test
     */
    public function setTwitterUrlForStringSetsTwitterUrl()
    {
        $this->subject->setTwitterUrl('Conceived at T3CON10');

        self::assertAttributeEquals(
            'Conceived at T3CON10',
            'twitterUrl',
            $this->subject
        );

    }

    /**
     * @test
     */
    public function getXingUrlReturnsInitialValueForString()
    {
        self::assertSame(
            '',
            $this->subject->getXingUrl()
        );

    }

    /**
     * @test
     */
    public function setXingUrlForStringSetsXingUrl()
    {
        $this->subject->setXingUrl('Conceived at T3CON10');

        self::assertAttributeEquals(
            'Conceived at T3CON10',
            'xingUrl',
            $this->subject
        );

    }

    /**
     * @test
     */
    public function getImageReturnsInitialValueForFileReference()
    {
        self::assertEquals(
            null,
            $this->subject->getImage()
        );

    }

    /**
     * @test
     */
    public function setImageForFileReferenceSetsImage()
    {
        $fileReferenceFixture = new \TYPO3\CMS\Extbase\Domain\Model\FileReference();
        $this->subject->setImage($fileReferenceFixture);

        self::assertAttributeEquals(
            $fileReferenceFixture,
            'image',
            $this->subject
        );

    }
}
