package defpackage;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.component.unityofferwall.UnityOfferwallController$close$1", f = "UnityOfferwallController.kt", l = {199}, m = "invokeSuspend")
public final class w59 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    public int l;
    public final /* synthetic */ s59 m;
    public final /* synthetic */ s59.c.C0329c n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w59(e02 e02Var, s59.c.C0329c c0329c, s59 s59Var) {
        super(2, e02Var);
        this.m = s59Var;
        this.n = c0329c;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new w59(e02Var, this.n, this.m);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((w59) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        if (i == 0) {
            r57.b(obj);
            this.l = 1;
            if (yk2.b(3000L, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        this.m.d(this.n);
        return j59.a;
    }
}
