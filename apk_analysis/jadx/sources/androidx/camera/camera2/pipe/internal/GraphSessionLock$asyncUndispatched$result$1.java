package androidx.camera.camera2.pipe.internal;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.z22;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.internal.GraphSessionLock$asyncUndispatched$result$1", f = "GraphSessionLock.kt", l = {90}, m = "invokeSuspend", v = 1)
public final class GraphSessionLock$asyncUndispatched$result$1<T> extends pg8 implements bm3<y22, e02<? super T>, Object> {
    final /* synthetic */ bm3<y22, e02<? super T>, Object> $block;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public GraphSessionLock$asyncUndispatched$result$1(bm3<? super y22, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super GraphSessionLock$asyncUndispatched$result$1> e02Var) {
        super(2, e02Var);
        this.$block = bm3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        GraphSessionLock$asyncUndispatched$result$1 graphSessionLock$asyncUndispatched$result$1 = new GraphSessionLock$asyncUndispatched$result$1(this.$block, e02Var);
        graphSessionLock$asyncUndispatched$result$1.L$0 = obj;
        return graphSessionLock$asyncUndispatched$result$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super T> e02Var) {
        return ((GraphSessionLock$asyncUndispatched$result$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                r57.b(obj);
                return obj;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        y22 y22Var = (y22) this.L$0;
        z22.d(y22Var);
        bm3<y22, e02<? super T>, Object> bm3Var = this.$block;
        this.label = 1;
        Object objInvoke = bm3Var.invoke(y22Var, this);
        return objInvoke == a32Var ? a32Var : objInvoke;
    }
}
