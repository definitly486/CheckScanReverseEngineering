package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class yb6 extends pg8 implements defpackage.bm3 {
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ zb6 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yb6(zb6 zb6Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.d = zb6Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        yb6 yb6Var = new yb6(this.d, e02Var);
        yb6Var.c = obj;
        return yb6Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        yb6 yb6Var = new yb6(this.d, (defpackage.e02) obj2);
        yb6Var.c = (defpackage.y22) obj;
        return yb6Var.invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.y22 y22Var;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            y22Var = (defpackage.y22) this.c;
        } else {
            if (i != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            y22Var = (defpackage.y22) this.c;
            r57.b(obj);
        }
        while (defpackage.z22.e(y22Var) && !this.d.a.a()) {
            this.c = y22Var;
            this.b = 1;
            if (defpackage.yk2.b(200L, this) == a32Var) {
                return a32Var;
            }
        }
        if (defpackage.z22.e(y22Var)) {
            zb6 zb6Var = this.d;
            zb6Var.d = true;
            zb6Var.b.a();
            zb6 zb6Var2 = this.d;
            defpackage.mb4 mb4Var = zb6Var2.f;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            zb6Var2.f = null;
            zb6Var2.e = false;
        }
        return j59.a;
    }
}
