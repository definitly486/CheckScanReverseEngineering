package androidx.compose.foundation.layout;

import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class FlexWrap {
    public static final Companion Companion = new Companion(null);
    private final int bits;

    private /* synthetic */ FlexWrap(int i) {
        this.bits = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ FlexWrap m1876boximpl(int i) {
        return new FlexWrap(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m1877constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1878equalsimpl(int i, Object obj) {
        return (obj instanceof FlexWrap) && i == ((FlexWrap) obj).m1882unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1879equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1880hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1881toStringimpl(int i) {
        if (i == 0) {
            return "NoWrap";
        }
        if (i != 1) {
            return i != 2 ? "INVALID" : "WrapReverse";
        }
        return "Wrap";
    }

    public boolean equals(Object obj) {
        return m1878equalsimpl(this.bits, obj);
    }

    public int hashCode() {
        return m1880hashCodeimpl(this.bits);
    }

    public String toString() {
        return m1881toStringimpl(this.bits);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m1882unboximpl() {
        return this.bits;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getNoWrap-7ziDAWk, reason: not valid java name */
        public final int m1883getNoWrap7ziDAWk() {
            return FlexWrap.m1877constructorimpl(0);
        }

        /* JADX INFO: renamed from: getWrap-7ziDAWk, reason: not valid java name */
        public final int m1884getWrap7ziDAWk() {
            return FlexWrap.m1877constructorimpl(1);
        }

        /* JADX INFO: renamed from: getWrapReverse-7ziDAWk, reason: not valid java name */
        public final int m1885getWrapReverse7ziDAWk() {
            return FlexWrap.m1877constructorimpl(2);
        }

        private Companion() {
        }
    }
}
