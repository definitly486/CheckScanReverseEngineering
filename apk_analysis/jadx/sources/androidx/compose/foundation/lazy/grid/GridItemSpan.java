package androidx.compose.foundation.lazy.grid;

import defpackage.rg;

/* JADX INFO: loaded from: classes.dex */
public final class GridItemSpan {
    private final long packedValue;

    private /* synthetic */ GridItemSpan(long j) {
        this.packedValue = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ GridItemSpan m2171boximpl(long j) {
        return new GridItemSpan(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m2172constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m2173equalsimpl(long j, Object obj) {
        return (obj instanceof GridItemSpan) && j == ((GridItemSpan) obj).m2178unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2174equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: getCurrentLineSpan-impl, reason: not valid java name */
    public static final int m2175getCurrentLineSpanimpl(long j) {
        return (int) j;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m2176hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m2177toStringimpl(long j) {
        return rg.g("GridItemSpan(packedValue=", j, ')');
    }

    public boolean equals(Object obj) {
        return m2173equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m2176hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m2177toStringimpl(this.packedValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m2178unboximpl() {
        return this.packedValue;
    }
}
