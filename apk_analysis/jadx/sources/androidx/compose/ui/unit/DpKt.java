package androidx.compose.ui.unit;

import androidx.compose.ui.util.MathHelpersKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.kx6;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class DpKt {
    /* JADX INFO: renamed from: DpOffset-YgX7TsA, reason: not valid java name */
    public static final long m9063DpOffsetYgX7TsA(float f, float f2) {
        return DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(f) << 32));
    }

    /* JADX INFO: renamed from: DpSize-YgX7TsA, reason: not valid java name */
    public static final long m9064DpSizeYgX7TsA(float f, float f2) {
        return DpSize.m9131constructorimpl((((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(f) << 32));
    }

    /* JADX INFO: renamed from: coerceAtLeast-YgX7TsA, reason: not valid java name */
    public static final float m9065coerceAtLeastYgX7TsA(float f, float f2) {
        if (f < f2) {
            f = f2;
        }
        return Dp.m9042constructorimpl(f);
    }

    /* JADX INFO: renamed from: coerceAtMost-YgX7TsA, reason: not valid java name */
    public static final float m9066coerceAtMostYgX7TsA(float f, float f2) {
        if (f > f2) {
            f = f2;
        }
        return Dp.m9042constructorimpl(f);
    }

    /* JADX INFO: renamed from: coerceIn-2z7ARbQ, reason: not valid java name */
    public static final float m9067coerceIn2z7ARbQ(float f, float f2, float f3) {
        return Dp.m9042constructorimpl(kx6.d(f, f2, f3));
    }

    /* JADX INFO: renamed from: getCenter-EaSLcWc, reason: not valid java name */
    public static final long m9068getCenterEaSLcWc(long j) {
        float fM9042constructorimpl = Dp.m9042constructorimpl(DpSize.m9140getWidthD9Ej5fM(j) / 2.0f);
        return DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(DpSize.m9138getHeightD9Ej5fM(j) / 2.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fM9042constructorimpl) << 32));
    }

    /* JADX INFO: renamed from: getCenter-EaSLcWc$annotations, reason: not valid java name */
    public static /* synthetic */ void m9069getCenterEaSLcWc$annotations(long j) {
    }

    public static final float getDp(int i) {
        return Dp.m9042constructorimpl(i);
    }

    public static /* synthetic */ void getDp$annotations(double d) {
    }

    public static /* synthetic */ void getDp$annotations(float f) {
    }

    public static final float getHeight(DpRect dpRect) {
        return Dp.m9042constructorimpl(dpRect.m9124getBottomD9Ej5fM() - dpRect.m9127getTopD9Ej5fM());
    }

    public static /* synthetic */ void getHeight$annotations(DpRect dpRect) {
    }

    public static final long getSize(DpRect dpRect) {
        return m9064DpSizeYgX7TsA(Dp.m9042constructorimpl(dpRect.m9126getRightD9Ej5fM() - dpRect.m9125getLeftD9Ej5fM()), Dp.m9042constructorimpl(dpRect.m9124getBottomD9Ej5fM() - dpRect.m9127getTopD9Ej5fM()));
    }

    public static /* synthetic */ void getSize$annotations(DpRect dpRect) {
    }

    public static final float getWidth(DpRect dpRect) {
        return Dp.m9042constructorimpl(dpRect.m9126getRightD9Ej5fM() - dpRect.m9125getLeftD9Ej5fM());
    }

    public static /* synthetic */ void getWidth$annotations(DpRect dpRect) {
    }

    /* JADX INFO: renamed from: isFinite-0680j_4, reason: not valid java name */
    public static final boolean m9070isFinite0680j_4(float f) {
        return (Float.floatToRawIntBits(f) & Integer.MAX_VALUE) < 2139095040;
    }

    /* JADX INFO: renamed from: isFinite-0680j_4$annotations, reason: not valid java name */
    public static /* synthetic */ void m9071isFinite0680j_4$annotations(float f) {
    }

    /* JADX INFO: renamed from: isSpecified-0680j_4, reason: not valid java name */
    public static final boolean m9072isSpecified0680j_4(float f) {
        return !Float.isNaN(f);
    }

    /* JADX INFO: renamed from: isSpecified-0680j_4$annotations, reason: not valid java name */
    public static /* synthetic */ void m9073isSpecified0680j_4$annotations(float f) {
    }

    /* JADX INFO: renamed from: isSpecified-EaSLcWc, reason: not valid java name */
    public static final boolean m9074isSpecifiedEaSLcWc(long j) {
        return j != androidx.compose.ui.geometry.InlineClassHelperKt.UnspecifiedPackedFloats;
    }

    /* JADX INFO: renamed from: isSpecified-EaSLcWc$annotations, reason: not valid java name */
    public static /* synthetic */ void m9075isSpecifiedEaSLcWc$annotations(long j) {
    }

    /* JADX INFO: renamed from: isSpecified-jo-Fl9I, reason: not valid java name */
    public static final boolean m9076isSpecifiedjoFl9I(long j) {
        return j != androidx.compose.ui.geometry.InlineClassHelperKt.UnspecifiedPackedFloats;
    }

    /* JADX INFO: renamed from: isSpecified-jo-Fl9I$annotations, reason: not valid java name */
    public static /* synthetic */ void m9077isSpecifiedjoFl9I$annotations(long j) {
    }

    /* JADX INFO: renamed from: isUnspecified-0680j_4, reason: not valid java name */
    public static final boolean m9078isUnspecified0680j_4(float f) {
        return Float.isNaN(f);
    }

    /* JADX INFO: renamed from: isUnspecified-0680j_4$annotations, reason: not valid java name */
    public static /* synthetic */ void m9079isUnspecified0680j_4$annotations(float f) {
    }

    /* JADX INFO: renamed from: isUnspecified-EaSLcWc, reason: not valid java name */
    public static final boolean m9080isUnspecifiedEaSLcWc(long j) {
        return j == androidx.compose.ui.geometry.InlineClassHelperKt.UnspecifiedPackedFloats;
    }

    /* JADX INFO: renamed from: isUnspecified-EaSLcWc$annotations, reason: not valid java name */
    public static /* synthetic */ void m9081isUnspecifiedEaSLcWc$annotations(long j) {
    }

    /* JADX INFO: renamed from: isUnspecified-jo-Fl9I, reason: not valid java name */
    public static final boolean m9082isUnspecifiedjoFl9I(long j) {
        return j == androidx.compose.ui.geometry.InlineClassHelperKt.UnspecifiedPackedFloats;
    }

    /* JADX INFO: renamed from: isUnspecified-jo-Fl9I$annotations, reason: not valid java name */
    public static /* synthetic */ void m9083isUnspecifiedjoFl9I$annotations(long j) {
    }

    /* JADX INFO: renamed from: lerp-IDex15A, reason: not valid java name */
    public static final long m9084lerpIDex15A(long j, long j2, float f) {
        float fM9085lerpMdfbLM = m9085lerpMdfbLM(DpSize.m9140getWidthD9Ej5fM(j), DpSize.m9140getWidthD9Ej5fM(j2), f);
        float fM9085lerpMdfbLM2 = m9085lerpMdfbLM(DpSize.m9138getHeightD9Ej5fM(j), DpSize.m9138getHeightD9Ej5fM(j2), f);
        return DpSize.m9131constructorimpl((((long) Float.floatToRawIntBits(fM9085lerpMdfbLM)) << 32) | (((long) Float.floatToRawIntBits(fM9085lerpMdfbLM2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: lerp-Md-fbLM, reason: not valid java name */
    public static final float m9085lerpMdfbLM(float f, float f2, float f3) {
        return Dp.m9042constructorimpl(MathHelpersKt.lerp(f, f2, f3));
    }

    /* JADX INFO: renamed from: lerp-xhh869w, reason: not valid java name */
    public static final long m9086lerpxhh869w(long j, long j2, float f) {
        float fLerp = MathHelpersKt.lerp(DpOffset.m9103getXD9Ej5fM(j), DpOffset.m9103getXD9Ej5fM(j2), f);
        float fLerp2 = MathHelpersKt.lerp(DpOffset.m9105getYD9Ej5fM(j), DpOffset.m9105getYD9Ej5fM(j2), f);
        return DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(fLerp)) << 32) | (((long) Float.floatToRawIntBits(fLerp2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: max-YgX7TsA, reason: not valid java name */
    public static final float m9087maxYgX7TsA(float f, float f2) {
        return Dp.m9042constructorimpl(Math.max(f, f2));
    }

    /* JADX INFO: renamed from: min-YgX7TsA, reason: not valid java name */
    public static final float m9088minYgX7TsA(float f, float f2) {
        return Dp.m9042constructorimpl(Math.min(f, f2));
    }

    /* JADX INFO: renamed from: takeOrElse-D5KLDUw, reason: not valid java name */
    public static final float m9089takeOrElseD5KLDUw(float f, ll3<Dp> ll3Var) {
        return !Float.isNaN(f) ? f : ll3Var.invoke().m9056unboximpl();
    }

    /* JADX INFO: renamed from: takeOrElse-gVKV90s, reason: not valid java name */
    public static final long m9090takeOrElsegVKV90s(long j, ll3<DpOffset> ll3Var) {
        return j != androidx.compose.ui.geometry.InlineClassHelperKt.UnspecifiedPackedFloats ? j : ll3Var.invoke().m9111unboximpl();
    }

    /* JADX INFO: renamed from: takeOrElse-itqla9I, reason: not valid java name */
    public static final long m9091takeOrElseitqla9I(long j, ll3<DpSize> ll3Var) {
        return j != androidx.compose.ui.geometry.InlineClassHelperKt.UnspecifiedPackedFloats ? j : ll3Var.invoke().m9148unboximpl();
    }

    /* JADX INFO: renamed from: times-3ABfNKs, reason: not valid java name */
    public static final float m9092times3ABfNKs(double d, float f) {
        return Dp.m9042constructorimpl(((float) d) * f);
    }

    /* JADX INFO: renamed from: times-6HolHcs, reason: not valid java name */
    public static final long m9096times6HolHcs(int i, long j) {
        return DpSize.m9146timesGh9hcWk(j, i);
    }

    public static /* synthetic */ void getDp$annotations(int i) {
    }

    /* JADX INFO: renamed from: times-6HolHcs, reason: not valid java name */
    public static final long m9095times6HolHcs(float f, long j) {
        return DpSize.m9145timesGh9hcWk(j, f);
    }

    public static final float getDp(double d) {
        return Dp.m9042constructorimpl((float) d);
    }

    public static final float getDp(float f) {
        return Dp.m9042constructorimpl(f);
    }

    /* JADX INFO: renamed from: times-3ABfNKs, reason: not valid java name */
    public static final float m9093times3ABfNKs(float f, float f2) {
        return Dp.m9042constructorimpl(f * f2);
    }

    /* JADX INFO: renamed from: times-3ABfNKs, reason: not valid java name */
    public static final float m9094times3ABfNKs(int i, float f) {
        return Dp.m9042constructorimpl(i * f);
    }
}
