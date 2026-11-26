package androidx.compose.material3;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class TimePickerSelectionMode {
    public static final Companion Companion = new Companion(null);
    private static final int Hour = m4149constructorimpl(0);
    private static final int Minute = m4149constructorimpl(1);
    private final int value;

    private /* synthetic */ TimePickerSelectionMode(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TimePickerSelectionMode m4148boximpl(int i) {
        return new TimePickerSelectionMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m4149constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m4150equalsimpl(int i, Object obj) {
        return (obj instanceof TimePickerSelectionMode) && i == ((TimePickerSelectionMode) obj).m4154unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m4151equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m4152hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m4153toStringimpl(int i) {
        if (m4151equalsimpl0(i, Hour)) {
            return "Hour";
        }
        return m4151equalsimpl0(i, Minute) ? "Minute" : "";
    }

    public boolean equals(Object obj) {
        return m4150equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m4152hashCodeimpl(this.value);
    }

    public String toString() {
        return m4153toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m4154unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getHour-yecRtBI, reason: not valid java name */
        public final int m4155getHouryecRtBI() {
            return TimePickerSelectionMode.Hour;
        }

        /* JADX INFO: renamed from: getMinute-yecRtBI, reason: not valid java name */
        public final int m4156getMinuteyecRtBI() {
            return TimePickerSelectionMode.Minute;
        }

        private Companion() {
        }
    }
}
