package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.InfiniteRepeatableSpec;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.InfiniteTransitionKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import defpackage.dm3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
public final class TransitionKt {
    public static final <S> State<Color> animateColor(final Transition<S> transition, dm3<? super Transition.Segment<S>, ? super Composer, ? super Integer, ? extends FiniteAnimationSpec<Color>> dm3Var, String str, dm3<? super S, ? super Composer, ? super Integer, Color> dm3Var2, Composer composer, int i, int i2) {
        Object currentState;
        if ((i2 & 1) != 0) {
            dm3Var = AnonymousClass1.INSTANCE;
        }
        if ((i2 & 2) != 0) {
            str = "ColorAnimation";
        }
        String str2 = str;
        ColorSpace colorSpaceM6236getColorSpaceimpl = Color.m6236getColorSpaceimpl(dm3Var2.invoke(transition.getTargetState(), composer, Integer.valueOf((i >> 6) & 112)).m6242unboximpl());
        boolean zChanged = composer.changed(colorSpaceM6236getColorSpaceimpl);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = (TwoWayConverter) ColorVectorConverterKt.getVectorConverter(Color.Companion).invoke(colorSpaceM6236getColorSpaceimpl);
            composer.updateRememberedValue(objRememberedValue);
        }
        TwoWayConverter twoWayConverter = (TwoWayConverter) objRememberedValue;
        int i3 = i & 14;
        int i4 = i << 3;
        int i5 = i3 | (i4 & 896) | (i4 & 7168) | (i4 & 57344);
        if (transition.isSeeking()) {
            composer.startReplaceGroup(1666827533);
            composer.endReplaceGroup();
            currentState = transition.getCurrentState();
        } else {
            composer.startReplaceGroup(1666573488);
            boolean z = (((i5 & 14) ^ 6) > 4 && composer.changed(transition)) || (i5 & 6) == 4;
            currentState = composer.rememberedValue();
            if (z || currentState == Composer.Companion.getEmpty()) {
                Snapshot.Companion companion = Snapshot.Companion;
                Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
                nl3<Object, j59> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
                Snapshot snapshotMakeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
                try {
                    S currentState2 = transition.getCurrentState();
                    companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
                    composer.updateRememberedValue(currentState2);
                    currentState = currentState2;
                } catch (Throwable th) {
                    companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
                    throw th;
                }
            }
            composer.endReplaceGroup();
        }
        int i6 = (i5 >> 9) & 112;
        Color colorInvoke = dm3Var2.invoke(currentState, composer, Integer.valueOf(i6));
        int i7 = i5 & 14;
        int i8 = i7 ^ 6;
        boolean z2 = (i8 > 4 && composer.changed(transition)) || (i5 & 6) == 4;
        Object objRememberedValue2 = composer.rememberedValue();
        if (z2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
            objRememberedValue2 = SnapshotStateKt.derivedStateOf(new ll3<S>() { // from class: androidx.compose.animation.TransitionKt$animateColor$$inlined$animateValue$1
                @Override // defpackage.ll3
                public final S invoke() {
                    return (S) transition.getTargetState();
                }
            });
            composer.updateRememberedValue(objRememberedValue2);
        }
        Color colorInvoke2 = dm3Var2.invoke((Object) ((State) objRememberedValue2).getValue(), composer, Integer.valueOf(i6));
        boolean z3 = (i8 > 4 && composer.changed(transition)) || (i5 & 6) == 4;
        Object objRememberedValue3 = composer.rememberedValue();
        if (z3 || objRememberedValue3 == Composer.Companion.getEmpty()) {
            objRememberedValue3 = SnapshotStateKt.derivedStateOf(new ll3<Transition.Segment<S>>() { // from class: androidx.compose.animation.TransitionKt$animateColor$$inlined$animateValue$2
                @Override // defpackage.ll3
                public final Transition.Segment<S> invoke() {
                    return transition.getSegment();
                }
            });
            composer.updateRememberedValue(objRememberedValue3);
        }
        return androidx.compose.animation.core.TransitionKt.createTransitionAnimation(transition, colorInvoke, colorInvoke2, dm3Var.invoke((Object) ((State) objRememberedValue3).getValue(), composer, Integer.valueOf((i5 >> 3) & 112)), twoWayConverter, str2, composer, i7 | ((i5 << 6) & 458752));
    }

    /* JADX INFO: renamed from: animateColor-DTcfvLk, reason: not valid java name */
    public static final State<Color> m1179animateColorDTcfvLk(InfiniteTransition infiniteTransition, long j, long j2, InfiniteRepeatableSpec<Color> infiniteRepeatableSpec, String str, Composer composer, int i, int i2) {
        Composer composer2;
        String str2 = (i2 & 8) != 0 ? "ColorAnimation" : str;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1901963533, i, -1, "androidx.compose.animation.animateColor (Transition.kt:97)");
        }
        Object objRememberedValue = composer.rememberedValue();
        if (objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = (TwoWayConverter) ColorVectorConverterKt.getVectorConverter(Color.Companion).invoke(Color.m6236getColorSpaceimpl(j2));
            composer2 = composer;
            composer2.updateRememberedValue(objRememberedValue);
        } else {
            composer2 = composer;
        }
        int i3 = i << 3;
        State<Color> stateAnimateValue = InfiniteTransitionKt.animateValue(infiniteTransition, Color.m6222boximpl(j), Color.m6222boximpl(j2), (TwoWayConverter) objRememberedValue, infiniteRepeatableSpec, str2, composer2, InfiniteTransition.$stable | (i & 14) | (i & 112) | (i & 896) | (InfiniteRepeatableSpec.$stable << 12) | (57344 & i3) | (i3 & 458752), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return stateAnimateValue;
    }

    @ul2
    /* JADX INFO: renamed from: animateColor-RIQooxk, reason: not valid java name */
    public static final /* synthetic */ State m1180animateColorRIQooxk(InfiniteTransition infiniteTransition, long j, long j2, InfiniteRepeatableSpec infiniteRepeatableSpec, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1400583834, i, -1, "androidx.compose.animation.animateColor (Transition.kt:112)");
        }
        State<Color> stateM1179animateColorDTcfvLk = m1179animateColorDTcfvLk(infiniteTransition, j, j2, infiniteRepeatableSpec, "ColorAnimation", composer, InfiniteTransition.$stable | 24576 | (i & 14) | (i & 112) | (i & 896) | (InfiniteRepeatableSpec.$stable << 9) | (i & 7168), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return stateM1179animateColorDTcfvLk;
    }

    /* JADX INFO: Add missing generic type declarations: [S] */
    /* JADX INFO: renamed from: androidx.compose.animation.TransitionKt$animateColor$1, reason: invalid class name */
    public static final class AnonymousClass1<S> extends gh4 implements dm3<Transition.Segment<S>, Composer, Integer, SpringSpec<Color>> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(3);
        }

        public final SpringSpec<Color> invoke(Transition.Segment<S> segment, Composer composer, int i) {
            composer.startReplaceGroup(-781456724);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-781456724, i, -1, "androidx.compose.animation.animateColor.<anonymous> (Transition.kt:62)");
            }
            SpringSpec<Color> springSpecSpring$default = AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceGroup();
            return springSpecSpring$default;
        }

        @Override // defpackage.dm3
        public /* bridge */ /* synthetic */ SpringSpec<Color> invoke(Object obj, Composer composer, Integer num) {
            return invoke((Transition.Segment) obj, composer, num.intValue());
        }
    }
}
