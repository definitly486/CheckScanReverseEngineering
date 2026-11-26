package androidx.camera.camera2.pipe.graph;

import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.graph.Controller3A", f = "Controller3A.kt", l = {373}, m = "lock3A-Qz1gx5w", v = 1)
public final class Controller3A$lock3A$1 extends f02 {
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ Controller3A this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Controller3A$lock3A$1(Controller3A controller3A, e02<? super Controller3A$lock3A$1> e02Var) {
        super(e02Var);
        this.this$0 = controller3A;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m881lock3AQz1gx5w(null, null, null, null, null, null, null, null, null, 0, null, null, this);
    }
}
