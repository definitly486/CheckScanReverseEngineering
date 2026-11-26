package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class xp extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ bq c;
    public final /* synthetic */ n8 d;
    public final /* synthetic */ Object e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xp(bq bqVar, n8 n8Var, Object obj, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = bqVar;
        this.d = n8Var;
        this.e = obj;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new xp(this.c, this.d, this.e, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((xp) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0035  */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            bq bqVar = this.c;
            uz4 uz4Var = bqVar.d;
            n8 n8Var = this.d;
            if (n8Var.h == null) {
                Object obj2 = this.e;
                this.b = 1;
                obj = bq.a(bqVar, n8Var, obj2, this);
                if (obj == a32Var) {
                    return a32Var;
                }
            } else {
                bq bqVar2 = this.c;
                bqVar2.a(this.d, bqVar2.b(this.e), "default");
            }
            return j59.a;
        }
        if (i != 1) {
            defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        if (!((Boolean) obj).booleanValue()) {
            bq bqVar3 = this.c;
            bqVar3.a(this.d, bqVar3.b(this.e), "default");
        }
        return j59.a;
    }
}
