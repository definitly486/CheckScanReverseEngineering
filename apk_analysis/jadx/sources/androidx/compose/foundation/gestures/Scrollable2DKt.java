package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.Velocity;
import defpackage.a32;
import defpackage.ah;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.q07;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
public final class Scrollable2DKt {
    private static final Scroll2DScope NoOpScrollScope = new Scroll2DScope() { // from class: androidx.compose.foundation.gestures.Scrollable2DKt$NoOpScrollScope$1
        @Override // androidx.compose.foundation.gestures.Scroll2DScope
        /* JADX INFO: renamed from: scrollBy-MK-Hz9U */
        public long mo1475scrollByMKHz9U(long j) {
            return j;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getAngle-TH1AsA0, reason: not valid java name */
    public static final float m1595getAngleTH1AsA0(long j) {
        return (float) Math.atan2(Velocity.m9281getYimpl(j), Velocity.m9280getXimpl(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getMagnitude-TH1AsA0, reason: not valid java name */
    public static final float m1596getMagnitudeTH1AsA0(long j) {
        return (float) Math.sqrt(((float) Math.pow(Velocity.m9280getXimpl(j), 2.0d)) + ((float) Math.pow(Velocity.m9281getYimpl(j), 2.0d)));
    }

    public static final Modifier scrollable2D(Modifier modifier, Scrollable2DState scrollable2DState, boolean z, OverscrollEffect overscrollEffect, FlingBehavior flingBehavior, MutableInteractionSource mutableInteractionSource) {
        return modifier.then(new Scrollable2DElement(scrollable2DState, overscrollEffect, z, flingBehavior, mutableInteractionSource));
    }

    public static /* synthetic */ Modifier scrollable2D$default(Modifier modifier, Scrollable2DState scrollable2DState, boolean z, OverscrollEffect overscrollEffect, FlingBehavior flingBehavior, MutableInteractionSource mutableInteractionSource, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return scrollable2D(modifier, scrollable2DState, z, (i & 4) != 0 ? null : overscrollEffect, (i & 8) != 0 ? null : flingBehavior, (i & 16) != 0 ? null : mutableInteractionSource);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX INFO: renamed from: semanticsScrollBy-d-4ec7I, reason: not valid java name */
    public static final Object m1597semanticsScrollByd4ec7I(ScrollingLogic2D scrollingLogic2D, long j, e02<? super Offset> e02Var) {
        Scrollable2DKt$semanticsScrollBy$1 scrollable2DKt$semanticsScrollBy$1;
        q07 q07Var;
        if (e02Var instanceof Scrollable2DKt$semanticsScrollBy$1) {
            scrollable2DKt$semanticsScrollBy$1 = (Scrollable2DKt$semanticsScrollBy$1) e02Var;
            int i = scrollable2DKt$semanticsScrollBy$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                scrollable2DKt$semanticsScrollBy$1.label = i - Integer.MIN_VALUE;
            } else {
                scrollable2DKt$semanticsScrollBy$1 = new Scrollable2DKt$semanticsScrollBy$1(e02Var);
            }
        } else {
            scrollable2DKt$semanticsScrollBy$1 = new Scrollable2DKt$semanticsScrollBy$1(e02Var);
        }
        Object obj = scrollable2DKt$semanticsScrollBy$1.result;
        Object obj2 = a32.COROUTINE_SUSPENDED;
        int i2 = scrollable2DKt$semanticsScrollBy$1.label;
        if (i2 == 0) {
            r57.b(obj);
            q07 q07Var2 = new q07();
            q07Var2.b = Offset.Companion.m6003getZeroF1C5BW0();
            MutatePriority mutatePriority = MutatePriority.Default;
            bm3<? super NestedScrollScope, ? super e02<? super j59>, ? extends Object> scrollable2DKt$semanticsScrollBy$2 = new Scrollable2DKt$semanticsScrollBy$2(j, q07Var2, null);
            scrollable2DKt$semanticsScrollBy$1.L$0 = q07Var2;
            scrollable2DKt$semanticsScrollBy$1.label = 1;
            if (scrollingLogic2D.scroll(mutatePriority, scrollable2DKt$semanticsScrollBy$2, scrollable2DKt$semanticsScrollBy$1) == obj2) {
                return obj2;
            }
            q07Var = q07Var2;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            q07Var = (q07) scrollable2DKt$semanticsScrollBy$1.L$0;
            r57.b(obj);
        }
        return Offset.m5976boximpl(q07Var.b);
    }
}
