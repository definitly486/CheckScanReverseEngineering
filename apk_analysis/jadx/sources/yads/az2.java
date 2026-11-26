package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class az2 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ byte[] c;
    public final /* synthetic */ bz2 d;
    public final /* synthetic */ cz2 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public az2(byte[] bArr, bz2 bz2Var, cz2 cz2Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = bArr;
        this.d = bz2Var;
        this.e = cz2Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new az2(this.c, this.d, this.e, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((az2) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object obj2 = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            byte[] bArr = this.c;
            if (bArr == null) {
                return null;
            }
            rz2 rz2Var = this.d.b;
            cz2 cz2Var = this.e;
            this.b = 1;
            ry2 ry2Var = rz2Var.a;
            ry2Var.getClass();
            defpackage.oi2 oi2Var = defpackage.qo2.a;
            Object objD = defpackage.av0.d(defpackage.sh2.c, new qy2(ry2Var, cz2Var, bArr, null), this);
            if (objD != obj2) {
                objD = j59.a;
            }
            if (objD == obj2) {
                return obj2;
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
