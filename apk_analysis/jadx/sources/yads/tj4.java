package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class tj4 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ xj4 c;
    public final /* synthetic */ ee4 d;
    public final /* synthetic */ b05 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tj4(xj4 xj4Var, ee4 ee4Var, b05 b05Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = xj4Var;
        this.d = ee4Var;
        this.e = b05Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new tj4(this.c, this.d, this.e, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((tj4) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            pj4 pj4Var = this.c.a;
            ee4 ee4Var = this.d;
            b05 b05Var = this.e;
            this.b = 1;
            if (pj4Var.a(ee4Var, b05Var, this) == a32Var) {
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
