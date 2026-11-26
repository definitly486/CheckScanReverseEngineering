package androidx.compose.material3;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class InputIdentifier {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int SingleDateInput = m3557constructorimpl(0);
    private static final int StartDateInput = m3557constructorimpl(1);
    private static final int EndDateInput = m3557constructorimpl(2);

    private /* synthetic */ InputIdentifier(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ InputIdentifier m3556boximpl(int i) {
        return new InputIdentifier(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m3557constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m3558equalsimpl(int i, Object obj) {
        return (obj instanceof InputIdentifier) && i == ((InputIdentifier) obj).m3562unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m3559equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m3560hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m3561toStringimpl(int i) {
        if (m3559equalsimpl0(i, SingleDateInput)) {
            return "SingleDateInput";
        }
        if (m3559equalsimpl0(i, StartDateInput)) {
            return "StartDateInput";
        }
        return m3559equalsimpl0(i, EndDateInput) ? "EndDateInput" : "Unknown";
    }

    public boolean equals(Object obj) {
        return m3558equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m3560hashCodeimpl(this.value);
    }

    public String toString() {
        return m3561toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m3562unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getEndDateInput-J2x2o4M, reason: not valid java name */
        public final int m3563getEndDateInputJ2x2o4M() {
            return InputIdentifier.EndDateInput;
        }

        /* JADX INFO: renamed from: getSingleDateInput-J2x2o4M, reason: not valid java name */
        public final int m3564getSingleDateInputJ2x2o4M() {
            return InputIdentifier.SingleDateInput;
        }

        /* JADX INFO: renamed from: getStartDateInput-J2x2o4M, reason: not valid java name */
        public final int m3565getStartDateInputJ2x2o4M() {
            return InputIdentifier.StartDateInput;
        }

        private Companion() {
        }
    }
}
