package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.q07;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2", f = "Scrollable.kt", l = {921}, m = "invokeSuspend", v = 1)
public final class ScrollingLogic$doFlingAnimation$2 extends pg8 implements bm3<NestedScrollScope, e02<? super j59>, Object> {
    final /* synthetic */ long $available;
    final /* synthetic */ q07 $result;
    long J$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ ScrollingLogic this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollingLogic$doFlingAnimation$2(ScrollingLogic scrollingLogic, q07 q07Var, long j, e02<? super ScrollingLogic$doFlingAnimation$2> e02Var) {
        super(2, e02Var);
        this.this$0 = scrollingLogic;
        this.$result = q07Var;
        this.$available = j;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        ScrollingLogic$doFlingAnimation$2 scrollingLogic$doFlingAnimation$2 = new ScrollingLogic$doFlingAnimation$2(this.this$0, this.$result, this.$available, e02Var);
        scrollingLogic$doFlingAnimation$2.L$0 = obj;
        return scrollingLogic$doFlingAnimation$2;
    }

    @Override // defpackage.bm3
    public final Object invoke(NestedScrollScope nestedScrollScope, e02<? super j59> e02Var) {
        return ((ScrollingLogic$doFlingAnimation$2) create(nestedScrollScope, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        ScrollingLogic scrollingLogic;
        q07 q07Var;
        long j;
        ScrollingLogic scrollingLogic2;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            final NestedScrollScope nestedScrollScope = (NestedScrollScope) this.L$0;
            final ScrollingLogic scrollingLogic3 = this.this$0;
            ScrollScope scrollScope = new ScrollScope() { // from class: androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2$reverseScope$1
                @Override // androidx.compose.foundation.gestures.ScrollScope
                public float scrollBy(float f) {
                    if (Math.abs(f) != 0.0f && !((Boolean) scrollingLogic3.isScrollableNodeAttached.invoke()).booleanValue()) {
                        throw new FlingCancellationException();
                    }
                    ScrollingLogic scrollingLogic4 = scrollingLogic3;
                    return scrollingLogic4.reverseIfNeeded(scrollingLogic4.m1619toFloatk4lQ0M(nestedScrollScope.mo1560scrollByWithOverscrollOzD1aCk(scrollingLogic4.m1617reverseIfNeededMKHz9U(scrollingLogic4.m1620toOffsettuRUvjQ(f)), NestedScrollSource.Companion.m7437getSideEffectWNlRxjI())));
                }
            };
            scrollingLogic = this.this$0;
            q07 q07Var2 = this.$result;
            long j2 = this.$available;
            FlingBehavior flingBehavior = scrollingLogic.flingBehavior;
            long j3 = q07Var2.b;
            float fReverseIfNeeded = scrollingLogic.reverseIfNeeded(scrollingLogic.m1614toFloatTH1AsA0(j2));
            this.L$0 = scrollingLogic;
            this.L$1 = scrollingLogic;
            this.L$2 = q07Var2;
            this.J$0 = j3;
            this.label = 1;
            Object objPerformFling = flingBehavior.performFling(scrollScope, fReverseIfNeeded, this);
            if (objPerformFling == a32Var) {
                return a32Var;
            }
            q07Var = q07Var2;
            j = j3;
            obj = objPerformFling;
            scrollingLogic2 = scrollingLogic;
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            j = this.J$0;
            q07Var = (q07) this.L$2;
            scrollingLogic = (ScrollingLogic) this.L$1;
            scrollingLogic2 = (ScrollingLogic) this.L$0;
            r57.b(obj);
        }
        q07Var.b = scrollingLogic.m1615updateQWom1Mo(j, scrollingLogic2.reverseIfNeeded(((Number) obj).floatValue()));
        return j59.a;
    }
}
