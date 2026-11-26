package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "kotlinx.coroutines.flow.internal.ChannelFlow$collect$2", f = "ChannelFlow.kt", l = {119}, m = "invokeSuspend", v = 1)
public final class b91 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ id3<Object> n;
    public final /* synthetic */ d91<Object> o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b91(id3<Object> id3Var, d91<Object> d91Var, e02<? super b91> e02Var) {
        super(2, e02Var);
        this.n = id3Var;
        this.o = d91Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        b91 b91Var = new b91(this.n, this.o, e02Var);
        b91Var.m = obj;
        return b91Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((b91) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        y22 y22Var = (y22) this.m;
        Object obj2 = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        if (i == 0) {
            r57.b(obj);
            qz6<Object> qz6VarK = this.o.k(y22Var);
            this.m = null;
            this.l = 1;
            Object objB = sd3.b(this.n, qz6VarK, true, this);
            if (objB != obj2) {
                objB = j59.a;
            }
            if (objB == obj2) {
                return obj2;
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
