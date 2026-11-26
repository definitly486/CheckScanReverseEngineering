package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.yv8;

/* JADX INFO: loaded from: classes6.dex */
public final class cf extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ df c;
    public final /* synthetic */ long d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cf(df dfVar, long j, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = dfVar;
        this.d = j;
    }

    public static final void a(defpackage.xp1 xp1Var) {
        xp1Var.f(j59.a);
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new cf(this.c, this.d, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new cf(this.c, this.d, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            defpackage.yp1 yp1Var = new defpackage.yp1();
            this.c.b.post(new defpackage.by2(yp1Var, 1));
            long j = this.d;
            bf bfVar = new bf(yp1Var, null);
            this.b = 1;
            obj = yv8.c(j, bfVar, this);
            if (obj == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return Boolean.valueOf(obj != null);
    }
}
