package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class hf5 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ rf5 c;
    public final /* synthetic */ if5 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hf5(rf5 rf5Var, if5 if5Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = rf5Var;
        this.d = if5Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new hf5(this.c, this.d, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new hf5(this.c, this.d, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        try {
            if (i == 0) {
                r57.b(obj);
                rf5 rf5Var = this.c;
                kg3 kg3Var = kg3.INITIALIZATION;
                this.b = 1;
                obj = rf5Var.a(kg3Var, this);
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
            this.d.d.a((gf5) obj);
            if5.g.remove(this.c);
            return j59.a;
        } catch (Throwable th) {
            if5.g.remove(this.c);
            throw th;
        }
    }
}
