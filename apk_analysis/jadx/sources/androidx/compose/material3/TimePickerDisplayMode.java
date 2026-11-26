package androidx.compose.material3;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class TimePickerDisplayMode {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Picker = m4117constructorimpl(0);
    private static final int Input = m4117constructorimpl(1);

    private /* synthetic */ TimePickerDisplayMode(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TimePickerDisplayMode m4116boximpl(int i) {
        return new TimePickerDisplayMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m4117constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m4118equalsimpl(int i, Object obj) {
        return (obj instanceof TimePickerDisplayMode) && i == ((TimePickerDisplayMode) obj).m4122unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m4119equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m4120hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m4121toStringimpl(int i) {
        if (m4119equalsimpl0(i, Picker)) {
            return "Picker";
        }
        return m4119equalsimpl0(i, Input) ? "Input" : "Unknown";
    }

    public boolean equals(Object obj) {
        return m4118equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m4120hashCodeimpl(this.value);
    }

    public String toString() {
        return m4121toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m4122unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getInput--ONbchU, reason: not valid java name */
        public final int m4123getInputONbchU() {
            return TimePickerDisplayMode.Input;
        }

        /* JADX INFO: renamed from: getPicker--ONbchU, reason: not valid java name */
        public final int m4124getPickerONbchU() {
            return TimePickerDisplayMode.Picker;
        }

        private Companion() {
        }
    }
}
