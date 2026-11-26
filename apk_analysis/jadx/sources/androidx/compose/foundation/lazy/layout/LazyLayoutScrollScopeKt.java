package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.ui.unit.Dp;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.n07;
import defpackage.o07;
import defpackage.p07;
import defpackage.r07;

/* JADX INFO: loaded from: classes.dex */
public final class LazyLayoutScrollScopeKt {
    private static final boolean DEBUG = false;
    private static final float TargetDistance = Dp.m9042constructorimpl(2500.0f);
    private static final float BoundDistance = Dp.m9042constructorimpl(1500.0f);
    private static final float MinimumDistance = Dp.m9042constructorimpl(50.0f);

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.layout.LazyLayoutScrollScopeKt$animateScrollToItem$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.lazy.layout.LazyLayoutScrollScopeKt", f = "LazyLayoutScrollScope.kt", l = {177, 264}, m = "animateScrollToItem", v = 1)
    public static final class AnonymousClass1 extends f02 {
        float F$0;
        float F$1;
        float F$2;
        int I$0;
        int I$1;
        int I$2;
        int I$3;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LazyLayoutScrollScopeKt.animateScrollToItem(null, 0, 0, 0, null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00e4 A[Catch: ItemFoundInScroll -> 0x01e4, TryCatch #2 {ItemFoundInScroll -> 0x01e4, blocks: (B:32:0x00e0, B:34:0x00e4, B:36:0x00ea, B:50:0x0117, B:54:0x0154, B:58:0x015c), top: B:106:0x00e0 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:43:0x0107  */
    /* JADX WARN: Code duplicated, block: B:47:0x0112 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:48:0x0114  */
    /* JADX WARN: Code duplicated, block: B:49:0x0116  */
    /* JADX WARN: Code duplicated, block: B:52:0x0151  */
    /* JADX WARN: Code duplicated, block: B:53:0x0153  */
    /* JADX WARN: Code duplicated, block: B:56:0x0157  */
    /* JADX WARN: Code duplicated, block: B:57:0x015a  */
    /* JADX WARN: Code duplicated, block: B:67:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v4, types: [T, androidx.compose.animation.core.AnimationState] */
    /* JADX WARN: Type inference failed for: r8v2, types: [T, androidx.compose.animation.core.AnimationState] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x01ae -> B:110:0x01b9). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object animateScrollToItem(androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope r37, int r38, int r39, int r40, androidx.compose.ui.unit.Density r41, defpackage.e02<? super defpackage.j59> r42) {
        /*
            Method dump skipped, instruction units count: 638
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.layout.LazyLayoutScrollScopeKt.animateScrollToItem(androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope, int, int, int, androidx.compose.ui.unit.Density, e02):java.lang.Object");
    }

    private static final boolean animateScrollToItem$isOvershot(boolean z, LazyLayoutScrollScope lazyLayoutScrollScope, int i, int i2) {
        if (z) {
            if (lazyLayoutScrollScope.getFirstVisibleItemIndex() > i) {
                return true;
            }
            return lazyLayoutScrollScope.getFirstVisibleItemIndex() == i && lazyLayoutScrollScope.getFirstVisibleItemScrollOffset() > i2;
        }
        if (lazyLayoutScrollScope.getFirstVisibleItemIndex() < i) {
            return true;
        }
        return lazyLayoutScrollScope.getFirstVisibleItemIndex() == i && lazyLayoutScrollScope.getFirstVisibleItemScrollOffset() < i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:9:0x001c A[PHI: r0
      0x001c: PHI (r0v11 float) = (r0v5 float), (r0v14 float) binds: [B:11:0x002a, B:7:0x0019] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    public static final j59 animateScrollToItem$lambda$5(LazyLayoutScrollScope lazyLayoutScrollScope, int i, float f, o07 o07Var, n07 n07Var, boolean z, float f2, p07 p07Var, int i2, int i3, r07 r07Var, AnimationScope animationScope) {
        float fFloatValue;
        if (!isItemVisible(lazyLayoutScrollScope, i)) {
            if (f > 0.0f) {
                fFloatValue = ((Number) animationScope.getValue()).floatValue();
                if (fFloatValue <= f) {
                    f = fFloatValue;
                }
            } else {
                fFloatValue = ((Number) animationScope.getValue()).floatValue();
                if (fFloatValue >= f) {
                    f = fFloatValue;
                }
            }
            float f3 = f - o07Var.b;
            float fScrollBy = lazyLayoutScrollScope.scrollBy(f3);
            if (!isItemVisible(lazyLayoutScrollScope, i) && !animateScrollToItem$isOvershot(z, lazyLayoutScrollScope, i, i3)) {
                if (f3 != fScrollBy) {
                    animationScope.cancelAnimation();
                    n07Var.b = false;
                    return j59.a;
                }
                o07Var.b += f3;
                if (z) {
                    if (((Number) animationScope.getValue()).floatValue() > f2) {
                        animationScope.cancelAnimation();
                    }
                } else if (((Number) animationScope.getValue()).floatValue() < (-f2)) {
                    animationScope.cancelAnimation();
                }
                if (z) {
                    if (p07Var.b >= 2 && i - lazyLayoutScrollScope.getLastVisibleItemIndex() > i2) {
                        lazyLayoutScrollScope.snapToItem(i - i2, 0);
                    }
                } else if (p07Var.b >= 2 && lazyLayoutScrollScope.getFirstVisibleItemIndex() - i > i2) {
                    lazyLayoutScrollScope.snapToItem(i2 + i, 0);
                }
            }
        }
        if (!animateScrollToItem$isOvershot(z, lazyLayoutScrollScope, i, i3)) {
            if (isItemVisible(lazyLayoutScrollScope, i)) {
                throw new ItemFoundInScroll(LazyLayoutScrollScope.calculateDistanceTo$default(lazyLayoutScrollScope, i, 0, 2, null), (AnimationState) r07Var.b);
            }
            return j59.a;
        }
        lazyLayoutScrollScope.snapToItem(i, i3);
        n07Var.b = false;
        animationScope.cancelAnimation();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014 A[PHI: r0
      0x0014: PHI (r0v6 float) = (r0v3 float), (r0v9 float) binds: [B:12:0x0027, B:5:0x0011] A[DONT_GENERATE, DONT_INLINE]] */
    public static final j59 animateScrollToItem$lambda$7(float f, o07 o07Var, LazyLayoutScrollScope lazyLayoutScrollScope, AnimationScope animationScope) {
        float fFloatValue;
        float f2 = 0.0f;
        if (f > 0.0f) {
            fFloatValue = ((Number) animationScope.getValue()).floatValue();
            if (fFloatValue <= f) {
                f = fFloatValue;
            }
            f2 = f;
        } else if (f < 0.0f) {
            fFloatValue = ((Number) animationScope.getValue()).floatValue();
            if (fFloatValue >= f) {
                f = fFloatValue;
            }
            f2 = f;
        }
        float f3 = f2 - o07Var.b;
        if (f3 != lazyLayoutScrollScope.scrollBy(f3) || f2 != ((Number) animationScope.getValue()).floatValue()) {
            animationScope.cancelAnimation();
        }
        o07Var.b += f3;
        return j59.a;
    }

    private static final void debugLog(ll3<String> ll3Var) {
    }

    public static final boolean isItemVisible(LazyLayoutScrollScope lazyLayoutScrollScope, int i) {
        return i <= lazyLayoutScrollScope.getLastVisibleItemIndex() && lazyLayoutScrollScope.getFirstVisibleItemIndex() <= i;
    }
}
