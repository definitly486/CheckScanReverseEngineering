package androidx.compose.ui.unit;

import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class DpOffset {
    private final long packedValue;
    public static final Companion Companion = new Companion(null);
    private static final long Zero = m9098constructorimpl(0);
    private static final long Unspecified = m9098constructorimpl(androidx.compose.ui.geometry.InlineClassHelperKt.UnspecifiedPackedFloats);

    private /* synthetic */ DpOffset(long j) {
        this.packedValue = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ DpOffset m9097boximpl(long j) {
        return new DpOffset(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m9098constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: copy-tPigGR8, reason: not valid java name */
    public static final long m9099copytPigGR8(long j, float f, float f2) {
        return m9098constructorimpl((((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: copy-tPigGR8$default, reason: not valid java name */
    public static /* synthetic */ long m9100copytPigGR8$default(long j, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = m9103getXD9Ej5fM(j);
        }
        if ((i & 2) != 0) {
            f2 = m9105getYD9Ej5fM(j);
        }
        return m9099copytPigGR8(j, f, f2);
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m9101equalsimpl(long j, Object obj) {
        return (obj instanceof DpOffset) && j == ((DpOffset) obj).m9111unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m9102equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: getX-D9Ej5fM, reason: not valid java name */
    public static final float m9103getXD9Ej5fM(long j) {
        return Dp.m9042constructorimpl(Float.intBitsToFloat((int) (j >> 32)));
    }

    /* JADX INFO: renamed from: getX-D9Ej5fM$annotations, reason: not valid java name */
    public static /* synthetic */ void m9104getXD9Ej5fM$annotations() {
    }

    /* JADX INFO: renamed from: getY-D9Ej5fM, reason: not valid java name */
    public static final float m9105getYD9Ej5fM(long j) {
        return Dp.m9042constructorimpl(Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
    }

    /* JADX INFO: renamed from: getY-D9Ej5fM$annotations, reason: not valid java name */
    public static /* synthetic */ void m9106getYD9Ej5fM$annotations() {
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m9107hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: minus-CB-Mgk4, reason: not valid java name */
    public static final long m9108minusCBMgk4(long j, long j2) {
        float fM9042constructorimpl = Dp.m9042constructorimpl(m9103getXD9Ej5fM(j) - m9103getXD9Ej5fM(j2));
        float fM9042constructorimpl2 = Dp.m9042constructorimpl(m9105getYD9Ej5fM(j) - m9105getYD9Ej5fM(j2));
        return m9098constructorimpl((((long) Float.floatToRawIntBits(fM9042constructorimpl)) << 32) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(fM9042constructorimpl2))));
    }

    /* JADX INFO: renamed from: plus-CB-Mgk4, reason: not valid java name */
    public static final long m9109plusCBMgk4(long j, long j2) {
        float fM9042constructorimpl = Dp.m9042constructorimpl(m9103getXD9Ej5fM(j2) + m9103getXD9Ej5fM(j));
        float fM9042constructorimpl2 = Dp.m9042constructorimpl(m9105getYD9Ej5fM(j2) + m9105getYD9Ej5fM(j));
        return m9098constructorimpl((((long) Float.floatToRawIntBits(fM9042constructorimpl)) << 32) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(fM9042constructorimpl2))));
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m9110toStringimpl(long j) {
        if (j == androidx.compose.ui.geometry.InlineClassHelperKt.UnspecifiedPackedFloats) {
            return "DpOffset.Unspecified";
        }
        return "(" + ((Object) Dp.m9053toStringimpl(m9103getXD9Ej5fM(j))) + ", " + ((Object) Dp.m9053toStringimpl(m9105getYD9Ej5fM(j))) + ')';
    }

    public boolean equals(Object obj) {
        return m9101equalsimpl(this.packedValue, obj);
    }

    public final long getPackedValue() {
        return this.packedValue;
    }

    public int hashCode() {
        return m9107hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m9110toStringimpl(this.packedValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m9111unboximpl() {
        return this.packedValue;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getUnspecified-RKDOV3M, reason: not valid java name */
        public final long m9112getUnspecifiedRKDOV3M() {
            return DpOffset.Unspecified;
        }

        /* JADX INFO: renamed from: getZero-RKDOV3M, reason: not valid java name */
        public final long m9113getZeroRKDOV3M() {
            return DpOffset.Zero;
        }

        private Companion() {
        }
    }
}
