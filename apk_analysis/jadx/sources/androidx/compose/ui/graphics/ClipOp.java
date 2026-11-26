package androidx.compose.ui.graphics;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class ClipOp {
    public static final Companion Companion = new Companion(null);
    private static final int Difference = m6214constructorimpl(0);
    private static final int Intersect = m6214constructorimpl(1);
    private final int value;

    private /* synthetic */ ClipOp(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ClipOp m6213boximpl(int i) {
        return new ClipOp(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m6214constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m6215equalsimpl(int i, Object obj) {
        return (obj instanceof ClipOp) && i == ((ClipOp) obj).m6219unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m6216equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m6217hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m6218toStringimpl(int i) {
        if (m6216equalsimpl0(i, Difference)) {
            return "Difference";
        }
        return m6216equalsimpl0(i, Intersect) ? "Intersect" : "Unknown";
    }

    public boolean equals(Object obj) {
        return m6215equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m6217hashCodeimpl(this.value);
    }

    public String toString() {
        return m6218toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m6219unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getDifference-rtfAjoo, reason: not valid java name */
        public final int m6220getDifferencertfAjoo() {
            return ClipOp.Difference;
        }

        /* JADX INFO: renamed from: getIntersect-rtfAjoo, reason: not valid java name */
        public final int m6221getIntersectrtfAjoo() {
            return ClipOp.Intersect;
        }

        private Companion() {
        }
    }
}
