package androidx.compose.ui.input.nestedscroll;

import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.ui.input.nestedscroll.NestedScrollNode", f = "NestedScrollNode.kt", l = {106, 107}, m = "onPreFling-QWom1Mo", v = 1)
public final class NestedScrollNode$onPreFling$1 extends f02 {
    long J$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ NestedScrollNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NestedScrollNode$onPreFling$1(NestedScrollNode nestedScrollNode, e02<? super NestedScrollNode$onPreFling$1> e02Var) {
        super(e02Var);
        this.this$0 = nestedScrollNode;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.mo2130onPreFlingQWom1Mo(0L, this);
    }
}
