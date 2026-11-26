package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "kotlinx.coroutines.flow.internal.FlowCoroutineKt$scopedFlow$1$1", f = "FlowCoroutine.kt", l = {47}, m = "invokeSuspend", v = 1)
public final class nd3 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ dm3<y22, id3<Object>, e02<? super j59>, Object> n;
    public final /* synthetic */ id3<Object> o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public nd3(dm3<? super y22, ? super id3<Object>, ? super e02<? super j59>, ? extends Object> dm3Var, id3<Object> id3Var, e02<? super nd3> e02Var) {
        super(2, e02Var);
        this.n = dm3Var;
        this.o = id3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        nd3 nd3Var = new nd3(this.n, this.o, e02Var);
        nd3Var.m = obj;
        return nd3Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((nd3) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        y22 y22Var = (y22) this.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        if (i == 0) {
            r57.b(obj);
            this.m = null;
            this.l = 1;
            if (this.n.invoke(y22Var, this.o, this) == a32Var) {
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
