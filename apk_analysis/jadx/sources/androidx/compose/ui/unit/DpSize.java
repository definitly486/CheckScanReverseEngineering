package androidx.compose.ui.unit;

import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class DpSize {
    private final long packedValue;
    public static final Companion Companion = new Companion(null);
    private static final long Zero = m9131constructorimpl(0);
    private static final long Unspecified = m9131constructorimpl(androidx.compose.ui.geometry.InlineClassHelperKt.UnspecifiedPackedFloats);

    private /* synthetic */ DpSize(long j) {
        this.packedValue = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ DpSize m9128boximpl(long j) {
        return new DpSize(j);
    }

    /* JADX INFO: renamed from: component1-D9Ej5fM, reason: not valid java name */
    public static final float m9129component1D9Ej5fM(long j) {
        return m9140getWidthD9Ej5fM(j);
    }

    /* JADX INFO: renamed from: component2-D9Ej5fM, reason: not valid java name */
    public static final float m9130component2D9Ej5fM(long j) {
        return m9138getHeightD9Ej5fM(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m9131constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: copy-DwJknco, reason: not valid java name */
    public static final long m9132copyDwJknco(long j, float f, float f2) {
        return m9131constructorimpl((((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: copy-DwJknco$default, reason: not valid java name */
    public static /* synthetic */ long m9133copyDwJknco$default(long j, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = m9140getWidthD9Ej5fM(j);
        }
        if ((i & 2) != 0) {
            f2 = m9138getHeightD9Ej5fM(j);
        }
        return m9132copyDwJknco(j, f, f2);
    }

    /* JADX INFO: renamed from: div-Gh9hcWk, reason: not valid java name */
    public static final long m9135divGh9hcWk(long j, int i) {
        float f = i;
        return m9131constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(m9140getWidthD9Ej5fM(j) / f))) << 32) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(m9138getHeightD9Ej5fM(j) / f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m9136equalsimpl(long j, Object obj) {
        return (obj instanceof DpSize) && j == ((DpSize) obj).m9148unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m9137equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: getHeight-D9Ej5fM, reason: not valid java name */
    public static final float m9138getHeightD9Ej5fM(long j) {
        return Dp.m9042constructorimpl(Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
    }

    /* JADX INFO: renamed from: getHeight-D9Ej5fM$annotations, reason: not valid java name */
    public static /* synthetic */ void m9139getHeightD9Ej5fM$annotations() {
    }

    public static /* synthetic */ void getPackedValue$annotations() {
    }

    /* JADX INFO: renamed from: getWidth-D9Ej5fM, reason: not valid java name */
    public static final float m9140getWidthD9Ej5fM(long j) {
        return Dp.m9042constructorimpl(Float.intBitsToFloat((int) (j >> 32)));
    }

    /* JADX INFO: renamed from: getWidth-D9Ej5fM$annotations, reason: not valid java name */
    public static /* synthetic */ void m9141getWidthD9Ej5fM$annotations() {
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m9142hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: minus-e_xh8Ic, reason: not valid java name */
    public static final long m9143minuse_xh8Ic(long j, long j2) {
        float fM9042constructorimpl = Dp.m9042constructorimpl(m9140getWidthD9Ej5fM(j) - m9140getWidthD9Ej5fM(j2));
        float fM9042constructorimpl2 = Dp.m9042constructorimpl(m9138getHeightD9Ej5fM(j) - m9138getHeightD9Ej5fM(j2));
        return m9131constructorimpl((((long) Float.floatToRawIntBits(fM9042constructorimpl)) << 32) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(fM9042constructorimpl2))));
    }

    /* JADX INFO: renamed from: plus-e_xh8Ic, reason: not valid java name */
    public static final long m9144pluse_xh8Ic(long j, long j2) {
        float fM9042constructorimpl = Dp.m9042constructorimpl(m9140getWidthD9Ej5fM(j2) + m9140getWidthD9Ej5fM(j));
        float fM9042constructorimpl2 = Dp.m9042constructorimpl(m9138getHeightD9Ej5fM(j2) + m9138getHeightD9Ej5fM(j));
        return m9131constructorimpl((((long) Float.floatToRawIntBits(fM9042constructorimpl)) << 32) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(fM9042constructorimpl2))));
    }

    /* JADX INFO: renamed from: times-Gh9hcWk, reason: not valid java name */
    public static final long m9146timesGh9hcWk(long j, int i) {
        float f = i;
        return m9131constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(m9140getWidthD9Ej5fM(j) * f))) << 32) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(m9138getHeightD9Ej5fM(j) * f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m9147toStringimpl(long j) {
        if (j == androidx.compose.ui.geometry.InlineClassHelperKt.UnspecifiedPackedFloats) {
            return "DpSize.Unspecified";
        }
        return ((Object) Dp.m9053toStringimpl(m9140getWidthD9Ej5fM(j))) + " x " + ((Object) Dp.m9053toStringimpl(m9138getHeightD9Ej5fM(j)));
    }

    public boolean equals(Object obj) {
        return m9136equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m9142hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m9147toStringimpl(this.packedValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m9148unboximpl() {
        return this.packedValue;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getUnspecified-MYxV2XQ, reason: not valid java name */
        public final long m9149getUnspecifiedMYxV2XQ() {
            return DpSize.Unspecified;
        }

        /* JADX INFO: renamed from: getZero-MYxV2XQ, reason: not valid java name */
        public final long m9150getZeroMYxV2XQ() {
            return DpSize.Zero;
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: div-Gh9hcWk, reason: not valid java name */
    public static final long m9134divGh9hcWk(long j, float f) {
        float fM9042constructorimpl = Dp.m9042constructorimpl(m9140getWidthD9Ej5fM(j) / f);
        float fM9042constructorimpl2 = Dp.m9042constructorimpl(m9138getHeightD9Ej5fM(j) / f);
        return m9131constructorimpl((((long) Float.floatToRawIntBits(fM9042constructorimpl)) << 32) | (((long) Float.floatToRawIntBits(fM9042constructorimpl2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: times-Gh9hcWk, reason: not valid java name */
    public static final long m9145timesGh9hcWk(long j, float f) {
        float fM9042constructorimpl = Dp.m9042constructorimpl(m9140getWidthD9Ej5fM(j) * f);
        float fM9042constructorimpl2 = Dp.m9042constructorimpl(m9138getHeightD9Ej5fM(j) * f);
        return m9131constructorimpl((((long) Float.floatToRawIntBits(fM9042constructorimpl)) << 32) | (((long) Float.floatToRawIntBits(fM9042constructorimpl2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }
}
