package defpackage;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "coil3.request.ViewTargetRequestManager$dispose$1", f = "ViewTargetRequestManager.kt", l = {}, m = "invokeSuspend", v = 1)
public final class ue9 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    public final /* synthetic */ ve9 l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ue9(ve9 ve9Var, e02<? super ue9> e02Var) {
        super(2, e02Var);
        this.l = ve9Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new ue9(this.l, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((ue9) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        ve9 ve9Var = this.l;
        te9 te9Var = ve9Var.e;
        if (te9Var != null) {
            te9Var.c();
        }
        ve9Var.e = null;
        return j59.a;
    }
}
