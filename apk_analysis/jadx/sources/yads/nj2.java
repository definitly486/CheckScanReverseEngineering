package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.u96;
import defpackage.yv8;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class nj2 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ qj2 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nj2(qj2 qj2Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = qj2Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new nj2(this.c, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new nj2(this.c, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        Object obj2 = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            qj2 qj2Var = this.c;
            AtomicBoolean atomicBoolean = qj2.e;
            qj2Var.getClass();
            defpackage.ar4 ar4VarE = u96.e();
            String strA = b56.a(qj2Var.c.a(qj2Var.b));
            if (strA != null) {
                ar4VarE.add(strA);
            }
            defpackage.ar4 ar4VarD = u96.d(ar4VarE);
            if (ar4VarD.isEmpty()) {
                return j59.a;
            }
            qj2 qj2Var2 = this.c;
            this.b = 1;
            qj2Var2.getClass();
            Object objB = yv8.b(2500L, new pj2(ar4VarD, qj2Var2, null), this);
            if (objB != obj2) {
                objB = j59.a;
            }
            if (objB == obj2) {
                return obj2;
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
