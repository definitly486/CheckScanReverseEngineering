package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "kotlinx.coroutines.flow.FlowKt__CollectKt$launchIn$1", f = "Collect.kt", l = {46}, m = "invokeSuspend", v = 1)
public final class td3 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    public int l;
    public final /* synthetic */ hd3<Object> m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public td3(hd3<Object> hd3Var, e02<? super td3> e02Var) {
        super(2, e02Var);
        this.m = hd3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new td3(this.m, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((td3) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        Object obj2 = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        if (i == 0) {
            r57.b(obj);
            this.l = 1;
            Object objCollect = this.m.collect(lo5.b, this);
            if (objCollect != obj2) {
                objCollect = j59.a;
            }
            if (objCollect == obj2) {
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
