package defpackage;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.component.unityofferwall.UnityOfferwallController$present$2", f = "UnityOfferwallController.kt", l = {124}, m = "invokeSuspend")
public final class b69 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    public int l;
    public final /* synthetic */ s59 m;
    public final /* synthetic */ nu5 n;
    public final /* synthetic */ s59.c.C0329c o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b69(s59 s59Var, nu5 nu5Var, s59.c.C0329c c0329c, e02<? super b69> e02Var) {
        super(2, e02Var);
        this.m = s59Var;
        this.n = nu5Var;
        this.o = c0329c;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new b69(this.m, this.n, this.o, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((b69) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        if (i == 0) {
            r57.b(obj);
            this.l = 1;
            if (yk2.b(5000L, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        s59 s59Var = this.m;
        s59Var.i.add(this.n);
        s59.c cVar = s59Var.f;
        s59.c.C0329c c0329c = this.o;
        if (cVar == c0329c) {
            s59Var.f = s59.c.a.a;
            c0329c.b.T(new m69.b(j69.NOT_SHOWN));
        }
        return j59.a;
    }
}
