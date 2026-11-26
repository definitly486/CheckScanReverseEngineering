package androidx.compose.material3;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class DisplayMode {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Picker = m3402constructorimpl(0);
    private static final int Input = m3402constructorimpl(1);

    private /* synthetic */ DisplayMode(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ DisplayMode m3401boximpl(int i) {
        return new DisplayMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m3402constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m3403equalsimpl(int i, Object obj) {
        return (obj instanceof DisplayMode) && i == ((DisplayMode) obj).m3407unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m3404equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m3405hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m3406toStringimpl(int i) {
        if (m3404equalsimpl0(i, Picker)) {
            return "Picker";
        }
        return m3404equalsimpl0(i, Input) ? "Input" : "Unknown";
    }

    public boolean equals(Object obj) {
        return m3403equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m3405hashCodeimpl(this.value);
    }

    public String toString() {
        return m3406toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m3407unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getInput-jFl-4v0, reason: not valid java name */
        public final int m3408getInputjFl4v0() {
            return DisplayMode.Input;
        }

        /* JADX INFO: renamed from: getPicker-jFl-4v0, reason: not valid java name */
        public final int m3409getPickerjFl4v0() {
            return DisplayMode.Picker;
        }

        private Companion() {
        }
    }
}
