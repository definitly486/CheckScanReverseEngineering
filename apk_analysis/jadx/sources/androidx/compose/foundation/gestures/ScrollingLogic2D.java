package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.q07;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
final class ScrollingLogic2D implements ScrollLogic {
    private FlingBehavior flingBehavior;
    private boolean isFlinging;
    private final ll3<Boolean> isScrollableNodeAttached;
    private NestedScrollDispatcher nestedScrollDispatcher;
    private OverscrollEffect overscrollEffect;
    private Scrollable2DState scrollableState;
    private int latestScrollSource = NestedScrollSource.Companion.m7438getUserInputWNlRxjI();
    private Scroll2DScope outerStateScope = Scrollable2DKt.NoOpScrollScope;
    private final ScrollingLogic2D$nestedScrollScope$1 nestedScrollScope = new NestedScrollScope() { // from class: androidx.compose.foundation.gestures.ScrollingLogic2D$nestedScrollScope$1
        @Override // androidx.compose.foundation.gestures.NestedScrollScope
        /* JADX INFO: renamed from: scrollBy-OzD1aCk */
        public long mo1559scrollByOzD1aCk(long j, int i) {
            return this.this$0.m1626performScroll3eAAhYA(this.this$0.outerStateScope, j, i);
        }

        @Override // androidx.compose.foundation.gestures.NestedScrollScope
        /* JADX INFO: renamed from: scrollByWithOverscroll-OzD1aCk */
        public long mo1560scrollByWithOverscrollOzD1aCk(long j, int i) {
            this.this$0.latestScrollSource = i;
            OverscrollEffect overscrollEffect = this.this$0.overscrollEffect;
            if (overscrollEffect != null && this.this$0.m1629shouldDispatchOverscrollk4lQ0M(j)) {
                return overscrollEffect.mo1268applyToScrollRhakbz0(j, this.this$0.latestScrollSource, this.this$0.performScrollForOverscroll);
            }
            return this.this$0.m1626performScroll3eAAhYA(this.this$0.outerStateScope, j, i);
        }
    };
    private final nl3<Offset, Offset> performScrollForOverscroll = new nl3() { // from class: androidx.compose.foundation.gestures.z
        @Override // defpackage.nl3
        public final Object invoke(Object obj) {
            return ScrollingLogic2D.performScrollForOverscroll$lambda$0(this.b, (Offset) obj);
        }
    };

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.ScrollingLogic2D$scroll$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.ScrollingLogic2D$scroll$2", f = "Scrollable2D.kt", l = {484}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<Scroll2DScope, e02<? super j59>, Object> {
        final /* synthetic */ bm3<NestedScrollScope, e02<? super j59>, Object> $block;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(bm3<? super NestedScrollScope, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$block = bm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = ScrollingLogic2D.this.new AnonymousClass2(this.$block, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(Scroll2DScope scroll2DScope, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(scroll2DScope, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                ScrollingLogic2D.this.outerStateScope = (Scroll2DScope) this.L$0;
                bm3<NestedScrollScope, e02<? super j59>, Object> bm3Var = this.$block;
                ScrollingLogic2D$nestedScrollScope$1 scrollingLogic2D$nestedScrollScope$1 = ScrollingLogic2D.this.nestedScrollScope;
                this.label = 1;
                if (bm3Var.invoke(scrollingLogic2D$nestedScrollScope$1, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [androidx.compose.foundation.gestures.ScrollingLogic2D$nestedScrollScope$1] */
    public ScrollingLogic2D(Scrollable2DState scrollable2DState, OverscrollEffect overscrollEffect, FlingBehavior flingBehavior, NestedScrollDispatcher nestedScrollDispatcher, ll3<Boolean> ll3Var) {
        this.scrollableState = scrollable2DState;
        this.overscrollEffect = overscrollEffect;
        this.flingBehavior = flingBehavior;
        this.nestedScrollDispatcher = nestedScrollDispatcher;
        this.isScrollableNodeAttached = ll3Var;
    }

    /* JADX INFO: renamed from: dispatchRawDelta-MK-Hz9U, reason: not valid java name */
    private final long m1625dispatchRawDeltaMKHz9U(long j) {
        return this.scrollableState.mo1474dispatchRawDeltaMKHz9U(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long doFlingAnimation_QWom1Mo$toDecomposedOffset(float f, long j) {
        if (Float.isNaN(Scrollable2DKt.m1595getAngleTH1AsA0(j))) {
            return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(0.0f)) << 32) | (((long) Float.floatToRawIntBits(f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        float fSignum = Math.signum(Velocity.m9280getXimpl(j)) * Math.abs(((float) Math.cos(Scrollable2DKt.m1595getAngleTH1AsA0(j))) * f);
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Math.signum(Velocity.m9281getYimpl(j)) * Math.abs(((float) Math.sin(Scrollable2DKt.m1595getAngleTH1AsA0(j))) * f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fSignum) << 32));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long doFlingAnimation_QWom1Mo$toDecomposedVelocity(float f, long j) {
        if (Float.isNaN(Scrollable2DKt.m1595getAngleTH1AsA0(j))) {
            return VelocityKt.Velocity(0.0f, f);
        }
        return VelocityKt.Velocity(Math.signum(Velocity.m9280getXimpl(j)) * Math.abs(((float) Math.cos(Scrollable2DKt.m1595getAngleTH1AsA0(j))) * f), Math.signum(Velocity.m9281getYimpl(j)) * Math.abs(((float) Math.sin(Scrollable2DKt.m1595getAngleTH1AsA0(j))) * f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float doFlingAnimation_QWom1Mo$toMagnitudeFloat(long j) {
        return (float) Math.sqrt(((float) Math.pow(Float.intBitsToFloat((int) (j >> 32)), 2.0d)) + ((float) Math.pow(Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), 2.0d)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: performScroll-3eAAhYA, reason: not valid java name */
    public final long m1626performScroll3eAAhYA(Scroll2DScope scroll2DScope, long j, int i) {
        long jM7422dispatchPreScrollOzD1aCk = this.nestedScrollDispatcher.m7422dispatchPreScrollOzD1aCk(j, i);
        long jM5991minusMKHz9U = Offset.m5991minusMKHz9U(j, jM7422dispatchPreScrollOzD1aCk);
        long jMo1475scrollByMKHz9U = scroll2DScope.mo1475scrollByMKHz9U(jM5991minusMKHz9U);
        return Offset.m5992plusMKHz9U(Offset.m5992plusMKHz9U(jM7422dispatchPreScrollOzD1aCk, jMo1475scrollByMKHz9U), this.nestedScrollDispatcher.m7420dispatchPostScrollDzOQY0M(jMo1475scrollByMKHz9U, Offset.m5991minusMKHz9U(jM5991minusMKHz9U, jMo1475scrollByMKHz9U), i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Offset performScrollForOverscroll$lambda$0(ScrollingLogic2D scrollingLogic2D, Offset offset) {
        return Offset.m5976boximpl(scrollingLogic2D.m1626performScroll3eAAhYA(scrollingLogic2D.outerStateScope, offset.m5997unboximpl(), scrollingLogic2D.latestScrollSource));
    }

    public static /* synthetic */ Object scroll$default(ScrollingLogic2D scrollingLogic2D, MutatePriority mutatePriority, bm3 bm3Var, e02 e02Var, int i, Object obj) {
        if ((i & 1) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return scrollingLogic2D.scroll(mutatePriority, bm3Var, e02Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.foundation.gestures.ScrollLogic
    /* JADX INFO: renamed from: doFlingAnimation-QWom1Mo */
    public Object mo1590doFlingAnimationQWom1Mo(long j, e02<? super Velocity> e02Var) throws Throwable {
        ScrollingLogic2D$doFlingAnimation$1 scrollingLogic2D$doFlingAnimation$1;
        ScrollingLogic2D scrollingLogic2D;
        Throwable th;
        q07 q07Var;
        if (e02Var instanceof ScrollingLogic2D$doFlingAnimation$1) {
            scrollingLogic2D$doFlingAnimation$1 = (ScrollingLogic2D$doFlingAnimation$1) e02Var;
            int i = scrollingLogic2D$doFlingAnimation$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                scrollingLogic2D$doFlingAnimation$1.label = i - Integer.MIN_VALUE;
            } else {
                scrollingLogic2D$doFlingAnimation$1 = new ScrollingLogic2D$doFlingAnimation$1(this, e02Var);
            }
        } else {
            scrollingLogic2D$doFlingAnimation$1 = new ScrollingLogic2D$doFlingAnimation$1(this, e02Var);
        }
        Object obj = scrollingLogic2D$doFlingAnimation$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = scrollingLogic2D$doFlingAnimation$1.label;
        if (i2 != 0) {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            q07Var = (q07) scrollingLogic2D$doFlingAnimation$1.L$0;
            try {
                r57.b(obj);
                scrollingLogic2D = this;
                scrollingLogic2D.isFlinging = false;
                return Velocity.m9271boximpl(q07Var.b);
            } catch (Throwable th2) {
                th = th2;
                scrollingLogic2D = this;
                scrollingLogic2D.isFlinging = false;
                throw th;
            }
        }
        r57.b(obj);
        q07 q07Var2 = new q07();
        q07Var2.b = j;
        this.isFlinging = true;
        try {
            MutatePriority mutatePriority = MutatePriority.Default;
            scrollingLogic2D = this;
            try {
                ScrollingLogic2D$doFlingAnimation$2 scrollingLogic2D$doFlingAnimation$2 = new ScrollingLogic2D$doFlingAnimation$2(scrollingLogic2D, j, q07Var2, null);
                scrollingLogic2D$doFlingAnimation$1.L$0 = q07Var2;
                scrollingLogic2D$doFlingAnimation$1.label = 1;
                if (scrollingLogic2D.scroll(mutatePriority, scrollingLogic2D$doFlingAnimation$2, scrollingLogic2D$doFlingAnimation$1) == a32Var) {
                    return a32Var;
                }
                q07Var = q07Var2;
                scrollingLogic2D.isFlinging = false;
                return Velocity.m9271boximpl(q07Var.b);
            } catch (Throwable th3) {
                th = th3;
                th = th;
                scrollingLogic2D.isFlinging = false;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            scrollingLogic2D = this;
        }
    }

    public final Scrollable2DState getScrollableState() {
        return this.scrollableState;
    }

    @Override // androidx.compose.foundation.gestures.ScrollLogic
    public boolean isFlinging() {
        return this.isFlinging;
    }

    /* JADX INFO: renamed from: onScrollStopped-sF-c-tU, reason: not valid java name */
    public final Object m1627onScrollStoppedsFctU(long j, e02<? super j59> e02Var) {
        ScrollingLogic2D$onScrollStopped$performFling$1 scrollingLogic2D$onScrollStopped$performFling$1 = new ScrollingLogic2D$onScrollStopped$performFling$1(this, null);
        OverscrollEffect overscrollEffect = this.overscrollEffect;
        if (overscrollEffect == null || !m1628shouldDispatchOverscrollTH1AsA0(j)) {
            Object objInvoke = scrollingLogic2D$onScrollStopped$performFling$1.invoke(Velocity.m9271boximpl(j), e02Var);
            return objInvoke == a32.COROUTINE_SUSPENDED ? objInvoke : j59.a;
        }
        Object objMo1267applyToFlingBMRW4eQ = overscrollEffect.mo1267applyToFlingBMRW4eQ(j, scrollingLogic2D$onScrollStopped$performFling$1, e02Var);
        return objMo1267applyToFlingBMRW4eQ == a32.COROUTINE_SUSPENDED ? objMo1267applyToFlingBMRW4eQ : j59.a;
    }

    @Override // androidx.compose.foundation.gestures.ScrollLogic
    /* JADX INFO: renamed from: performRawScroll-MK-Hz9U */
    public long mo1591performRawScrollMKHz9U(long j) {
        return this.scrollableState.isScrollInProgress() ? Offset.Companion.m6003getZeroF1C5BW0() : m1625dispatchRawDeltaMKHz9U(j);
    }

    public final Object scroll(MutatePriority mutatePriority, bm3<? super NestedScrollScope, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super j59> e02Var) {
        Object objScroll = this.scrollableState.scroll(mutatePriority, new AnonymousClass2(bm3Var, null), e02Var);
        return objScroll == a32.COROUTINE_SUSPENDED ? objScroll : j59.a;
    }

    public final void setScrollableState(Scrollable2DState scrollable2DState) {
        this.scrollableState = scrollable2DState;
    }

    /* JADX INFO: renamed from: shouldDispatchOverscroll-TH1AsA0, reason: not valid java name */
    public final boolean m1628shouldDispatchOverscrollTH1AsA0(long j) {
        Scrollable2DState scrollable2DState = this.scrollableState;
        float fM9280getXimpl = Velocity.m9280getXimpl(j);
        return scrollable2DState.mo1473canScrollk4lQ0M(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Velocity.m9281getYimpl(j))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fM9280getXimpl) << 32)));
    }

    /* JADX INFO: renamed from: shouldDispatchOverscroll-k-4lQ0M, reason: not valid java name */
    public final boolean m1629shouldDispatchOverscrollk4lQ0M(long j) {
        return this.scrollableState.mo1473canScrollk4lQ0M(j);
    }

    public final boolean shouldScrollImmediately() {
        if (this.scrollableState.isScrollInProgress()) {
            return true;
        }
        OverscrollEffect overscrollEffect = this.overscrollEffect;
        return overscrollEffect != null ? overscrollEffect.isInProgress() : false;
    }

    public final boolean update(Scrollable2DState scrollable2DState, OverscrollEffect overscrollEffect, FlingBehavior flingBehavior, NestedScrollDispatcher nestedScrollDispatcher) {
        boolean z;
        if (aa4.e(this.scrollableState, scrollable2DState)) {
            z = false;
        } else {
            this.scrollableState = scrollable2DState;
            z = true;
        }
        this.overscrollEffect = overscrollEffect;
        this.flingBehavior = flingBehavior;
        this.nestedScrollDispatcher = nestedScrollDispatcher;
        return z;
    }
}
