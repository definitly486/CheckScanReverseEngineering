package yads;

import android.view.View;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class tr2 extends pg8 implements defpackage.bm3 {
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ ur2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tr2(ur2 ur2Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.d = ur2Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        tr2 tr2Var = new tr2(this.d, e02Var);
        tr2Var.c = obj;
        return tr2Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        tr2 tr2Var = new tr2(this.d, (defpackage.e02) obj2);
        tr2Var.c = (defpackage.y22) obj;
        return tr2Var.invokeSuspend(j59.a);
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
            e55 e55Var = this.d.c;
            defpackage.ze4[] ze4VarArr = ur2.f;
            defpackage.ze4 ze4Var = ze4VarArr[0];
            View view = (View) e55Var.a.get();
            e55 e55Var2 = this.d.d;
            defpackage.ze4 ze4Var2 = ze4VarArr[1];
            nq4 nq4Var = (nq4) e55Var2.a.get();
            if (view == null || nq4Var == null) {
                break;
            }
            qr2 qr2VarA = this.d.a.a(view);
            jb4 jb4Var = (jb4) nq4Var;
            if (!defpackage.aa4.e(qr2VarA, jb4Var.s)) {
                jb4Var.s = qr2VarA;
                jb4Var.b.a(new sr2(qr2VarA.a, qr2VarA.b));
            }
            this.c = y22Var;
            this.b = 1;
            if (defpackage.yk2.b(200L, this) == a32Var) {
                return a32Var;
            }
        }
        return j59.a;
    }
}
