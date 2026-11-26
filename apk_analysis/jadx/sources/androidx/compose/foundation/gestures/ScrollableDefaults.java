package androidx.compose.foundation.gestures;

import androidx.compose.foundation.AndroidOverscroll_androidKt;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.Velocity;
import defpackage.a32;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
public final class ScrollableDefaults {
    public static final int $stable = 0;
    public static final ScrollableDefaults INSTANCE = new ScrollableDefaults();

    public static final class NoOpOverscrollEffect implements OverscrollEffect {
        public static final NoOpOverscrollEffect INSTANCE = new NoOpOverscrollEffect();

        private NoOpOverscrollEffect() {
        }

        @Override // androidx.compose.foundation.OverscrollEffect
        /* JADX INFO: renamed from: applyToFling-BMRW4eQ */
        public Object mo1267applyToFlingBMRW4eQ(long j, bm3<? super Velocity, ? super e02<? super Velocity>, ? extends Object> bm3Var, e02<? super j59> e02Var) {
            Object objInvoke = bm3Var.invoke(Velocity.m9271boximpl(j), e02Var);
            return objInvoke == a32.COROUTINE_SUSPENDED ? objInvoke : j59.a;
        }

        @Override // androidx.compose.foundation.OverscrollEffect
        /* JADX INFO: renamed from: applyToScroll-Rhakbz0 */
        public long mo1268applyToScrollRhakbz0(long j, int i, nl3<? super Offset, Offset> nl3Var) {
            return nl3Var.invoke(Offset.m5976boximpl(j)).m5997unboximpl();
        }

        @Override // androidx.compose.foundation.OverscrollEffect
        public DelegatableNode getNode() {
            return new Modifier.Node() { // from class: androidx.compose.foundation.gestures.ScrollableDefaults$NoOpOverscrollEffect$node$1
            };
        }

        @Override // androidx.compose.foundation.OverscrollEffect
        public boolean isInProgress() {
            return false;
        }
    }

    private ScrollableDefaults() {
    }

    public final FlingBehavior flingBehavior(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1107739818, i, -1, "androidx.compose.foundation.gestures.ScrollableDefaults.flingBehavior (Scrollable.kt:622)");
        }
        FlingBehavior flingBehaviorRememberPlatformDefaultFlingBehavior = Scrollable_androidKt.rememberPlatformDefaultFlingBehavior(composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return flingBehaviorRememberPlatformDefaultFlingBehavior;
    }

    @ul2
    public final OverscrollEffect overscrollEffect(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1809802212, i, -1, "androidx.compose.foundation.gestures.ScrollableDefaults.overscrollEffect (Scrollable.kt:639)");
        }
        OverscrollEffect overscrollEffectRememberPlatformOverscrollEffect = AndroidOverscroll_androidKt.rememberPlatformOverscrollEffect(composer, 0);
        if (overscrollEffectRememberPlatformOverscrollEffect == null) {
            overscrollEffectRememberPlatformOverscrollEffect = NoOpOverscrollEffect.INSTANCE;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return overscrollEffectRememberPlatformOverscrollEffect;
    }

    public final boolean reverseDirection(LayoutDirection layoutDirection, Orientation orientation, boolean z) {
        return (layoutDirection != LayoutDirection.Rtl || orientation == Orientation.Vertical) ? !z : z;
    }
}
