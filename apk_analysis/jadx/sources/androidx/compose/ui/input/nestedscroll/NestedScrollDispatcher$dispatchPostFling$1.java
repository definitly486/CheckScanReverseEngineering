package androidx.compose.ui.input.nestedscroll;

import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher", f = "NestedScrollModifier.kt", l = {222, 224}, m = "dispatchPostFling-RZ2iAVY", v = 1)
public final class NestedScrollDispatcher$dispatchPostFling$1 extends f02 {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ NestedScrollDispatcher this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NestedScrollDispatcher$dispatchPostFling$1(NestedScrollDispatcher nestedScrollDispatcher, e02<? super NestedScrollDispatcher$dispatchPostFling$1> e02Var) {
        super(e02Var);
        this.this$0 = nestedScrollDispatcher;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m7419dispatchPostFlingRZ2iAVY(0L, 0L, this);
    }
}
