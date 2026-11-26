package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
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
@bd2(c = "androidx.compose.foundation.gestures.ScrollingLogic2D$doFlingAnimation$2", f = "Scrollable2D.kt", l = {461}, m = "invokeSuspend", v = 1)
public final class ScrollingLogic2D$doFlingAnimation$2 extends pg8 implements bm3<NestedScrollScope, e02<? super j59>, Object> {
    final /* synthetic */ long $available;
    final /* synthetic */ q07 $result;
    long J$0;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ ScrollingLogic2D this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollingLogic2D$doFlingAnimation$2(ScrollingLogic2D scrollingLogic2D, long j, q07 q07Var, e02<? super ScrollingLogic2D$doFlingAnimation$2> e02Var) {
        super(2, e02Var);
        this.this$0 = scrollingLogic2D;
        this.$available = j;
        this.$result = q07Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        ScrollingLogic2D$doFlingAnimation$2 scrollingLogic2D$doFlingAnimation$2 = new ScrollingLogic2D$doFlingAnimation$2(this.this$0, this.$available, this.$result, e02Var);
        scrollingLogic2D$doFlingAnimation$2.L$0 = obj;
        return scrollingLogic2D$doFlingAnimation$2;
    }

    @Override // defpackage.bm3
    public final Object invoke(NestedScrollScope nestedScrollScope, e02<? super j59> e02Var) {
        return ((ScrollingLogic2D$doFlingAnimation$2) create(nestedScrollScope, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        long j;
        q07 q07Var;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            final NestedScrollScope nestedScrollScope = (NestedScrollScope) this.L$0;
            final ScrollingLogic2D scrollingLogic2D = this.this$0;
            final long j2 = this.$available;
            ScrollScope scrollScope = new ScrollScope() { // from class: androidx.compose.foundation.gestures.ScrollingLogic2D$doFlingAnimation$2$flingScope$1
                @Override // androidx.compose.foundation.gestures.ScrollScope
                public float scrollBy(float f) {
                    long jDoFlingAnimation_QWom1Mo$toDecomposedOffset = ScrollingLogic2D.doFlingAnimation_QWom1Mo$toDecomposedOffset(f, j2);
                    if (Offset.m5984equalsimpl0(jDoFlingAnimation_QWom1Mo$toDecomposedOffset, Offset.Companion.m6003getZeroF1C5BW0()) || ((Boolean) scrollingLogic2D.isScrollableNodeAttached.invoke()).booleanValue()) {
                        return ScrollingLogic2D.doFlingAnimation_QWom1Mo$toMagnitudeFloat(nestedScrollScope.mo1560scrollByWithOverscrollOzD1aCk(jDoFlingAnimation_QWom1Mo$toDecomposedOffset, NestedScrollSource.Companion.m7437getSideEffectWNlRxjI()));
                    }
                    throw new FlingCancellationException();
                }
            };
            ScrollingLogic2D scrollingLogic2D2 = this.this$0;
            long j3 = this.$available;
            q07 q07Var2 = this.$result;
            FlingBehavior flingBehavior = scrollingLogic2D2.flingBehavior;
            float fM1596getMagnitudeTH1AsA0 = Scrollable2DKt.m1596getMagnitudeTH1AsA0(j3);
            this.L$0 = q07Var2;
            this.J$0 = j3;
            this.label = 1;
            obj = flingBehavior.performFling(scrollScope, fM1596getMagnitudeTH1AsA0, this);
            if (obj == a32Var) {
                return a32Var;
            }
            j = j3;
            q07Var = q07Var2;
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            j = this.J$0;
            q07Var = (q07) this.L$0;
            r57.b(obj);
        }
        q07Var.b = ScrollingLogic2D.doFlingAnimation_QWom1Mo$toDecomposedVelocity(((Number) obj).floatValue(), j);
        return j59.a;
    }
}
