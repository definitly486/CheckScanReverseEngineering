package androidx.compose.animation.core;

import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpOffset;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.b36;
import defpackage.n05;
import defpackage.sc3;
import defpackage.t74;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class VisibilityThresholdsKt {
    private static final float DpVisibilityThreshold = 0.4f;
    private static final float PxVisibilityThreshold = 1.0f;
    private static final Rect RectVisibilityThreshold;
    private static final Map<TwoWayConverter<?, ?>, Float> VisibilityThresholdMap;

    static {
        Float fValueOf = Float.valueOf(1.0f);
        RectVisibilityThreshold = new Rect(1.0f, 1.0f, 1.0f, 1.0f);
        b36 b36Var = new b36(VectorConvertersKt.getVectorConverter(t74.a), fValueOf);
        b36 b36Var2 = new b36(VectorConvertersKt.getVectorConverter(IntSize.Companion), fValueOf);
        b36 b36Var3 = new b36(VectorConvertersKt.getVectorConverter(IntOffset.Companion), fValueOf);
        b36 b36Var4 = new b36(VectorConvertersKt.getVectorConverter(sc3.a), Float.valueOf(0.01f));
        b36 b36Var5 = new b36(VectorConvertersKt.getVectorConverter(Rect.Companion), fValueOf);
        b36 b36Var6 = new b36(VectorConvertersKt.getVectorConverter(Size.Companion), fValueOf);
        b36 b36Var7 = new b36(VectorConvertersKt.getVectorConverter(Offset.Companion), fValueOf);
        TwoWayConverter<Dp, AnimationVector1D> vectorConverter = VectorConvertersKt.getVectorConverter(Dp.Companion);
        Float fValueOf2 = Float.valueOf(0.4f);
        VisibilityThresholdMap = n05.e(b36Var, b36Var2, b36Var3, b36Var4, b36Var5, b36Var6, b36Var7, new b36(vectorConverter, fValueOf2), new b36(VectorConvertersKt.getVectorConverter(DpOffset.Companion), fValueOf2));
    }

    public static final long getVisibilityThreshold(DpOffset.Companion companion) {
        Dp.Companion companion2 = Dp.Companion;
        float visibilityThreshold = getVisibilityThreshold(companion2);
        float visibilityThreshold2 = getVisibilityThreshold(companion2);
        return DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(visibilityThreshold)) << 32) | (((long) Float.floatToRawIntBits(visibilityThreshold2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public static final Map<TwoWayConverter<?, ?>, Float> getVisibilityThresholdMap() {
        return VisibilityThresholdMap;
    }

    public static /* synthetic */ void getVisibilityThresholdMap$annotations() {
    }

    public static final int getVisibilityThreshold(t74 t74Var) {
        return 1;
    }

    public static final Rect getVisibilityThreshold(Rect.Companion companion) {
        return RectVisibilityThreshold;
    }

    public static final long getVisibilityThreshold(IntOffset.Companion companion) {
        return IntOffset.m9164constructorimpl(InlineClassHelperKt.Uint64Low32);
    }

    public static final long getVisibilityThreshold(Offset.Companion companion) {
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(1.0f)) << 32) | (((long) Float.floatToRawIntBits(1.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public static final float getVisibilityThreshold(Dp.Companion companion) {
        return Dp.m9042constructorimpl(0.4f);
    }

    public static final long getVisibilityThreshold(Size.Companion companion) {
        return Size.m6047constructorimpl((((long) Float.floatToRawIntBits(1.0f)) << 32) | (((long) Float.floatToRawIntBits(1.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public static final long getVisibilityThreshold(IntSize.Companion companion) {
        return IntSize.m9208constructorimpl(InlineClassHelperKt.Uint64Low32);
    }
}
