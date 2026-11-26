package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "kotlinx.coroutines.flow.internal.ChannelFlow$collectToFun$1", f = "ChannelFlow.kt", l = {56}, m = "invokeSuspend", v = 1)
public final class c91 extends pg8 implements bm3<ug6<Object>, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ d91<Object> n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c91(d91<Object> d91Var, e02<? super c91> e02Var) {
        super(2, e02Var);
        this.n = d91Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        c91 c91Var = new c91(this.n, e02Var);
        c91Var.m = obj;
        return c91Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(ug6<Object> ug6Var, e02<? super j59> e02Var) {
        return ((c91) create(ug6Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        ug6<? super Object> ug6Var = (ug6) this.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        if (i == 0) {
            r57.b(obj);
            this.m = null;
            this.l = 1;
            if (this.n.h(ug6Var, this) == a32Var) {
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
