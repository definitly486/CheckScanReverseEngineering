package yads;

import defpackage.j59;
import defpackage.k57;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class yy2 extends pg8 implements defpackage.bm3 {
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ bz2 d;
    public final /* synthetic */ c65 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yy2(bz2 bz2Var, c65 c65Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.d = bz2Var;
        this.e = c65Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        yy2 yy2Var = new yy2(this.d, this.e, e02Var);
        yy2Var.c = obj;
        return yy2Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((yy2) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        Object aVar;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        try {
            if (i == 0) {
                r57.b(obj);
                bz2 bz2Var = this.d;
                c65 c65Var = this.e;
                this.b = 1;
                obj = bz2Var.a(c65Var, this);
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
            aVar = (Boolean) obj;
            aVar.getClass();
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        return new k57(aVar);
    }
}
