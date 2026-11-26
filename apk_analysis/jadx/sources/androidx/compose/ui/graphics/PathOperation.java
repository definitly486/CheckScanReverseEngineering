package androidx.compose.ui.graphics;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class PathOperation {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Difference = m6532constructorimpl(0);
    private static final int Intersect = m6532constructorimpl(1);
    private static final int Union = m6532constructorimpl(2);
    private static final int Xor = m6532constructorimpl(3);
    private static final int ReverseDifference = m6532constructorimpl(4);

    private /* synthetic */ PathOperation(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ PathOperation m6531boximpl(int i) {
        return new PathOperation(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m6532constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m6533equalsimpl(int i, Object obj) {
        return (obj instanceof PathOperation) && i == ((PathOperation) obj).m6537unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m6534equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m6535hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m6536toStringimpl(int i) {
        if (m6534equalsimpl0(i, Difference)) {
            return "Difference";
        }
        if (m6534equalsimpl0(i, Intersect)) {
            return "Intersect";
        }
        if (m6534equalsimpl0(i, Union)) {
            return "Union";
        }
        if (m6534equalsimpl0(i, Xor)) {
            return "Xor";
        }
        return m6534equalsimpl0(i, ReverseDifference) ? "ReverseDifference" : "Unknown";
    }

    public boolean equals(Object obj) {
        return m6533equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m6535hashCodeimpl(this.value);
    }

    public String toString() {
        return m6536toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m6537unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getDifference-b3I0S0c, reason: not valid java name */
        public final int m6538getDifferenceb3I0S0c() {
            return PathOperation.Difference;
        }

        /* JADX INFO: renamed from: getIntersect-b3I0S0c, reason: not valid java name */
        public final int m6539getIntersectb3I0S0c() {
            return PathOperation.Intersect;
        }

        /* JADX INFO: renamed from: getReverseDifference-b3I0S0c, reason: not valid java name */
        public final int m6540getReverseDifferenceb3I0S0c() {
            return PathOperation.ReverseDifference;
        }

        /* JADX INFO: renamed from: getUnion-b3I0S0c, reason: not valid java name */
        public final int m6541getUnionb3I0S0c() {
            return PathOperation.Union;
        }

        /* JADX INFO: renamed from: getXor-b3I0S0c, reason: not valid java name */
        public final int m6542getXorb3I0S0c() {
            return PathOperation.Xor;
        }

        private Companion() {
        }
    }
}
