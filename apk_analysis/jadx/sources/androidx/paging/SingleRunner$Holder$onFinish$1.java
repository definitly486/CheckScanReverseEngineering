package androidx.paging;

import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.paging.SingleRunner$Holder", f = "SingleRunner.kt", l = {120}, m = "onFinish", v = 1)
public final class SingleRunner$Holder$onFinish$1 extends f02 {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ SingleRunner.Holder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleRunner$Holder$onFinish$1(SingleRunner.Holder holder, e02<? super SingleRunner$Holder$onFinish$1> e02Var) {
        super(e02Var);
        this.this$0 = holder;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.onFinish(null, this);
    }
}
