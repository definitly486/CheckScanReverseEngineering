package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class ae3 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ be3 c;
    public final /* synthetic */ rd3 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ae3(be3 be3Var, rd3 rd3Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = be3Var;
        this.d = rd3Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new ae3(this.c, this.d, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new ae3(this.c, this.d, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            hc3 hc3Var = this.c.d;
            rd3 rd3Var = this.d;
            hc3Var.getClass();
            defpackage.wy0 wy0VarA = defpackage.s0.a(new fc3(hc3Var, rd3Var, null));
            zd3 zd3Var = new zd3(this.c, this.d);
            this.b = 1;
            if (wy0VarA.collect(zd3Var, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
