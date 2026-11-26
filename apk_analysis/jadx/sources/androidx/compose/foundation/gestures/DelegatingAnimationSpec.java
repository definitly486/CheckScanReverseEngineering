package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationVector;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.animation.core.VectorizedAnimationSpec;
import androidx.compose.animation.core.VectorizedFiniteAnimationSpec;
import androidx.compose.ui.geometry.Offset;
import androidx.media3.muxer.MuxerUtil;
import defpackage.nl3;
import defpackage.sc3;

/* JADX INFO: loaded from: classes.dex */
final class DelegatingAnimationSpec implements AnimationSpec<AnimationData> {
    private final AnimationSpec<Offset> offsetAnimationSpec;
    private final AnimationSpec<Float> rotationAnimationSpec;
    private final AnimationSpec<Float> zoomAnimationSpec;

    public DelegatingAnimationSpec(AnimationSpec<Float> animationSpec, AnimationSpec<Offset> animationSpec2, AnimationSpec<Float> animationSpec3) {
        this.zoomAnimationSpec = animationSpec;
        this.offsetAnimationSpec = animationSpec2;
        this.rotationAnimationSpec = animationSpec3;
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    public <V extends AnimationVector> VectorizedAnimationSpec<V> vectorize(final TwoWayConverter<AnimationData, V> twoWayConverter) {
        AnimationSpec<Float> animationSpec = this.zoomAnimationSpec;
        sc3 sc3Var = sc3.a;
        final VectorizedAnimationSpec<V> vectorizedAnimationSpecVectorize = animationSpec.vectorize(VectorConvertersKt.getVectorConverter(sc3Var));
        final VectorizedAnimationSpec<V> vectorizedAnimationSpecVectorize2 = this.offsetAnimationSpec.vectorize(VectorConvertersKt.getVectorConverter(Offset.Companion));
        final VectorizedAnimationSpec<V> vectorizedAnimationSpecVectorize3 = this.rotationAnimationSpec.vectorize(VectorConvertersKt.getVectorConverter(sc3Var));
        return new VectorizedFiniteAnimationSpec<V>() { // from class: androidx.compose.foundation.gestures.DelegatingAnimationSpec.vectorize.1
            private final AnimationVector1D degreesVector(AnimationData animationData) {
                return (AnimationVector1D) VectorConvertersKt.getVectorConverter(sc3.a).getConvertToVector().invoke(Float.valueOf(animationData.getDegrees()));
            }

            private final AnimationVector2D offsetVector(AnimationData animationData) {
                nl3<Offset, V> convertToVector = VectorConvertersKt.getVectorConverter(Offset.Companion).getConvertToVector();
                float fIntBitsToFloat = Float.intBitsToFloat((int) (animationData.m1458getOffsetF1C5BW0() >> 32));
                float fIntBitsToFloat2 = Float.intBitsToFloat((int) (animationData.m1458getOffsetF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                return (AnimationVector2D) convertToVector.invoke(Offset.m5976boximpl(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE))));
            }

            /* JADX WARN: Incorrect return type in method signature: (Landroidx/compose/animation/core/AnimationVector1D;Landroidx/compose/animation/core/AnimationVector2D;Landroidx/compose/animation/core/AnimationVector1D;)TV; */
            private final AnimationVector packToAnimationVector(AnimationVector1D animationVector1D, AnimationVector2D animationVector2D, AnimationVector1D animationVector1D2) {
                nl3<AnimationData, V> convertToVector = twoWayConverter.getConvertToVector();
                float value = animationVector1D.getValue();
                float v1 = animationVector2D.getV1();
                return (AnimationVector) convertToVector.invoke(new AnimationData(value, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(animationVector2D.getV2())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(v1) << 32)), animationVector1D2.getValue(), null));
            }

            private final AnimationVector1D zoomVector(AnimationData animationData) {
                return (AnimationVector1D) VectorConvertersKt.getVectorConverter(sc3.a).getConvertToVector().invoke(Float.valueOf(animationData.getZoom()));
            }

            /* JADX WARN: Incorrect types in method signature: (TV;TV;TV;)J */
            @Override // androidx.compose.animation.core.VectorizedAnimationSpec
            public long getDurationNanos(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
                AnimationData animationDataInvoke = twoWayConverter.getConvertFromVector().invoke(animationVector);
                AnimationData animationDataInvoke2 = twoWayConverter.getConvertFromVector().invoke(animationVector2);
                AnimationData animationDataInvoke3 = twoWayConverter.getConvertFromVector().invoke(animationVector3);
                return Math.max(vectorizedAnimationSpecVectorize.getDurationNanos(zoomVector(animationDataInvoke), zoomVector(animationDataInvoke2), zoomVector(animationDataInvoke3)), Math.max(vectorizedAnimationSpecVectorize2.getDurationNanos(offsetVector(animationDataInvoke), offsetVector(animationDataInvoke2), offsetVector(animationDataInvoke3)), vectorizedAnimationSpecVectorize3.getDurationNanos(degreesVector(animationDataInvoke), degreesVector(animationDataInvoke2), degreesVector(animationDataInvoke3))));
            }

            /* JADX WARN: Incorrect return type in method signature: (JTV;TV;TV;)TV; */
            @Override // androidx.compose.animation.core.VectorizedAnimationSpec
            public AnimationVector getValueFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
                AnimationData animationDataInvoke = twoWayConverter.getConvertFromVector().invoke(animationVector);
                AnimationData animationDataInvoke2 = twoWayConverter.getConvertFromVector().invoke(animationVector2);
                AnimationData animationDataInvoke3 = twoWayConverter.getConvertFromVector().invoke(animationVector3);
                return packToAnimationVector((AnimationVector1D) vectorizedAnimationSpecVectorize.getValueFromNanos(j, zoomVector(animationDataInvoke), zoomVector(animationDataInvoke2), zoomVector(animationDataInvoke3)), (AnimationVector2D) vectorizedAnimationSpecVectorize2.getValueFromNanos(j, offsetVector(animationDataInvoke), offsetVector(animationDataInvoke2), offsetVector(animationDataInvoke3)), (AnimationVector1D) vectorizedAnimationSpecVectorize3.getValueFromNanos(j, degreesVector(animationDataInvoke), degreesVector(animationDataInvoke2), degreesVector(animationDataInvoke3)));
            }

            /* JADX WARN: Incorrect return type in method signature: (JTV;TV;TV;)TV; */
            @Override // androidx.compose.animation.core.VectorizedAnimationSpec
            public AnimationVector getVelocityFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
                AnimationData animationDataInvoke = twoWayConverter.getConvertFromVector().invoke(animationVector);
                AnimationData animationDataInvoke2 = twoWayConverter.getConvertFromVector().invoke(animationVector2);
                AnimationData animationDataInvoke3 = twoWayConverter.getConvertFromVector().invoke(animationVector3);
                return packToAnimationVector((AnimationVector1D) vectorizedAnimationSpecVectorize.getVelocityFromNanos(j, zoomVector(animationDataInvoke), zoomVector(animationDataInvoke2), zoomVector(animationDataInvoke3)), (AnimationVector2D) vectorizedAnimationSpecVectorize2.getVelocityFromNanos(j, offsetVector(animationDataInvoke), offsetVector(animationDataInvoke2), offsetVector(animationDataInvoke3)), (AnimationVector1D) vectorizedAnimationSpecVectorize3.getVelocityFromNanos(j, degreesVector(animationDataInvoke), degreesVector(animationDataInvoke2), degreesVector(animationDataInvoke3)));
            }
        };
    }
}
