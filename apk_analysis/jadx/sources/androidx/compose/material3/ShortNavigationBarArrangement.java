package androidx.compose.material3;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class ShortNavigationBarArrangement {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int EqualWeight = m3853constructorimpl(0);
    private static final int Centered = m3853constructorimpl(1);

    private /* synthetic */ ShortNavigationBarArrangement(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ShortNavigationBarArrangement m3852boximpl(int i) {
        return new ShortNavigationBarArrangement(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m3853constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m3854equalsimpl(int i, Object obj) {
        return (obj instanceof ShortNavigationBarArrangement) && i == ((ShortNavigationBarArrangement) obj).m3858unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m3855equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m3856hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m3857toStringimpl(int i) {
        if (m3855equalsimpl0(i, EqualWeight)) {
            return "EqualWeight";
        }
        return m3855equalsimpl0(i, Centered) ? "Centered" : "Unknown";
    }

    public boolean equals(Object obj) {
        return m3854equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m3856hashCodeimpl(this.value);
    }

    public String toString() {
        return m3857toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m3858unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getCentered-LnnQw40, reason: not valid java name */
        public final int m3859getCenteredLnnQw40() {
            return ShortNavigationBarArrangement.Centered;
        }

        /* JADX INFO: renamed from: getEqualWeight-LnnQw40, reason: not valid java name */
        public final int m3860getEqualWeightLnnQw40() {
            return ShortNavigationBarArrangement.EqualWeight;
        }

        private Companion() {
        }
    }
}
