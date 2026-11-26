package androidx.compose.animation.core;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpOffset;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.dh0;
import defpackage.ec9;
import defpackage.eu6;
import defpackage.fc9;
import defpackage.gn6;
import defpackage.ii3;
import defpackage.in6;
import defpackage.is0;
import defpackage.ji1;
import defpackage.jy2;
import defpackage.ki3;
import defpackage.ly2;
import defpackage.mg6;
import defpackage.nl3;
import defpackage.sc3;
import defpackage.sc7;
import defpackage.si1;
import defpackage.t74;
import defpackage.to;
import defpackage.u00;
import defpackage.xn3;

/* JADX INFO: loaded from: classes.dex */
public final class VectorConvertersKt {
    private static final TwoWayConverter<Float, AnimationVector1D> FloatToVector = TwoWayConverter(new gn6(3), new ly2(4));
    private static final TwoWayConverter<Integer, AnimationVector1D> IntToVector = TwoWayConverter(new eu6(1), new in6(3));
    private static final TwoWayConverter<Dp, AnimationVector1D> DpToVector = TwoWayConverter(new sc7(2), new to(4));
    private static final TwoWayConverter<DpOffset, AnimationVector2D> DpOffsetToVector = TwoWayConverter(new xn3(4), new is0(5));
    private static final TwoWayConverter<Size, AnimationVector2D> SizeToVector = TwoWayConverter(new mg6(3), new ji1(2));
    private static final TwoWayConverter<Offset, AnimationVector2D> OffsetToVector = TwoWayConverter(new ii3(2), new ec9(0));
    private static final TwoWayConverter<IntOffset, AnimationVector2D> IntOffsetToVector = TwoWayConverter(new fc9(0), new jy2(3));
    private static final TwoWayConverter<IntSize, AnimationVector2D> IntSizeToVector = TwoWayConverter(new ki3(2), new u00(6));
    private static final TwoWayConverter<Rect, AnimationVector4D> RectToVector = TwoWayConverter(new dh0(2), new si1(3));

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnimationVector2D DpOffsetToVector$lambda$0(DpOffset dpOffset) {
        return new AnimationVector2D(DpOffset.m9103getXD9Ej5fM(dpOffset.m9111unboximpl()), DpOffset.m9105getYD9Ej5fM(dpOffset.m9111unboximpl()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DpOffset DpOffsetToVector$lambda$1(AnimationVector2D animationVector2D) {
        float fM9042constructorimpl = Dp.m9042constructorimpl(animationVector2D.getV1());
        float fM9042constructorimpl2 = Dp.m9042constructorimpl(animationVector2D.getV2());
        return DpOffset.m9097boximpl(DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(fM9042constructorimpl)) << 32) | (((long) Float.floatToRawIntBits(fM9042constructorimpl2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnimationVector1D DpToVector$lambda$0(Dp dp) {
        return new AnimationVector1D(dp.m9056unboximpl());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Dp DpToVector$lambda$1(AnimationVector1D animationVector1D) {
        return Dp.m9040boximpl(Dp.m9042constructorimpl(animationVector1D.getValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnimationVector1D FloatToVector$lambda$0(float f) {
        return new AnimationVector1D(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnimationVector2D IntOffsetToVector$lambda$0(IntOffset intOffset) {
        return new AnimationVector2D(IntOffset.m9170getXimpl(intOffset.m9179unboximpl()), IntOffset.m9171getYimpl(intOffset.m9179unboximpl()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IntOffset IntOffsetToVector$lambda$1(AnimationVector2D animationVector2D) {
        return IntOffset.m9161boximpl(IntOffset.m9164constructorimpl((((long) Math.round(animationVector2D.getV1())) << 32) | (((long) Math.round(animationVector2D.getV2())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnimationVector2D IntSizeToVector$lambda$0(IntSize intSize) {
        return new AnimationVector2D((int) (intSize.m9217unboximpl() >> 32), (int) (intSize.m9217unboximpl() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IntSize IntSizeToVector$lambda$1(AnimationVector2D animationVector2D) {
        int iRound = Math.round(animationVector2D.getV1());
        if (iRound < 0) {
            iRound = 0;
        }
        int iRound2 = Math.round(animationVector2D.getV2());
        return IntSize.m9205boximpl(IntSize.m9208constructorimpl((((long) (iRound2 >= 0 ? iRound2 : 0)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) iRound) << 32)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnimationVector1D IntToVector$lambda$0(int i) {
        return new AnimationVector1D(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int IntToVector$lambda$1(AnimationVector1D animationVector1D) {
        return (int) animationVector1D.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnimationVector2D OffsetToVector$lambda$0(Offset offset) {
        return new AnimationVector2D(Float.intBitsToFloat((int) (offset.m5997unboximpl() >> 32)), Float.intBitsToFloat((int) (offset.m5997unboximpl() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Offset OffsetToVector$lambda$1(AnimationVector2D animationVector2D) {
        float v1 = animationVector2D.getV1();
        float v2 = animationVector2D.getV2();
        return Offset.m5976boximpl(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(v1)) << 32) | (((long) Float.floatToRawIntBits(v2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnimationVector4D RectToVector$lambda$0(Rect rect) {
        return new AnimationVector4D(rect.getLeft(), rect.getTop(), rect.getRight(), rect.getBottom());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Rect RectToVector$lambda$1(AnimationVector4D animationVector4D) {
        return new Rect(animationVector4D.getV1(), animationVector4D.getV2(), animationVector4D.getV3(), animationVector4D.getV4());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnimationVector2D SizeToVector$lambda$0(Size size) {
        return new AnimationVector2D(Float.intBitsToFloat((int) (size.m6061unboximpl() >> 32)), Float.intBitsToFloat((int) (size.m6061unboximpl() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Size SizeToVector$lambda$1(AnimationVector2D animationVector2D) {
        float v1 = animationVector2D.getV1();
        float v2 = animationVector2D.getV2();
        return Size.m6044boximpl(Size.m6047constructorimpl((((long) Float.floatToRawIntBits(v1)) << 32) | (((long) Float.floatToRawIntBits(v2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
    }

    public static final <T, V extends AnimationVector> TwoWayConverter<T, V> TwoWayConverter(nl3<? super T, ? extends V> nl3Var, nl3<? super V, ? extends T> nl3Var2) {
        return new TwoWayConverterImpl(nl3Var, nl3Var2);
    }

    public static final TwoWayConverter<Float, AnimationVector1D> getVectorConverter(sc3 sc3Var) {
        return FloatToVector;
    }

    public static final float lerp(float f, float f2, float f3) {
        return (f2 * f3) + ((1.0f - f3) * f);
    }

    public static final TwoWayConverter<Integer, AnimationVector1D> getVectorConverter(t74 t74Var) {
        return IntToVector;
    }

    public static final TwoWayConverter<Rect, AnimationVector4D> getVectorConverter(Rect.Companion companion) {
        return RectToVector;
    }

    public static final TwoWayConverter<Dp, AnimationVector1D> getVectorConverter(Dp.Companion companion) {
        return DpToVector;
    }

    public static final TwoWayConverter<DpOffset, AnimationVector2D> getVectorConverter(DpOffset.Companion companion) {
        return DpOffsetToVector;
    }

    public static final TwoWayConverter<Size, AnimationVector2D> getVectorConverter(Size.Companion companion) {
        return SizeToVector;
    }

    public static final TwoWayConverter<Offset, AnimationVector2D> getVectorConverter(Offset.Companion companion) {
        return OffsetToVector;
    }

    public static final TwoWayConverter<IntOffset, AnimationVector2D> getVectorConverter(IntOffset.Companion companion) {
        return IntOffsetToVector;
    }

    public static final TwoWayConverter<IntSize, AnimationVector2D> getVectorConverter(IntSize.Companion companion) {
        return IntSizeToVector;
    }
}
