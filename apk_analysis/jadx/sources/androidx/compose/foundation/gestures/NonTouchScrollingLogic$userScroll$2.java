package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.constraintlayout.widget.ConstraintLayout;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.gestures.NonTouchScrollingLogic$userScroll$2", f = "NonTouchScrollingLogic.kt", l = {ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE}, m = "invokeSuspend", v = 1)
public final class NonTouchScrollingLogic$userScroll$2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ bm3<NestedScrollScope, e02<? super j59>, Object> $block;
    int label;
    final /* synthetic */ NonTouchScrollingLogic this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public NonTouchScrollingLogic$userScroll$2(NonTouchScrollingLogic nonTouchScrollingLogic, bm3<? super NestedScrollScope, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super NonTouchScrollingLogic$userScroll$2> e02Var) {
        super(2, e02Var);
        this.this$0 = nonTouchScrollingLogic;
        this.$block = bm3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new NonTouchScrollingLogic$userScroll$2(this.this$0, this.$block, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((NonTouchScrollingLogic$userScroll$2) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            ScrollingLogic scrollingLogic = this.this$0.getScrollingLogic();
            MutatePriority mutatePriority = MutatePriority.UserInput;
            bm3<NestedScrollScope, e02<? super j59>, Object> bm3Var = this.$block;
            this.label = 1;
            if (scrollingLogic.scroll(mutatePriority, bm3Var, this) == a32Var) {
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
