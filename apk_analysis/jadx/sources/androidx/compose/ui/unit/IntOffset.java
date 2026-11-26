package androidx.compose.ui.unit;

import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class IntOffset {
    private final long packedValue;
    public static final Companion Companion = new Companion(null);
    private static final long Zero = m9164constructorimpl(0);
    private static final long Max = m9164constructorimpl(9223372034707292159L);

    private /* synthetic */ IntOffset(long j) {
        this.packedValue = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ IntOffset m9161boximpl(long j) {
        return new IntOffset(j);
    }

    /* JADX INFO: renamed from: component1-impl, reason: not valid java name */
    public static final int m9162component1impl(long j) {
        return m9170getXimpl(j);
    }

    /* JADX INFO: renamed from: component2-impl, reason: not valid java name */
    public static final int m9163component2impl(long j) {
        return m9171getYimpl(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m9164constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: copy-iSbpLlY, reason: not valid java name */
    public static final long m9165copyiSbpLlY(long j, int i, int i2) {
        return m9164constructorimpl((((long) i) << 32) | (((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: copy-iSbpLlY$default, reason: not valid java name */
    public static /* synthetic */ long m9166copyiSbpLlY$default(long j, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = (int) (j >> 32);
        }
        if ((i3 & 2) != 0) {
            i2 = (int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & j);
        }
        return m9165copyiSbpLlY(j, i, i2);
    }

    /* JADX INFO: renamed from: div-Bjo55l4, reason: not valid java name */
    public static final long m9167divBjo55l4(long j, float f) {
        return m9164constructorimpl((((long) Math.round(((int) (j >> 32)) / f)) << 32) | (((long) Math.round(((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) / f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m9168equalsimpl(long j, Object obj) {
        return (obj instanceof IntOffset) && j == ((IntOffset) obj).m9179unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m9169equalsimpl0(long j, long j2) {
        return j == j2;
    }

    public static /* synthetic */ void getX$annotations() {
    }

    /* JADX INFO: renamed from: getX-impl, reason: not valid java name */
    public static final int m9170getXimpl(long j) {
        return (int) (j >> 32);
    }

    public static /* synthetic */ void getY$annotations() {
    }

    /* JADX INFO: renamed from: getY-impl, reason: not valid java name */
    public static final int m9171getYimpl(long j) {
        return (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m9172hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: minus-qkQi6aY, reason: not valid java name */
    public static final long m9173minusqkQi6aY(long j, long j2) {
        return m9164constructorimpl((((long) (((int) (j >> 32)) - ((int) (j2 >> 32)))) << 32) | (((long) (((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) - ((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: plus-qkQi6aY, reason: not valid java name */
    public static final long m9174plusqkQi6aY(long j, long j2) {
        return m9164constructorimpl((((long) (((int) (j >> 32)) + ((int) (j2 >> 32)))) << 32) | (((long) (((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + ((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: rem-Bjo55l4, reason: not valid java name */
    public static final long m9175remBjo55l4(long j, int i) {
        return m9164constructorimpl((((long) (((int) (j >> 32)) % i)) << 32) | (((long) (((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) % i)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: times-Bjo55l4, reason: not valid java name */
    public static final long m9176timesBjo55l4(long j, float f) {
        return m9164constructorimpl((((long) Math.round(((int) (j >> 32)) * f)) << 32) | (((long) Math.round(((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) * f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m9177toStringimpl(long j) {
        return "(" + m9170getXimpl(j) + ", " + m9171getYimpl(j) + ')';
    }

    /* JADX INFO: renamed from: unaryMinus-nOcc-ac, reason: not valid java name */
    public static final long m9178unaryMinusnOccac(long j) {
        int i = -((int) (j >> 32));
        return m9164constructorimpl((((long) (-((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i) << 32));
    }

    public boolean equals(Object obj) {
        return m9168equalsimpl(this.packedValue, obj);
    }

    public final long getPackedValue() {
        return this.packedValue;
    }

    public int hashCode() {
        return m9172hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m9177toStringimpl(this.packedValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m9179unboximpl() {
        return this.packedValue;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getMax-nOcc-ac, reason: not valid java name */
        public final long m9180getMaxnOccac() {
            return IntOffset.Max;
        }

        /* JADX INFO: renamed from: getZero-nOcc-ac, reason: not valid java name */
        public final long m9181getZeronOccac() {
            return IntOffset.Zero;
        }

        private Companion() {
        }
    }
}
