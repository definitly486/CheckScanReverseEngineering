package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class zp extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ bq c;
    public final /* synthetic */ n8 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zp(bq bqVar, n8 n8Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = bqVar;
        this.d = n8Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new zp(this.c, this.d, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new zp(this.c, this.d, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            bq bqVar = this.c;
            uz4 uz4Var = bqVar.d;
            if (this.d.h == null) {
                this.b = 1;
                obj = bqVar.a(this);
                if (obj == a32Var) {
                    return a32Var;
                }
            }
            return j59.a;
        }
        if (i != 1) {
            defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        if (((Boolean) obj).booleanValue()) {
            cl0 cl0Var = this.c.e;
            n8 n8Var = this.d;
            g1 g1Var = cl0Var.a;
            g1Var.a.putIfAbsent(g1Var.b.a(n8Var), new defpackage.yp1());
            bq bqVar2 = this.c;
            n8 n8Var2 = this.d;
            bqVar2.a(n8Var2, bqVar2.a(n8Var2), "render");
        }
        return j59.a;
    }
}
