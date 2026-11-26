package androidx.compose.material3.pulltorefresh;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$onPostScroll$1", f = "PullToRefresh.kt", l = {288}, m = "invokeSuspend")
public final class PullToRefreshModifierNode$onPostScroll$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    int label;
    final /* synthetic */ PullToRefreshModifierNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PullToRefreshModifierNode$onPostScroll$1(PullToRefreshModifierNode pullToRefreshModifierNode, e02<? super PullToRefreshModifierNode$onPostScroll$1> e02Var) {
        super(2, e02Var);
        this.this$0 = pullToRefreshModifierNode;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new PullToRefreshModifierNode$onPostScroll$1(this.this$0, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((PullToRefreshModifierNode$onPostScroll$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            if (!this.this$0.getState().isAnimating()) {
                PullToRefreshState state = this.this$0.getState();
                float verticalOffset = this.this$0.getVerticalOffset() / this.this$0.getThresholdPx();
                this.label = 1;
                if (state.snapTo(verticalOffset, this) == a32Var) {
                    return a32Var;
                }
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
