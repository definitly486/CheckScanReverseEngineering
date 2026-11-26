package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.MotionDurationScale;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.unit.Density;
import defpackage.a32;
import defpackage.ah;
import defpackage.bm3;
import defpackage.e02;
import defpackage.nl3;
import defpackage.o07;
import defpackage.o22;
import defpackage.r57;
import defpackage.v71;

/* JADX INFO: loaded from: classes.dex */
public final class ScrollableKt {
    private static final float DefaultScrollMotionDurationScaleFactor = 1.0f;
    private static final double VerticalAxisThresholdAngle = 0.7853981633974483d;
    private static final nl3<PointerType, Boolean> CanDragCalculation = new v71(7);
    private static final ScrollScope NoOpScrollScope = new ScrollScope() { // from class: androidx.compose.foundation.gestures.ScrollableKt$NoOpScrollScope$1
        @Override // androidx.compose.foundation.gestures.ScrollScope
        public float scrollBy(float f) {
            return f;
        }
    };
    private static final MotionDurationScale DefaultScrollMotionDurationScale = new MotionDurationScale() { // from class: androidx.compose.foundation.gestures.ScrollableKt$DefaultScrollMotionDurationScale$1
        @Override // androidx.compose.ui.MotionDurationScale, defpackage.o22
        public /* bridge */ <R> R fold(R r, bm3<? super R, ? super o22.a, ? extends R> bm3Var) {
            return (R) MotionDurationScale.DefaultImpls.fold(this, r, bm3Var);
        }

        @Override // androidx.compose.ui.MotionDurationScale, defpackage.o22
        public /* bridge */ <E extends o22.a> E get(o22.b<E> bVar) {
            return (E) MotionDurationScale.DefaultImpls.get(this, bVar);
        }

        @Override // androidx.compose.ui.MotionDurationScale
        public float getScaleFactor() {
            return 1.0f;
        }

        @Override // androidx.compose.ui.MotionDurationScale, defpackage.o22
        public /* bridge */ o22 minusKey(o22.b<?> bVar) {
            return MotionDurationScale.DefaultImpls.minusKey(this, bVar);
        }

        @Override // androidx.compose.ui.MotionDurationScale, defpackage.o22
        public /* bridge */ o22 plus(o22 o22Var) {
            return MotionDurationScale.DefaultImpls.plus(this, o22Var);
        }
    };
    private static final Density UnityDensity = new Density() { // from class: androidx.compose.foundation.gestures.ScrollableKt$UnityDensity$1
        @Override // androidx.compose.ui.unit.Density
        public float getDensity() {
            return 1.0f;
        }

        @Override // androidx.compose.ui.unit.FontScaling
        public float getFontScale() {
            return 1.0f;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean CanDragCalculation$lambda$0(PointerType pointerType) {
        return !(pointerType == null ? false : PointerType.m7642equalsimpl0(pointerType.m7645unboximpl(), PointerType.Companion.m7647getMouseT8wyACA()));
    }

    public static final nl3<PointerType, Boolean> getCanDragCalculation() {
        return CanDragCalculation;
    }

    public static final MotionDurationScale getDefaultScrollMotionDurationScale() {
        return DefaultScrollMotionDurationScale;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean getShouldBeTriggeredByMouseWheel(FlingBehavior flingBehavior) {
        return !(flingBehavior instanceof ScrollableDefaultFlingBehavior);
    }

    public static final Density getUnityDensity() {
        return UnityDensity;
    }

    public static final Modifier scrollable(Modifier modifier, ScrollableState scrollableState, Orientation orientation, OverscrollEffect overscrollEffect, boolean z, boolean z2, FlingBehavior flingBehavior, MutableInteractionSource mutableInteractionSource, BringIntoViewSpec bringIntoViewSpec) {
        return modifier.then(new ScrollableElement(scrollableState, orientation, overscrollEffect, z, z2, flingBehavior, mutableInteractionSource, bringIntoViewSpec));
    }

    public static /* synthetic */ Modifier scrollable$default(Modifier modifier, ScrollableState scrollableState, Orientation orientation, OverscrollEffect overscrollEffect, boolean z, boolean z2, FlingBehavior flingBehavior, MutableInteractionSource mutableInteractionSource, BringIntoViewSpec bringIntoViewSpec, int i, Object obj) {
        if ((i & 8) != 0) {
            z = true;
        }
        return scrollable(modifier, scrollableState, orientation, overscrollEffect, z, (i & 16) != 0 ? false : z2, (i & 32) != 0 ? null : flingBehavior, (i & 64) != 0 ? null : mutableInteractionSource, (i & 128) != 0 ? null : bringIntoViewSpec);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX INFO: renamed from: semanticsScrollBy-d-4ec7I, reason: not valid java name */
    public static final Object m1600semanticsScrollByd4ec7I(ScrollingLogic scrollingLogic, long j, e02<? super Offset> e02Var) {
        ScrollableKt$semanticsScrollBy$1 scrollableKt$semanticsScrollBy$1;
        o07 o07Var;
        ScrollingLogic scrollingLogic2;
        if (e02Var instanceof ScrollableKt$semanticsScrollBy$1) {
            scrollableKt$semanticsScrollBy$1 = (ScrollableKt$semanticsScrollBy$1) e02Var;
            int i = scrollableKt$semanticsScrollBy$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                scrollableKt$semanticsScrollBy$1.label = i - Integer.MIN_VALUE;
            } else {
                scrollableKt$semanticsScrollBy$1 = new ScrollableKt$semanticsScrollBy$1(e02Var);
            }
        } else {
            scrollableKt$semanticsScrollBy$1 = new ScrollableKt$semanticsScrollBy$1(e02Var);
        }
        Object obj = scrollableKt$semanticsScrollBy$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = scrollableKt$semanticsScrollBy$1.label;
        if (i2 == 0) {
            r57.b(obj);
            o07Var = new o07();
            MutatePriority mutatePriority = MutatePriority.Default;
            ScrollableKt$semanticsScrollBy$2 scrollableKt$semanticsScrollBy$2 = new ScrollableKt$semanticsScrollBy$2(scrollingLogic, j, o07Var, null);
            scrollableKt$semanticsScrollBy$1.L$0 = scrollingLogic;
            scrollableKt$semanticsScrollBy$1.L$1 = o07Var;
            scrollableKt$semanticsScrollBy$1.label = 1;
            if (scrollingLogic.scroll(mutatePriority, scrollableKt$semanticsScrollBy$2, scrollableKt$semanticsScrollBy$1) == a32Var) {
                return a32Var;
            }
            scrollingLogic2 = scrollingLogic;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            o07 o07Var2 = (o07) scrollableKt$semanticsScrollBy$1.L$1;
            ScrollingLogic scrollingLogic3 = (ScrollingLogic) scrollableKt$semanticsScrollBy$1.L$0;
            r57.b(obj);
            o07Var = o07Var2;
            scrollingLogic2 = scrollingLogic3;
        }
        return Offset.m5976boximpl(scrollingLogic2.m1620toOffsettuRUvjQ(o07Var.b));
    }

    public static final Modifier scrollable(Modifier modifier, ScrollableState scrollableState, Orientation orientation, boolean z, boolean z2, FlingBehavior flingBehavior, MutableInteractionSource mutableInteractionSource) {
        return scrollable$default(modifier, scrollableState, orientation, null, z, z2, flingBehavior, mutableInteractionSource, null, 128, null);
    }

    public static /* synthetic */ Modifier scrollable$default(Modifier modifier, ScrollableState scrollableState, Orientation orientation, boolean z, boolean z2, FlingBehavior flingBehavior, MutableInteractionSource mutableInteractionSource, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        boolean z3 = z;
        if ((i & 8) != 0) {
            z2 = false;
        }
        return scrollable(modifier, scrollableState, orientation, z3, z2, (i & 16) != 0 ? null : flingBehavior, (i & 32) != 0 ? null : mutableInteractionSource);
    }
}
