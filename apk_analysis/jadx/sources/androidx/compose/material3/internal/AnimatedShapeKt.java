package androidx.compose.material3.internal;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.ShapeWithHorizontalCenterOptically;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.bm3;
import defpackage.im;
import defpackage.j59;
import defpackage.kx6;
import defpackage.l91;
import defpackage.ll3;
import defpackage.mm1;
import defpackage.nm1;
import defpackage.x81;

/* JADX INFO: loaded from: classes2.dex */
public final class AnimatedShapeKt {
    public static final Shape rememberAnimatedShape(RoundedCornerShape roundedCornerShape, FiniteAnimationSpec<Float> finiteAnimationSpec, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-288714613, i, -1, "androidx.compose.material3.internal.rememberAnimatedShape (AnimatedShape.kt:131)");
        }
        boolean zChanged = composer.changed(finiteAnimationSpec);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new AnimatedShapeState(roundedCornerShape, finiteAnimationSpec);
            composer.updateRememberedValue(objRememberedValue);
        }
        AnimatedShapeState animatedShapeState = (AnimatedShapeState) objRememberedValue;
        Object objRememberedValue2 = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (objRememberedValue2 == companion.getEmpty()) {
            objRememberedValue2 = l91.a(-1, null, null, 6);
            composer.updateRememberedValue(objRememberedValue2);
        }
        x81 x81Var = (x81) objRememberedValue2;
        int i2 = 0;
        boolean zChangedInstance = ((((i & 14) ^ 6) > 4 && composer.changed(roundedCornerShape)) || (i & 6) == 4) | composer.changedInstance(x81Var);
        Object objRememberedValue3 = composer.rememberedValue();
        if (zChangedInstance || objRememberedValue3 == companion.getEmpty()) {
            objRememberedValue3 = new im(i2, x81Var, roundedCornerShape);
            composer.updateRememberedValue(objRememberedValue3);
        }
        EffectsKt.SideEffect((ll3) objRememberedValue3, composer, 0);
        boolean zChangedInstance2 = composer.changedInstance(x81Var) | composer.changed(animatedShapeState);
        Object objRememberedValue4 = composer.rememberedValue();
        if (zChangedInstance2 || objRememberedValue4 == companion.getEmpty()) {
            objRememberedValue4 = new AnimatedShapeKt$rememberAnimatedShape$3$1(x81Var, animatedShapeState, null);
            composer.updateRememberedValue(objRememberedValue4);
        }
        EffectsKt.LaunchedEffect(animatedShapeState, x81Var, (bm3) objRememberedValue4, composer, 0);
        Shape shapeRememberAnimatedShape = rememberAnimatedShape(animatedShapeState, composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return shapeRememberAnimatedShape;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 rememberAnimatedShape$lambda$4$lambda$3(x81 x81Var, RoundedCornerShape roundedCornerShape) {
        x81Var.mo0trySendJP2dKIU(roundedCornerShape);
        return j59.a;
    }

    private static final Shape rememberAnimatedShape(final AnimatedShapeState animatedShapeState, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1383367813, i, -1, "androidx.compose.material3.internal.rememberAnimatedShape (AnimatedShape.kt:89)");
        }
        Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
        animatedShapeState.setDensity(density);
        boolean zChanged = ((((i & 14) ^ 6) > 4 && composer.changed(animatedShapeState)) || (i & 6) == 4) | composer.changed(density);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new ShapeWithHorizontalCenterOptically() { // from class: androidx.compose.material3.internal.AnimatedShapeKt$rememberAnimatedShape$1$1
                private final MutableState clampedRange$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(new mm1(0.0f, 1.0f), null, 2, null);

                @Override // androidx.compose.ui.graphics.Shape
                /* JADX INFO: renamed from: createOutline-Pq9zytI */
                public Outline mo1345createOutlinePq9zytI(long j, LayoutDirection layoutDirection, Density density2) {
                    animatedShapeState.m4364setSizeuvyYCjk(j);
                    setClampedRange(new mm1(0.0f, Float.intBitsToFloat((int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & j)) / 2.0f));
                    return RoundedCornerShapeKt.RoundedCornerShape(((Number) kx6.j(Float.valueOf(AnimatedShapeState.m4360topStartTmRCtEA$default(animatedShapeState, 0L, null, 3, null)), getClampedRange())).floatValue(), ((Number) kx6.j(Float.valueOf(AnimatedShapeState.m4359topEndTmRCtEA$default(animatedShapeState, 0L, null, 3, null)), getClampedRange())).floatValue(), ((Number) kx6.j(Float.valueOf(AnimatedShapeState.m4357bottomEndTmRCtEA$default(animatedShapeState, 0L, null, 3, null)), getClampedRange())).floatValue(), ((Number) kx6.j(Float.valueOf(AnimatedShapeState.m4358bottomStartTmRCtEA$default(animatedShapeState, 0L, null, 3, null)), getClampedRange())).floatValue()).mo1345createOutlinePq9zytI(j, layoutDirection, density2);
                }

                public final nm1<Float> getClampedRange() {
                    return (nm1) this.clampedRange$delegate.getValue();
                }

                @Override // androidx.compose.material3.ShapeWithHorizontalCenterOptically
                public float offset() {
                    float fFloatValue = ((Number) kx6.j(Float.valueOf(AnimatedShapeState.m4360topStartTmRCtEA$default(animatedShapeState, 0L, null, 3, null)), getClampedRange())).floatValue();
                    float fFloatValue2 = ((Number) kx6.j(Float.valueOf(AnimatedShapeState.m4359topEndTmRCtEA$default(animatedShapeState, 0L, null, 3, null)), getClampedRange())).floatValue();
                    return (((fFloatValue + ((Number) kx6.j(Float.valueOf(AnimatedShapeState.m4358bottomStartTmRCtEA$default(animatedShapeState, 0L, null, 3, null)), getClampedRange())).floatValue()) / 2.0f) - ((fFloatValue2 + ((Number) kx6.j(Float.valueOf(AnimatedShapeState.m4357bottomEndTmRCtEA$default(animatedShapeState, 0L, null, 3, null)), getClampedRange())).floatValue()) / 2.0f)) * 0.11f;
                }

                public final void setClampedRange(nm1<Float> nm1Var) {
                    this.clampedRange$delegate.setValue(nm1Var);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        AnimatedShapeKt$rememberAnimatedShape$1$1 animatedShapeKt$rememberAnimatedShape$1$1 = (AnimatedShapeKt$rememberAnimatedShape$1$1) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return animatedShapeKt$rememberAnimatedShape$1$1;
    }
}
