package androidx.compose.foundation.layout;

import defpackage.jh2;
import defpackage.qz0;

/* JADX INFO: loaded from: classes.dex */
public final class GridFlow {
    public static final Companion Companion = new Companion(null);
    private final int bits;

    private /* synthetic */ GridFlow(int i) {
        this.bits = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ GridFlow m1943boximpl(int i) {
        return new GridFlow(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m1944constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1945equalsimpl(int i, Object obj) {
        return (obj instanceof GridFlow) && i == ((GridFlow) obj).m1949unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1946equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1947hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1948toStringimpl(int i) {
        if (m1946equalsimpl0(i, m1944constructorimpl(0))) {
            return "Row";
        }
        return m1946equalsimpl0(i, m1944constructorimpl(1)) ? "Column" : qz0.d("GridFlow(", i, ')');
    }

    public boolean equals(Object obj) {
        return m1945equalsimpl(this.bits, obj);
    }

    public int hashCode() {
        return m1947hashCodeimpl(this.bits);
    }

    public String toString() {
        return m1948toStringimpl(this.bits);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m1949unboximpl() {
        return this.bits;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getColumn-ITJdzs4$annotations, reason: not valid java name */
        public static /* synthetic */ void m1950getColumnITJdzs4$annotations() {
        }

        /* JADX INFO: renamed from: getRow-ITJdzs4$annotations, reason: not valid java name */
        public static /* synthetic */ void m1951getRowITJdzs4$annotations() {
        }

        /* JADX INFO: renamed from: getColumn-ITJdzs4, reason: not valid java name */
        public final int m1952getColumnITJdzs4() {
            return GridFlow.m1944constructorimpl(1);
        }

        /* JADX INFO: renamed from: getRow-ITJdzs4, reason: not valid java name */
        public final int m1953getRowITJdzs4() {
            return GridFlow.m1944constructorimpl(0);
        }

        private Companion() {
        }
    }
}
