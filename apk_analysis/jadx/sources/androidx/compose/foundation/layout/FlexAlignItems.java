package androidx.compose.foundation.layout;

import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class FlexAlignItems {
    public static final Companion Companion = new Companion(null);
    private final int bits;

    private /* synthetic */ FlexAlignItems(int i) {
        this.bits = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ FlexAlignItems m1791boximpl(int i) {
        return new FlexAlignItems(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m1792constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1793equalsimpl(int i, Object obj) {
        return (obj instanceof FlexAlignItems) && i == ((FlexAlignItems) obj).m1797unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1794equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1795hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1796toStringimpl(int i) {
        if (i == 0) {
            return "Start";
        }
        if (i == 1) {
            return "End";
        }
        if (i == 2) {
            return "Center";
        }
        if (i != 3) {
            return i != 4 ? "INVALID" : "Baseline";
        }
        return "Stretch";
    }

    public boolean equals(Object obj) {
        return m1793equalsimpl(this.bits, obj);
    }

    public int hashCode() {
        return m1795hashCodeimpl(this.bits);
    }

    public String toString() {
        return m1796toStringimpl(this.bits);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m1797unboximpl() {
        return this.bits;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getBaseline-20X20zU, reason: not valid java name */
        public final int m1798getBaseline20X20zU() {
            return FlexAlignItems.m1792constructorimpl(4);
        }

        /* JADX INFO: renamed from: getCenter-20X20zU, reason: not valid java name */
        public final int m1799getCenter20X20zU() {
            return FlexAlignItems.m1792constructorimpl(2);
        }

        /* JADX INFO: renamed from: getEnd-20X20zU, reason: not valid java name */
        public final int m1800getEnd20X20zU() {
            return FlexAlignItems.m1792constructorimpl(1);
        }

        /* JADX INFO: renamed from: getStart-20X20zU, reason: not valid java name */
        public final int m1801getStart20X20zU() {
            return FlexAlignItems.m1792constructorimpl(0);
        }

        /* JADX INFO: renamed from: getStretch-20X20zU, reason: not valid java name */
        public final int m1802getStretch20X20zU() {
            return FlexAlignItems.m1792constructorimpl(3);
        }

        private Companion() {
        }
    }
}
