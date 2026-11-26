package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class np extends pg8 implements defpackage.bm3 {
    public e4 b;
    public int c;
    public /* synthetic */ Object d;
    public final /* synthetic */ pp e;
    public final /* synthetic */ dt f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public np(pp ppVar, dt dtVar, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.e = ppVar;
        this.f = dtVar;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        np npVar = new np(this.e, this.f, e02Var);
        npVar.d = obj;
        return npVar;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((np) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        defpackage.mk2 mk2Var;
        e4 e4Var;
        e4 e4Var2;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.c;
        if (i != 0) {
            if (i == 1) {
                e4Var = this.b;
                mk2Var = (defpackage.mk2) this.d;
                r57.b(obj);
            } else {
                if (i != 2) {
                    defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                e4Var2 = (e4) this.d;
                r57.b(obj);
            }
            e4Var2.i = (String) obj;
            return j59.a;
        }
        r57.b(obj);
        defpackage.y22 y22Var = (defpackage.y22) this.d;
        defpackage.nk2 nk2VarA = defpackage.av0.a(y22Var, null, null, new mp(this.e, this.f, null), 3);
        defpackage.nk2 nk2VarA2 = defpackage.av0.a(y22Var, null, null, new lp(this.e, this.f, null), 3);
        e4 e4Var3 = this.e.c;
        this.d = nk2VarA;
        this.b = e4Var3;
        this.c = 1;
        obj = nk2VarA2.u(this);
        if (obj != a32Var) {
            mk2Var = nk2VarA;
            e4Var = e4Var3;
        }
        return a32Var;
        e4Var.h = (String) obj;
        e4 e4Var4 = this.e.c;
        this.d = e4Var4;
        this.b = null;
        this.c = 2;
        Object objZ = mk2Var.Z(this);
        if (objZ != a32Var) {
            obj = objZ;
            e4Var2 = e4Var4;
            e4Var2.i = (String) obj;
            return j59.a;
        }
        return a32Var;
    }
}
