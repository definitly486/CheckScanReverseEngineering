package androidx.compose.material3;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class TimePickerLayoutType {
    public static final Companion Companion = new Companion(null);
    private static final int Horizontal = m4140constructorimpl(0);
    private static final int Vertical = m4140constructorimpl(1);
    private final int value;

    private /* synthetic */ TimePickerLayoutType(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TimePickerLayoutType m4139boximpl(int i) {
        return new TimePickerLayoutType(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m4140constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m4141equalsimpl(int i, Object obj) {
        return (obj instanceof TimePickerLayoutType) && i == ((TimePickerLayoutType) obj).m4145unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m4142equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m4143hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m4144toStringimpl(int i) {
        if (m4142equalsimpl0(i, Horizontal)) {
            return "Horizontal";
        }
        return m4142equalsimpl0(i, Vertical) ? "Vertical" : "Unknown";
    }

    public boolean equals(Object obj) {
        return m4141equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m4143hashCodeimpl(this.value);
    }

    public String toString() {
        return m4144toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m4145unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getHorizontal-QJTpgSE, reason: not valid java name */
        public final int m4146getHorizontalQJTpgSE() {
            return TimePickerLayoutType.Horizontal;
        }

        /* JADX INFO: renamed from: getVertical-QJTpgSE, reason: not valid java name */
        public final int m4147getVerticalQJTpgSE() {
            return TimePickerLayoutType.Vertical;
        }

        private Companion() {
        }
    }
}
