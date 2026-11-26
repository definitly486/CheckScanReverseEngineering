package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.unit.Density;
import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class InlineDensity {
    public static final Companion Companion = new Companion(null);
    private static final long Unspecified = m2894constructorimpl(Float.NaN, Float.NaN);
    private final long packedValue;

    private /* synthetic */ InlineDensity(long j) {
        this.packedValue = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ InlineDensity m2893boximpl(long j) {
        return new InlineDensity(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m2894constructorimpl(float f, float f2) {
        return m2895constructorimpl((((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(f) << 32));
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m2897equalsimpl(long j, Object obj) {
        return (obj instanceof InlineDensity) && j == ((InlineDensity) obj).m2903unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2898equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: getDensity-impl, reason: not valid java name */
    public static final float m2899getDensityimpl(long j) {
        return Float.intBitsToFloat((int) (j >> 32));
    }

    /* JADX INFO: renamed from: getFontScale-impl, reason: not valid java name */
    public static final float m2900getFontScaleimpl(long j) {
        return Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m2901hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m2902toStringimpl(long j) {
        return "InlineDensity(density=" + m2899getDensityimpl(j) + ", fontScale=" + m2900getFontScaleimpl(j) + ')';
    }

    public boolean equals(Object obj) {
        return m2897equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m2901hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m2902toStringimpl(this.packedValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m2903unboximpl() {
        return this.packedValue;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getUnspecified-L26CHvs, reason: not valid java name */
        public final long m2904getUnspecifiedL26CHvs() {
            return InlineDensity.Unspecified;
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m2896constructorimpl(Density density) {
        return m2894constructorimpl(density.getDensity(), density.getFontScale());
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static long m2895constructorimpl(long j) {
        return j;
    }
}
