package androidx.compose.ui.text.input;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class KeyboardType {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Unspecified = m8710constructorimpl(0);
    private static final int Text = m8710constructorimpl(1);
    private static final int Ascii = m8710constructorimpl(2);
    private static final int Number = m8710constructorimpl(3);
    private static final int Phone = m8710constructorimpl(4);
    private static final int Uri = m8710constructorimpl(5);
    private static final int Email = m8710constructorimpl(6);
    private static final int Password = m8710constructorimpl(7);
    private static final int NumberPassword = m8710constructorimpl(8);
    private static final int Decimal = m8710constructorimpl(9);

    private /* synthetic */ KeyboardType(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ KeyboardType m8709boximpl(int i) {
        return new KeyboardType(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m8710constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m8711equalsimpl(int i, Object obj) {
        return (obj instanceof KeyboardType) && i == ((KeyboardType) obj).m8715unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m8712equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m8713hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m8714toStringimpl(int i) {
        if (m8712equalsimpl0(i, Unspecified)) {
            return "Unspecified";
        }
        if (m8712equalsimpl0(i, Text)) {
            return "Text";
        }
        if (m8712equalsimpl0(i, Ascii)) {
            return "Ascii";
        }
        if (m8712equalsimpl0(i, Number)) {
            return "Number";
        }
        if (m8712equalsimpl0(i, Phone)) {
            return "Phone";
        }
        if (m8712equalsimpl0(i, Uri)) {
            return "Uri";
        }
        if (m8712equalsimpl0(i, Email)) {
            return "Email";
        }
        if (m8712equalsimpl0(i, Password)) {
            return "Password";
        }
        if (m8712equalsimpl0(i, NumberPassword)) {
            return "NumberPassword";
        }
        return m8712equalsimpl0(i, Decimal) ? "Decimal" : "Invalid";
    }

    public boolean equals(Object obj) {
        return m8711equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m8713hashCodeimpl(this.value);
    }

    public String toString() {
        return m8714toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m8715unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getAscii-PjHm6EE$annotations, reason: not valid java name */
        public static /* synthetic */ void m8716getAsciiPjHm6EE$annotations() {
        }

        /* JADX INFO: renamed from: getDecimal-PjHm6EE$annotations, reason: not valid java name */
        public static /* synthetic */ void m8717getDecimalPjHm6EE$annotations() {
        }

        /* JADX INFO: renamed from: getEmail-PjHm6EE$annotations, reason: not valid java name */
        public static /* synthetic */ void m8718getEmailPjHm6EE$annotations() {
        }

        /* JADX INFO: renamed from: getNumber-PjHm6EE$annotations, reason: not valid java name */
        public static /* synthetic */ void m8719getNumberPjHm6EE$annotations() {
        }

        /* JADX INFO: renamed from: getNumberPassword-PjHm6EE$annotations, reason: not valid java name */
        public static /* synthetic */ void m8720getNumberPasswordPjHm6EE$annotations() {
        }

        /* JADX INFO: renamed from: getPassword-PjHm6EE$annotations, reason: not valid java name */
        public static /* synthetic */ void m8721getPasswordPjHm6EE$annotations() {
        }

        /* JADX INFO: renamed from: getPhone-PjHm6EE$annotations, reason: not valid java name */
        public static /* synthetic */ void m8722getPhonePjHm6EE$annotations() {
        }

        /* JADX INFO: renamed from: getText-PjHm6EE$annotations, reason: not valid java name */
        public static /* synthetic */ void m8723getTextPjHm6EE$annotations() {
        }

        /* JADX INFO: renamed from: getUnspecified-PjHm6EE$annotations, reason: not valid java name */
        public static /* synthetic */ void m8724getUnspecifiedPjHm6EE$annotations() {
        }

        /* JADX INFO: renamed from: getUri-PjHm6EE$annotations, reason: not valid java name */
        public static /* synthetic */ void m8725getUriPjHm6EE$annotations() {
        }

        /* JADX INFO: renamed from: getAscii-PjHm6EE, reason: not valid java name */
        public final int m8726getAsciiPjHm6EE() {
            return KeyboardType.Ascii;
        }

        /* JADX INFO: renamed from: getDecimal-PjHm6EE, reason: not valid java name */
        public final int m8727getDecimalPjHm6EE() {
            return KeyboardType.Decimal;
        }

        /* JADX INFO: renamed from: getEmail-PjHm6EE, reason: not valid java name */
        public final int m8728getEmailPjHm6EE() {
            return KeyboardType.Email;
        }

        /* JADX INFO: renamed from: getNumber-PjHm6EE, reason: not valid java name */
        public final int m8729getNumberPjHm6EE() {
            return KeyboardType.Number;
        }

        /* JADX INFO: renamed from: getNumberPassword-PjHm6EE, reason: not valid java name */
        public final int m8730getNumberPasswordPjHm6EE() {
            return KeyboardType.NumberPassword;
        }

        /* JADX INFO: renamed from: getPassword-PjHm6EE, reason: not valid java name */
        public final int m8731getPasswordPjHm6EE() {
            return KeyboardType.Password;
        }

        /* JADX INFO: renamed from: getPhone-PjHm6EE, reason: not valid java name */
        public final int m8732getPhonePjHm6EE() {
            return KeyboardType.Phone;
        }

        /* JADX INFO: renamed from: getText-PjHm6EE, reason: not valid java name */
        public final int m8733getTextPjHm6EE() {
            return KeyboardType.Text;
        }

        /* JADX INFO: renamed from: getUnspecified-PjHm6EE, reason: not valid java name */
        public final int m8734getUnspecifiedPjHm6EE() {
            return KeyboardType.Unspecified;
        }

        /* JADX INFO: renamed from: getUri-PjHm6EE, reason: not valid java name */
        public final int m8735getUriPjHm6EE() {
            return KeyboardType.Uri;
        }

        private Companion() {
        }
    }
}
