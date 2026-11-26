package androidx.compose.foundation.layout;

import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class FlexJustifyContent {
    public static final Companion Companion = new Companion(null);
    private final int bits;

    private /* synthetic */ FlexJustifyContent(int i) {
        this.bits = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ FlexJustifyContent m1863boximpl(int i) {
        return new FlexJustifyContent(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m1864constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1865equalsimpl(int i, Object obj) {
        return (obj instanceof FlexJustifyContent) && i == ((FlexJustifyContent) obj).m1869unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1866equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1867hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1868toStringimpl(int i) {
        if (i == 0) {
            return "Start";
        }
        if (i == 1) {
            return "End";
        }
        if (i == 2) {
            return "Center";
        }
        if (i == 3) {
            return "SpaceBetween";
        }
        if (i != 4) {
            return i != 5 ? "INVALID" : "SpaceEvenly";
        }
        return "SpaceAround";
    }

    public boolean equals(Object obj) {
        return m1865equalsimpl(this.bits, obj);
    }

    public int hashCode() {
        return m1867hashCodeimpl(this.bits);
    }

    public String toString() {
        return m1868toStringimpl(this.bits);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m1869unboximpl() {
        return this.bits;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getCenter-GomtQF4, reason: not valid java name */
        public final int m1870getCenterGomtQF4() {
            return FlexJustifyContent.m1864constructorimpl(2);
        }

        /* JADX INFO: renamed from: getEnd-GomtQF4, reason: not valid java name */
        public final int m1871getEndGomtQF4() {
            return FlexJustifyContent.m1864constructorimpl(1);
        }

        /* JADX INFO: renamed from: getSpaceAround-GomtQF4, reason: not valid java name */
        public final int m1872getSpaceAroundGomtQF4() {
            return FlexJustifyContent.m1864constructorimpl(4);
        }

        /* JADX INFO: renamed from: getSpaceBetween-GomtQF4, reason: not valid java name */
        public final int m1873getSpaceBetweenGomtQF4() {
            return FlexJustifyContent.m1864constructorimpl(3);
        }

        /* JADX INFO: renamed from: getSpaceEvenly-GomtQF4, reason: not valid java name */
        public final int m1874getSpaceEvenlyGomtQF4() {
            return FlexJustifyContent.m1864constructorimpl(5);
        }

        /* JADX INFO: renamed from: getStart-GomtQF4, reason: not valid java name */
        public final int m1875getStartGomtQF4() {
            return FlexJustifyContent.m1864constructorimpl(0);
        }

        private Companion() {
        }
    }
}
