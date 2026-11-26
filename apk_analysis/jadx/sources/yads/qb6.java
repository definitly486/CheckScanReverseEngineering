package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class qb6 extends pg8 implements defpackage.bm3 {
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ rb6 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qb6(rb6 rb6Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.d = rb6Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        qb6 qb6Var = new qb6(this.d, e02Var);
        qb6Var.c = obj;
        return qb6Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        qb6 qb6Var = new qb6(this.d, (defpackage.e02) obj2);
        qb6Var.c = (defpackage.y22) obj;
        return qb6Var.invokeSuspend(j59.a);
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
        while (defpackage.z22.e(y22Var)) {
            rb6 rb6Var = this.d;
            if (!rb6Var.d) {
                break;
            }
            long adPosition = rb6Var.a.getAdPosition();
            this.d.b.a(this.d.a.c(), adPosition);
            if (this.d.d) {
                this.c = y22Var;
                this.b = 1;
                if (defpackage.yk2.b(200L, this) == a32Var) {
                    return a32Var;
                }
            }
        }
        return j59.a;
    }
}
