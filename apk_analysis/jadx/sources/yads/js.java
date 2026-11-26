package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.zya;

/* JADX INFO: loaded from: classes6.dex */
public final class js extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ ks c;
    public final /* synthetic */ n8 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public js(ks ksVar, n8 n8Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = ksVar;
        this.d = n8Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new js(this.c, this.d, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new js(this.c, this.d, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i != 0) {
            if (i == 1) {
                r57.b(obj);
                return obj;
            }
            defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        ks ksVar = this.c;
        n8 n8Var = this.d;
        this.b = 1;
        defpackage.c31 c31Var = new defpackage.c31(1, zya.b(this));
        c31Var.u();
        ea5 ea5Var = new ea5(ksVar.a, ksVar.d.a, ksVar, null, n8Var);
        ksVar.e.add(ea5Var);
        String str = n8Var.a;
        ea5Var.c.a(str);
        ea5Var.G.d = str;
        ea5Var.a(new hs(c31Var));
        ea5Var.b(n8Var);
        c31Var.n(new is(ea5Var, ksVar));
        Object objS = c31Var.s();
        return objS == a32Var ? a32Var : objS;
    }
}
