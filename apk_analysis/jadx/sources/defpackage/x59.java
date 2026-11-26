package defpackage;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.component.unityofferwall.UnityOfferwallController$connect$inFlight$2", f = "UnityOfferwallController.kt", l = {92}, m = "invokeSuspend")
public final class x59 extends pg8 implements bm3<y22, e02<? super Boolean>, Object> {
    public int l;
    public final /* synthetic */ s59 m;
    public final /* synthetic */ String n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x59(s59 s59Var, String str, e02<? super x59> e02Var) {
        super(2, e02Var);
        this.m = s59Var;
        this.n = str;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new x59(this.m, this.n, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super Boolean> e02Var) {
        return ((x59) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        if (i == 0) {
            r57.b(obj);
            this.l = 1;
            Object objB = this.m.b(this.n, this);
            return objB == a32Var ? a32Var : objB;
        }
        if (i == 1) {
            r57.b(obj);
            return obj;
        }
        ah.f("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
