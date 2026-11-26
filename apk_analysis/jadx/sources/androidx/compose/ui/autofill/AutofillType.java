package androidx.compose.ui.autofill;

import defpackage.g03;
import defpackage.h03;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
@ul2
public enum AutofillType {
    EmailAddress,
    Username,
    Password,
    NewUsername,
    NewPassword,
    PostalAddress,
    PostalCode,
    CreditCardNumber,
    CreditCardSecurityCode,
    CreditCardExpirationDate,
    CreditCardExpirationMonth,
    CreditCardExpirationYear,
    CreditCardExpirationDay,
    AddressCountry,
    AddressRegion,
    AddressLocality,
    AddressStreet,
    AddressAuxiliaryDetails,
    PostalCodeExtended,
    PersonFullName,
    PersonFirstName,
    PersonLastName,
    PersonMiddleName,
    PersonMiddleInitial,
    PersonNamePrefix,
    PersonNameSuffix,
    PhoneNumber,
    PhoneNumberDevice,
    PhoneCountryCode,
    PhoneNumberNational,
    Gender,
    BirthDateFull,
    BirthDateDay,
    BirthDateMonth,
    BirthDateYear,
    SmsOtpCode;

    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

    public static g03<AutofillType> getEntries() {
        return $ENTRIES;
    }
}
