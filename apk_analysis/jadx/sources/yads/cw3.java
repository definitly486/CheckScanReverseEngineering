package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class cw3 extends pg8 implements defpackage.bm3 {
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ long d;
    public final /* synthetic */ kc4 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cw3(long j, kc4 kc4Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.d = j;
        this.e = kc4Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        cw3 cw3Var = new cw3(this.d, this.e, e02Var);
        cw3Var.c = obj;
        return cw3Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((cw3) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.y22 y22Var;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            y22Var = (defpackage.y22) this.c;
            long j = this.d;
            this.c = y22Var;
            this.b = 1;
            if (defpackage.yk2.b(j, this) != a32Var) {
            }
            return a32Var;
        }
        if (i != 1 && i != 2) {
            defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        y22Var = (defpackage.y22) this.c;
        r57.b(obj);
        while (defpackage.z22.e(y22Var)) {
            kc4 kc4Var = this.e;
            if (kc4Var.b != zx.ACTIVE) {
                break;
            }
            kc4Var.run();
            long j2 = this.d;
            this.c = y22Var;
            this.b = 2;
            if (defpackage.yk2.b(j2, this) == a32Var) {
                return a32Var;
            }
        }
        return j59.a;
    }
}
