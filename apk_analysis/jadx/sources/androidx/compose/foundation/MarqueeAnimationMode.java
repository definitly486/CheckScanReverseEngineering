package androidx.compose.foundation;

import defpackage.jh2;
import defpackage.ud;

/* JADX INFO: loaded from: classes.dex */
public final class MarqueeAnimationMode {
    public static final Companion Companion = new Companion(null);
    private static final int Immediately = m1360constructorimpl(0);
    private static final int WhileFocused = m1360constructorimpl(1);
    private final int value;

    private /* synthetic */ MarqueeAnimationMode(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ MarqueeAnimationMode m1359boximpl(int i) {
        return new MarqueeAnimationMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m1360constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1361equalsimpl(int i, Object obj) {
        return (obj instanceof MarqueeAnimationMode) && i == ((MarqueeAnimationMode) obj).m1365unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1362equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1363hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1364toStringimpl(int i) {
        if (m1362equalsimpl0(i, Immediately)) {
            return "Immediately";
        }
        if (m1362equalsimpl0(i, WhileFocused)) {
            return "WhileFocused";
        }
        ud.e(i, "invalid value: ");
        return null;
    }

    public boolean equals(Object obj) {
        return m1361equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1363hashCodeimpl(this.value);
    }

    public String toString() {
        return m1364toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m1365unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getImmediately-ZbEOnfQ, reason: not valid java name */
        public final int m1366getImmediatelyZbEOnfQ() {
            return MarqueeAnimationMode.Immediately;
        }

        /* JADX INFO: renamed from: getWhileFocused-ZbEOnfQ, reason: not valid java name */
        public final int m1367getWhileFocusedZbEOnfQ() {
            return MarqueeAnimationMode.WhileFocused;
        }

        private Companion() {
        }
    }
}
