package androidx.compose.ui.unit;

import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class IntSize {
    public static final Companion Companion = new Companion(null);
    private static final long Zero = m9208constructorimpl(0);
    private final long packedValue;

    private /* synthetic */ IntSize(long j) {
        this.packedValue = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ IntSize m9205boximpl(long j) {
        return new IntSize(j);
    }

    /* JADX INFO: renamed from: component1-impl, reason: not valid java name */
    public static final int m9206component1impl(long j) {
        return (int) (j >> 32);
    }

    /* JADX INFO: renamed from: component2-impl, reason: not valid java name */
    public static final int m9207component2impl(long j) {
        return (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m9208constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: div-YEO4UFw, reason: not valid java name */
    public static final long m9209divYEO4UFw(long j, int i) {
        return m9208constructorimpl((((long) (((int) (j >> 32)) / i)) << 32) | (((long) (((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) / i)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m9210equalsimpl(long j, Object obj) {
        return (obj instanceof IntSize) && j == ((IntSize) obj).m9217unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m9211equalsimpl0(long j, long j2) {
        return j == j2;
    }

    public static /* synthetic */ void getHeight$annotations() {
    }

    /* JADX INFO: renamed from: getHeight-impl, reason: not valid java name */
    public static final int m9212getHeightimpl(long j) {
        return (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
    }

    public static /* synthetic */ void getWidth$annotations() {
    }

    /* JADX INFO: renamed from: getWidth-impl, reason: not valid java name */
    public static final int m9213getWidthimpl(long j) {
        return (int) (j >> 32);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m9214hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: times-YEO4UFw, reason: not valid java name */
    public static final long m9215timesYEO4UFw(long j, int i) {
        return m9208constructorimpl((((long) (((int) (j >> 32)) * i)) << 32) | (((long) (((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) * i)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m9216toStringimpl(long j) {
        return ((int) (j >> 32)) + " x " + ((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public boolean equals(Object obj) {
        return m9210equalsimpl(this.packedValue, obj);
    }

    public final long getPackedValue() {
        return this.packedValue;
    }

    public int hashCode() {
        return m9214hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m9216toStringimpl(this.packedValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m9217unboximpl() {
        return this.packedValue;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getZero-YbymL2g, reason: not valid java name */
        public final long m9218getZeroYbymL2g() {
            return IntSize.Zero;
        }

        private Companion() {
        }
    }
}
