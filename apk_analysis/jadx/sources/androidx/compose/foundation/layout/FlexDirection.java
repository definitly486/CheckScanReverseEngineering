package androidx.compose.foundation.layout;

import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class FlexDirection {
    public static final Companion Companion = new Companion(null);
    private final int bits;

    private /* synthetic */ FlexDirection(int i) {
        this.bits = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ FlexDirection m1852boximpl(int i) {
        return new FlexDirection(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m1853constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1854equalsimpl(int i, Object obj) {
        return (obj instanceof FlexDirection) && i == ((FlexDirection) obj).m1858unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1855equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1856hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1857toStringimpl(int i) {
        if (i == 0) {
            return "Row";
        }
        if (i == 1) {
            return "Column";
        }
        if (i != 2) {
            return i != 3 ? "INVALID" : "ColumnReverse";
        }
        return "RowReverse";
    }

    public boolean equals(Object obj) {
        return m1854equalsimpl(this.bits, obj);
    }

    public int hashCode() {
        return m1856hashCodeimpl(this.bits);
    }

    public String toString() {
        return m1857toStringimpl(this.bits);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m1858unboximpl() {
        return this.bits;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getColumn-T4wFHC8, reason: not valid java name */
        public final int m1859getColumnT4wFHC8() {
            return FlexDirection.m1853constructorimpl(1);
        }

        /* JADX INFO: renamed from: getColumnReverse-T4wFHC8, reason: not valid java name */
        public final int m1860getColumnReverseT4wFHC8() {
            return FlexDirection.m1853constructorimpl(3);
        }

        /* JADX INFO: renamed from: getRow-T4wFHC8, reason: not valid java name */
        public final int m1861getRowT4wFHC8() {
            return FlexDirection.m1853constructorimpl(0);
        }

        /* JADX INFO: renamed from: getRowReverse-T4wFHC8, reason: not valid java name */
        public final int m1862getRowReverseT4wFHC8() {
            return FlexDirection.m1853constructorimpl(2);
        }

        private Companion() {
        }
    }
}
