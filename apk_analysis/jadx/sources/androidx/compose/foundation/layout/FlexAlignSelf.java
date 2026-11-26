package androidx.compose.foundation.layout;

import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class FlexAlignSelf {
    public static final Companion Companion = new Companion(null);
    private final int bits;

    private /* synthetic */ FlexAlignSelf(int i) {
        this.bits = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ FlexAlignSelf m1803boximpl(int i) {
        return new FlexAlignSelf(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m1804constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1805equalsimpl(int i, Object obj) {
        return (obj instanceof FlexAlignSelf) && i == ((FlexAlignSelf) obj).m1809unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1806equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1807hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1808toStringimpl(int i) {
        if (i == 0) {
            return "Auto";
        }
        if (i == 1) {
            return "Start";
        }
        if (i == 2) {
            return "End";
        }
        if (i == 3) {
            return "Center";
        }
        if (i != 4) {
            return i != 5 ? "INVALID" : "Baseline";
        }
        return "Stretch";
    }

    public boolean equals(Object obj) {
        return m1805equalsimpl(this.bits, obj);
    }

    public int hashCode() {
        return m1807hashCodeimpl(this.bits);
    }

    public String toString() {
        return m1808toStringimpl(this.bits);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m1809unboximpl() {
        return this.bits;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getAuto-_ov7Qcc, reason: not valid java name */
        public final int m1810getAuto_ov7Qcc() {
            return FlexAlignSelf.m1804constructorimpl(0);
        }

        /* JADX INFO: renamed from: getBaseline-_ov7Qcc, reason: not valid java name */
        public final int m1811getBaseline_ov7Qcc() {
            return FlexAlignSelf.m1804constructorimpl(5);
        }

        /* JADX INFO: renamed from: getCenter-_ov7Qcc, reason: not valid java name */
        public final int m1812getCenter_ov7Qcc() {
            return FlexAlignSelf.m1804constructorimpl(3);
        }

        /* JADX INFO: renamed from: getEnd-_ov7Qcc, reason: not valid java name */
        public final int m1813getEnd_ov7Qcc() {
            return FlexAlignSelf.m1804constructorimpl(2);
        }

        /* JADX INFO: renamed from: getStart-_ov7Qcc, reason: not valid java name */
        public final int m1814getStart_ov7Qcc() {
            return FlexAlignSelf.m1804constructorimpl(1);
        }

        /* JADX INFO: renamed from: getStretch-_ov7Qcc, reason: not valid java name */
        public final int m1815getStretch_ov7Qcc() {
            return FlexAlignSelf.m1804constructorimpl(4);
        }

        private Companion() {
        }
    }
}
