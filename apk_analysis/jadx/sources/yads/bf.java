package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class bf extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ defpackage.xp1 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bf(defpackage.xp1 xp1Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = xp1Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new bf(this.c, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new bf(this.c, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            defpackage.xp1 xp1Var = this.c;
            this.b = 1;
            if (xp1Var.Z(this) == a32Var) {
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
