package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class jx extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ ox c;
    public final /* synthetic */ kx d;
    public final /* synthetic */ ja5 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jx(ox oxVar, kx kxVar, ja5 ja5Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = oxVar;
        this.d = kxVar;
        this.e = ja5Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new jx(this.c, this.d, this.e, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((jx) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            fb5 fb5Var = this.c.i;
            n8 n8Var = this.d.a;
            ja5 ja5Var = this.e;
            this.b = 1;
            zz4 zz4Var = fb5Var.a;
            fb5Var.b.getClass();
            Object objA = zz4Var.a(b13.a(n8Var), ja5Var, this);
            if (objA != a32Var) {
                objA = j59.a;
            }
            if (objA == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        cl0 cl0Var = this.c.e;
        cl0Var.a.a(this.d.a, this.e);
        return j59.a;
    }
}
