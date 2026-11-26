package defpackage;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.component.unityofferwall.UnityOfferwallController$showOnMain$outcome$loaded$1", f = "UnityOfferwallController.kt", l = {63}, m = "invokeSuspend")
public final class h69 extends pg8 implements bm3<y22, e02<? super s59.a>, Object> {
    public int l;
    public final /* synthetic */ s59 m;
    public final /* synthetic */ String n;
    public final /* synthetic */ String o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h69(s59 s59Var, String str, String str2, e02<? super h69> e02Var) {
        super(2, e02Var);
        this.m = s59Var;
        this.n = str;
        this.o = str2;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new h69(this.m, this.n, this.o, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super s59.a> e02Var) {
        return ((h69) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        if (i == 0) {
            r57.b(obj);
            this.l = 1;
            Object objE = this.m.e(this.n, this.o, this);
            return objE == a32Var ? a32Var : objE;
        }
        if (i == 1) {
            r57.b(obj);
            return obj;
        }
        ah.f("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
