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
import defpackage.ry2;

/* JADX INFO: loaded from: classes.dex */
public final class ScrollingLogic implements ScrollLogic {
    public static final int $stable = 8;
    private FlingBehavior flingBehavior;
    private boolean isFlinging;
    private final ll3<Boolean> isScrollableNodeAttached;
    private NestedScrollDispatcher nestedScrollDispatcher;
    private OnScrollChangedDispatcher onScrollChangedDispatcher;
    private Orientation orientation;
    private OverscrollEffect overscrollEffect;
    private boolean reverseDirection;
    private ScrollableState scrollableState;
    private int latestScrollSource = NestedScrollSource.Companion.m7438getUserInputWNlRxjI();
    private ScrollScope outerStateScope = ScrollableKt.NoOpScrollScope;
    private final ScrollingLogic$nestedScrollScope$1 nestedScrollScope = new NestedScrollScope() { // from class: androidx.compose.foundation.gestures.ScrollingLogic$nestedScrollScope$1
        @Override // androidx.compose.foundation.gestures.NestedScrollScope
        /* JADX INFO: renamed from: scrollBy-OzD1aCk */
        public long mo1559scrollByOzD1aCk(long j, int i) {
            return this.this$0.m1612performScroll3eAAhYA(this.this$0.outerStateScope, j, i);
        }

        @Override // androidx.compose.foundation.gestures.NestedScrollScope
        /* JADX INFO: renamed from: scrollByWithOverscroll-OzD1aCk */
        public long mo1560scrollByWithOverscrollOzD1aCk(long j, int i) {
            this.this$0.latestScrollSource = i;
            OverscrollEffect overscrollEffect = this.this$0.overscrollEffect;
            if (overscrollEffect != null && this.this$0.getShouldDispatchOverscroll()) {
                return overscrollEffect.mo1268applyToScrollRhakbz0(j, this.this$0.latestScrollSource, this.this$0.performScrollForOverscroll);
            }
            return this.this$0.m1612performScroll3eAAhYA(this.this$0.outerStateScope, j, i);
        }
    };
    private final nl3<Offset, Offset> performScrollForOverscroll = new ry2(this, 3);

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.ScrollingLogic$scroll$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.ScrollingLogic$scroll$2", f = "Scrollable.kt", l = {945}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<ScrollScope, e02<? super j59>, Object> {
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
            AnonymousClass2 anonymousClass2 = ScrollingLogic.this.new AnonymousClass2(this.$block, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(ScrollScope scrollScope, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(scrollScope, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                ScrollingLogic.this.outerStateScope = (ScrollScope) this.L$0;
                bm3<NestedScrollScope, e02<? super j59>, Object> bm3Var = this.$block;
                ScrollingLogic$nestedScrollScope$1 scrollingLogic$nestedScrollScope$1 = ScrollingLogic.this.nestedScrollScope;
                this.label = 1;
                if (bm3Var.invoke(scrollingLogic$nestedScrollScope$1, this) == a32Var) {
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

    /* JADX WARN: Type inference failed for: r1v4, types: [androidx.compose.foundation.gestures.ScrollingLogic$nestedScrollScope$1] */
    public ScrollingLogic(ScrollableState scrollableState, OverscrollEffect overscrollEffect, FlingBehavior flingBehavior, Orientation orientation, boolean z, NestedScrollDispatcher nestedScrollDispatcher, OnScrollChangedDispatcher onScrollChangedDispatcher, ll3<Boolean> ll3Var) {
        this.scrollableState = scrollableState;
        this.overscrollEffect = overscrollEffect;
        this.flingBehavior = flingBehavior;
        this.orientation = orientation;
        this.reverseDirection = z;
        this.nestedScrollDispatcher = nestedScrollDispatcher;
        this.onScrollChangedDispatcher = onScrollChangedDispatcher;
        this.isScrollableNodeAttached = ll3Var;
    }

    /* JADX INFO: renamed from: dispatchRawDelta-MK-Hz9U, reason: not valid java name */
    private final long m1611dispatchRawDeltaMKHz9U(long j) {
        return m1620toOffsettuRUvjQ(reverseIfNeeded(this.scrollableState.dispatchRawDelta(reverseIfNeeded(m1619toFloatk4lQ0M(j)))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getShouldDispatchOverscroll() {
        return this.scrollableState.getCanScrollForward() || this.scrollableState.getCanScrollBackward();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: performScroll-3eAAhYA, reason: not valid java name */
    public final long m1612performScroll3eAAhYA(ScrollScope scrollScope, long j, int i) {
        long jM7422dispatchPreScrollOzD1aCk = this.nestedScrollDispatcher.m7422dispatchPreScrollOzD1aCk(j, i);
        long jM5991minusMKHz9U = Offset.m5991minusMKHz9U(j, jM7422dispatchPreScrollOzD1aCk);
        long jM1617reverseIfNeededMKHz9U = m1617reverseIfNeededMKHz9U(m1620toOffsettuRUvjQ(scrollScope.scrollBy(m1619toFloatk4lQ0M(m1617reverseIfNeededMKHz9U(m1618singleAxisOffsetMKHz9U(jM5991minusMKHz9U))))));
        this.onScrollChangedDispatcher.mo1562dispatchScrollDeltaInfok4lQ0M(jM1617reverseIfNeededMKHz9U);
        return Offset.m5992plusMKHz9U(Offset.m5992plusMKHz9U(jM7422dispatchPreScrollOzD1aCk, jM1617reverseIfNeededMKHz9U), this.nestedScrollDispatcher.m7420dispatchPostScrollDzOQY0M(jM1617reverseIfNeededMKHz9U, Offset.m5991minusMKHz9U(jM5991minusMKHz9U, jM1617reverseIfNeededMKHz9U), i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Offset performScrollForOverscroll$lambda$0(ScrollingLogic scrollingLogic, Offset offset) {
        return Offset.m5976boximpl(scrollingLogic.m1612performScroll3eAAhYA(scrollingLogic.outerStateScope, offset.m5997unboximpl(), scrollingLogic.latestScrollSource));
    }

    public static /* synthetic */ Object scroll$default(ScrollingLogic scrollingLogic, MutatePriority mutatePriority, bm3 bm3Var, e02 e02Var, int i, Object obj) {
        if ((i & 1) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return scrollingLogic.scroll(mutatePriority, bm3Var, e02Var);
    }

    /* JADX INFO: renamed from: singleAxisVelocity-AH228Gc, reason: not valid java name */
    private final long m1613singleAxisVelocityAH228Gc(long j) {
        return this.orientation == Orientation.Horizontal ? Velocity.m9276copyOhffZ5M$default(j, 0.0f, 0.0f, 1, null) : Velocity.m9276copyOhffZ5M$default(j, 0.0f, 0.0f, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: toFloat-TH1AsA0, reason: not valid java name */
    public final float m1614toFloatTH1AsA0(long j) {
        return this.orientation == Orientation.Horizontal ? Velocity.m9280getXimpl(j) : Velocity.m9281getYimpl(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: update-QWom1Mo, reason: not valid java name */
    public final long m1615updateQWom1Mo(long j, float f) {
        return this.orientation == Orientation.Horizontal ? Velocity.m9276copyOhffZ5M$default(j, f, 0.0f, 2, null) : Velocity.m9276copyOhffZ5M$default(j, 0.0f, f, 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.foundation.gestures.ScrollLogic
    /* JADX INFO: renamed from: doFlingAnimation-QWom1Mo */
    public Object mo1590doFlingAnimationQWom1Mo(long j, e02<? super Velocity> e02Var) throws Throwable {
        ScrollingLogic$doFlingAnimation$1 scrollingLogic$doFlingAnimation$1;
        ScrollingLogic scrollingLogic;
        Throwable th;
        q07 q07Var;
        if (e02Var instanceof ScrollingLogic$doFlingAnimation$1) {
            scrollingLogic$doFlingAnimation$1 = (ScrollingLogic$doFlingAnimation$1) e02Var;
            int i = scrollingLogic$doFlingAnimation$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                scrollingLogic$doFlingAnimation$1.label = i - Integer.MIN_VALUE;
            } else {
                scrollingLogic$doFlingAnimation$1 = new ScrollingLogic$doFlingAnimation$1(this, e02Var);
            }
        } else {
            scrollingLogic$doFlingAnimation$1 = new ScrollingLogic$doFlingAnimation$1(this, e02Var);
        }
        Object obj = scrollingLogic$doFlingAnimation$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = scrollingLogic$doFlingAnimation$1.label;
        if (i2 != 0) {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            q07Var = (q07) scrollingLogic$doFlingAnimation$1.L$0;
            try {
                r57.b(obj);
                scrollingLogic = this;
                scrollingLogic.isFlinging = false;
                return Velocity.m9271boximpl(q07Var.b);
            } catch (Throwable th2) {
                th = th2;
                scrollingLogic = this;
                scrollingLogic.isFlinging = false;
                throw th;
            }
        }
        r57.b(obj);
        q07 q07Var2 = new q07();
        q07Var2.b = j;
        this.isFlinging = true;
        try {
            MutatePriority mutatePriority = MutatePriority.Default;
            scrollingLogic = this;
            try {
                ScrollingLogic$doFlingAnimation$2 scrollingLogic$doFlingAnimation$2 = new ScrollingLogic$doFlingAnimation$2(scrollingLogic, q07Var2, j, null);
                scrollingLogic$doFlingAnimation$1.L$0 = q07Var2;
                scrollingLogic$doFlingAnimation$1.label = 1;
                if (scrollingLogic.scroll(mutatePriority, scrollingLogic$doFlingAnimation$2, scrollingLogic$doFlingAnimation$1) == a32Var) {
                    return a32Var;
                }
                q07Var = q07Var2;
                scrollingLogic.isFlinging = false;
                return Velocity.m9271boximpl(q07Var.b);
            } catch (Throwable th3) {
                th = th3;
                th = th;
                scrollingLogic.isFlinging = false;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            scrollingLogic = this;
        }
    }

    public final ScrollableState getScrollableState() {
        return this.scrollableState;
    }

    @Override // androidx.compose.foundation.gestures.ScrollLogic
    public boolean isFlinging() {
        return this.isFlinging;
    }

    public final boolean isVertical() {
        return this.orientation == Orientation.Vertical;
    }

    /* JADX INFO: renamed from: onScrollStopped-BMRW4eQ, reason: not valid java name */
    public final Object m1616onScrollStoppedBMRW4eQ(long j, boolean z, e02<? super j59> e02Var) {
        if (z && !ScrollableKt.getShouldBeTriggeredByMouseWheel(this.flingBehavior)) {
            return j59.a;
        }
        long jM1613singleAxisVelocityAH228Gc = m1613singleAxisVelocityAH228Gc(j);
        ScrollingLogic$onScrollStopped$performFling$1 scrollingLogic$onScrollStopped$performFling$1 = new ScrollingLogic$onScrollStopped$performFling$1(this, null);
        OverscrollEffect overscrollEffect = this.overscrollEffect;
        if (overscrollEffect == null || !getShouldDispatchOverscroll()) {
            Object objInvoke = scrollingLogic$onScrollStopped$performFling$1.invoke(Velocity.m9271boximpl(jM1613singleAxisVelocityAH228Gc), e02Var);
            return objInvoke == a32.COROUTINE_SUSPENDED ? objInvoke : j59.a;
        }
        Object objMo1267applyToFlingBMRW4eQ = overscrollEffect.mo1267applyToFlingBMRW4eQ(jM1613singleAxisVelocityAH228Gc, scrollingLogic$onScrollStopped$performFling$1, e02Var);
        return objMo1267applyToFlingBMRW4eQ == a32.COROUTINE_SUSPENDED ? objMo1267applyToFlingBMRW4eQ : j59.a;
    }

    @Override // androidx.compose.foundation.gestures.ScrollLogic
    /* JADX INFO: renamed from: performRawScroll-MK-Hz9U */
    public long mo1591performRawScrollMKHz9U(long j) {
        return this.scrollableState.isScrollInProgress() ? Offset.Companion.m6003getZeroF1C5BW0() : m1611dispatchRawDeltaMKHz9U(j);
    }

    public final float reverseIfNeeded(float f) {
        return this.reverseDirection ? f * (-1.0f) : f;
    }

    /* JADX INFO: renamed from: reverseIfNeeded-MK-Hz9U, reason: not valid java name */
    public final long m1617reverseIfNeededMKHz9U(long j) {
        return this.reverseDirection ? Offset.m5994timestuRUvjQ(j, -1.0f) : j;
    }

    public final Object scroll(MutatePriority mutatePriority, bm3<? super NestedScrollScope, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super j59> e02Var) {
        Object objScroll = this.scrollableState.scroll(mutatePriority, new AnonymousClass2(bm3Var, null), e02Var);
        return objScroll == a32.COROUTINE_SUSPENDED ? objScroll : j59.a;
    }

    public final void setScrollableState(ScrollableState scrollableState) {
        this.scrollableState = scrollableState;
    }

    public final boolean shouldScrollImmediately() {
        if (this.scrollableState.isScrollInProgress()) {
            return true;
        }
        OverscrollEffect overscrollEffect = this.overscrollEffect;
        return overscrollEffect != null ? overscrollEffect.isInProgress() : false;
    }

    /* JADX INFO: renamed from: singleAxisOffset-MK-Hz9U, reason: not valid java name */
    public final long m1618singleAxisOffsetMKHz9U(long j) {
        return this.orientation == Orientation.Horizontal ? Offset.m5981copydBAh8RU$default(j, 0.0f, 0.0f, 1, null) : Offset.m5981copydBAh8RU$default(j, 0.0f, 0.0f, 2, null);
    }

    /* JADX INFO: renamed from: toFloat-k-4lQ0M, reason: not valid java name */
    public final float m1619toFloatk4lQ0M(long j) {
        return Float.intBitsToFloat((int) (this.orientation == Orientation.Horizontal ? j >> 32 : j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: toOffset-tuRUvjQ, reason: not valid java name */
    public final long m1620toOffsettuRUvjQ(float f) {
        if (f == 0.0f) {
            return Offset.Companion.m6003getZeroF1C5BW0();
        }
        if (this.orientation == Orientation.Horizontal) {
            return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(0.0f) << 32));
    }

    /* JADX INFO: renamed from: toSingleAxisDeltaFromAngle-k-4lQ0M, reason: not valid java name */
    public final float m1621toSingleAxisDeltaFromAnglek4lQ0M(long j) {
        int i = (int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & j);
        int i2 = (int) (j >> 32);
        double dAtan2 = (float) Math.atan2(Math.abs(Float.intBitsToFloat(i)), Math.abs(Float.intBitsToFloat(i2)));
        Orientation orientation = this.orientation;
        if (dAtan2 >= 0.7853981633974483d) {
            if (orientation == Orientation.Vertical) {
                return Float.intBitsToFloat(i);
            }
            return 0.0f;
        }
        if (orientation == Orientation.Horizontal) {
            return Float.intBitsToFloat(i2);
        }
        return 0.0f;
    }

    /* JADX INFO: renamed from: toVelocity-adjELrA, reason: not valid java name */
    public final long m1622toVelocityadjELrA(float f) {
        if (f == 0.0f) {
            return Velocity.Companion.m9291getZero9UxMQ8M();
        }
        return this.orientation == Orientation.Horizontal ? VelocityKt.Velocity(f, 0.0f) : VelocityKt.Velocity(0.0f, f);
    }

    public final boolean update(ScrollableState scrollableState, Orientation orientation, OverscrollEffect overscrollEffect, boolean z, FlingBehavior flingBehavior, NestedScrollDispatcher nestedScrollDispatcher) {
        boolean z2;
        boolean z3 = true;
        if (aa4.e(this.scrollableState, scrollableState)) {
            z2 = false;
        } else {
            this.scrollableState = scrollableState;
            z2 = true;
        }
        this.overscrollEffect = overscrollEffect;
        if (this.orientation != orientation) {
            this.orientation = orientation;
            z2 = true;
        }
        if (this.reverseDirection != z) {
            this.reverseDirection = z;
        } else {
            z3 = z2;
        }
        this.flingBehavior = flingBehavior;
        this.nestedScrollDispatcher = nestedScrollDispatcher;
        return z3;
    }
}
