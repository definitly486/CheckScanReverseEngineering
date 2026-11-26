package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class dc extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ ec c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dc(ec ecVar, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = ecVar;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new dc(this.c, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new dc(this.c, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            long j = ec.g;
            this.b = 1;
            if (defpackage.yk2.b(j, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        this.c.a.dismiss();
        return j59.a;
    }
}
