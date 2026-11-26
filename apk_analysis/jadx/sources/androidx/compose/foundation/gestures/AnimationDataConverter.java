package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.ui.geometry.Offset;
import androidx.media3.muxer.MuxerUtil;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class AnimationDataConverter implements TwoWayConverter<AnimationData, AnimationVector4D> {
    public static final AnimationDataConverter INSTANCE = new AnimationDataConverter();

    private AnimationDataConverter() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnimationData _get_convertFromVector_$lambda$0(AnimationVector4D animationVector4D) {
        float v1 = animationVector4D.getV1();
        float v2 = animationVector4D.getV2();
        return new AnimationData(v1, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(animationVector4D.getV3())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(v2) << 32)), animationVector4D.getV4(), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnimationVector4D _get_convertToVector_$lambda$0(AnimationData animationData) {
        return new AnimationVector4D(animationData.getZoom(), Float.intBitsToFloat((int) (animationData.m1458getOffsetF1C5BW0() >> 32)), Float.intBitsToFloat((int) (animationData.m1458getOffsetF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), animationData.getDegrees());
    }

    @Override // androidx.compose.animation.core.TwoWayConverter
    public nl3<AnimationVector4D, AnimationData> getConvertFromVector() {
        return new g();
    }

    @Override // androidx.compose.animation.core.TwoWayConverter
    public nl3<AnimationData, AnimationVector4D> getConvertToVector() {
        return new f();
    }
}
