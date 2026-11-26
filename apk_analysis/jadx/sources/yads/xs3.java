package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class xs3 extends pg8 implements defpackage.bm3 {
    public defpackage.yg5 b;
    public ct3 c;
    public int d;
    public final /* synthetic */ ct3 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xs3(ct3 ct3Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.e = ct3Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new xs3(this.e, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new xs3(this.e, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        ct3 ct3Var;
        defpackage.yg5 yg5Var;
        Throwable th;
        defpackage.yg5 yg5Var2;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.d;
        try {
            if (i == 0) {
                r57.b(obj);
                ct3Var = this.e;
                yg5Var = ct3Var.d;
                this.b = yg5Var;
                this.c = ct3Var;
                this.d = 1;
                if (yg5Var.lock(null, this) != a32Var) {
                }
                return a32Var;
            }
            if (i != 1) {
                if (i != 2) {
                    defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                yg5Var2 = this.b;
                try {
                    r57.b(obj);
                    String str = (String) obj;
                    yg5Var2.unlock(null);
                    return str;
                } catch (Throwable th2) {
                    th = th2;
                    yg5Var2.unlock(null);
                    throw th;
                }
            }
            ct3Var = this.c;
            defpackage.yg5 yg5Var3 = this.b;
            r57.b(obj);
            yg5Var = yg5Var3;
            this.b = yg5Var;
            this.c = null;
            this.d = 2;
            ct3Var.getClass();
            defpackage.oi2 oi2Var = defpackage.qo2.a;
            Object objD = defpackage.av0.d(defpackage.sh2.c, new zs3(ct3Var, null), this);
            if (objD != a32Var) {
                defpackage.yg5 yg5Var4 = yg5Var;
                obj = objD;
                yg5Var2 = yg5Var4;
                String str2 = (String) obj;
                yg5Var2.unlock(null);
                return str2;
            }
            return a32Var;
        } catch (Throwable th3) {
            defpackage.yg5 yg5Var5 = yg5Var;
            th = th3;
            yg5Var2 = yg5Var5;
            yg5Var2.unlock(null);
            throw th;
        }
    }
}
