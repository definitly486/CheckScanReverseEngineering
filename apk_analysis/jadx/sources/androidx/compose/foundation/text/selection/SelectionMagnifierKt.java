package androidx.compose.foundation.text.selection;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.text.selection.SelectionMagnifierKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Offset;
import androidx.media3.muxer.MuxerUtil;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.wk5;
import defpackage.xe;
import defpackage.y22;
import defpackage.ye;

/* JADX INFO: loaded from: classes.dex */
public final class SelectionMagnifierKt {
    private static final SpringSpec<Offset> MagnifierSpringSpec;
    private static final long OffsetDisplacementThreshold;
    private static final AnimationVector2D UnspecifiedAnimationVector2D = new AnimationVector2D(Float.NaN, Float.NaN);
    private static final TwoWayConverter<Offset, AnimationVector2D> UnspecifiedSafeOffsetVectorConverter = VectorConvertersKt.TwoWayConverter(new xe(2), new ye(2));

    static {
        long jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(0.01f)) << 32) | (((long) Float.floatToRawIntBits(0.01f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        OffsetDisplacementThreshold = jM5979constructorimpl;
        MagnifierSpringSpec = new SpringSpec<>(0.0f, 0.0f, Offset.m5976boximpl(jM5979constructorimpl), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnimationVector2D UnspecifiedSafeOffsetVectorConverter$lambda$0(Offset offset) {
        return (offset.m5997unboximpl() & 9223372034707292159L) != InlineClassHelperKt.UnspecifiedPackedFloats ? new AnimationVector2D(Float.intBitsToFloat((int) (offset.m5997unboximpl() >> 32)), Float.intBitsToFloat((int) (offset.m5997unboximpl() & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) : UnspecifiedAnimationVector2D;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Offset UnspecifiedSafeOffsetVectorConverter$lambda$1(AnimationVector2D animationVector2D) {
        float v1 = animationVector2D.getV1();
        float v2 = animationVector2D.getV2();
        return Offset.m5976boximpl(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(v1)) << 32) | (((long) Float.floatToRawIntBits(v2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
    }

    public static final Modifier animatedSelectionMagnifier(Modifier modifier, final ll3<Offset> ll3Var, final nl3<? super ll3<Offset>, ? extends Modifier> nl3Var) {
        return ComposedModifierKt.composed$default(modifier, null, new dm3() { // from class: kn7
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                int iIntValue = ((Integer) obj3).intValue();
                return SelectionMagnifierKt.animatedSelectionMagnifier$lambda$0(ll3Var, nl3Var, (Modifier) obj, (Composer) obj2, iIntValue);
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier animatedSelectionMagnifier$lambda$0(ll3 ll3Var, nl3 nl3Var, Modifier modifier, Composer composer, int i) {
        composer.startReplaceGroup(759876635);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(759876635, i, -1, "androidx.compose.foundation.text.selection.animatedSelectionMagnifier.<anonymous> (SelectionMagnifier.kt:64)");
        }
        State<Offset> stateRememberAnimatedMagnifierPosition = rememberAnimatedMagnifierPosition(ll3Var, composer, 0);
        boolean zChanged = composer.changed(stateRememberAnimatedMagnifierPosition);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new wk5(stateRememberAnimatedMagnifierPosition, 1);
            composer.updateRememberedValue(objRememberedValue);
        }
        Modifier modifier2 = (Modifier) nl3Var.invoke((ll3) objRememberedValue);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return modifier2;
    }

    private static final long animatedSelectionMagnifier$lambda$0$0(State<Offset> state) {
        return state.getValue().m5997unboximpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Offset animatedSelectionMagnifier$lambda$0$1$0(State state) {
        return Offset.m5976boximpl(animatedSelectionMagnifier$lambda$0$0(state));
    }

    public static final SpringSpec<Offset> getMagnifierSpringSpec() {
        return MagnifierSpringSpec;
    }

    public static final long getOffsetDisplacementThreshold() {
        return OffsetDisplacementThreshold;
    }

    public static final TwoWayConverter<Offset, AnimationVector2D> getUnspecifiedSafeOffsetVectorConverter() {
        return UnspecifiedSafeOffsetVectorConverter;
    }

    private static final State<Offset> rememberAnimatedMagnifierPosition(ll3<Offset> ll3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1589795249, i, -1, "androidx.compose.foundation.text.selection.rememberAnimatedMagnifierPosition (SelectionMagnifier.kt:73)");
        }
        Object objRememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (objRememberedValue == companion.getEmpty()) {
            objRememberedValue = SnapshotStateKt.derivedStateOf(ll3Var);
            composer.updateRememberedValue(objRememberedValue);
        }
        State state = (State) objRememberedValue;
        Object objRememberedValue2 = composer.rememberedValue();
        if (objRememberedValue2 == companion.getEmpty()) {
            Object animatable = new Animatable(Offset.m5976boximpl(rememberAnimatedMagnifierPosition$lambda$1(state)), UnspecifiedSafeOffsetVectorConverter, Offset.m5976boximpl(OffsetDisplacementThreshold), null, 8, null);
            composer.updateRememberedValue(animatable);
            objRememberedValue2 = animatable;
        }
        Animatable animatable2 = (Animatable) objRememberedValue2;
        j59 j59Var = j59.a;
        boolean zChangedInstance = composer.changedInstance(animatable2);
        Object objRememberedValue3 = composer.rememberedValue();
        if (zChangedInstance || objRememberedValue3 == companion.getEmpty()) {
            objRememberedValue3 = new SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1(state, animatable2, null);
            composer.updateRememberedValue(objRememberedValue3);
        }
        EffectsKt.LaunchedEffect(j59Var, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue3, composer, 6);
        State<Offset> stateAsState = animatable2.asState();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return stateAsState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long rememberAnimatedMagnifierPosition$lambda$1(State<Offset> state) {
        return state.getValue().m5997unboximpl();
    }
}
