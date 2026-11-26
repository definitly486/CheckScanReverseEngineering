package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.zya;

/* JADX INFO: loaded from: classes6.dex */
public final class ne5 extends pg8 implements defpackage.bm3 {
    public defpackage.yg5 b;
    public oe5 c;
    public kg3 d;
    public int e;
    public final /* synthetic */ oe5 f;
    public final /* synthetic */ kg3 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ne5(oe5 oe5Var, kg3 kg3Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.f = oe5Var;
        this.g = kg3Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new ne5(this.f, this.g, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new ne5(this.f, this.g, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        defpackage.yg5 yg5Var;
        oe5 oe5Var;
        kg3 kg3Var;
        Throwable th;
        defpackage.yg5 yg5Var2;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.e;
        try {
            if (i == 0) {
                r57.b(obj);
                this.f.a.a(s5.SDK_CONFIGURATION_QUEUE, null);
                yg5Var = oe5.d;
                oe5Var = this.f;
                kg3Var = this.g;
                this.b = yg5Var;
                this.c = oe5Var;
                this.d = kg3Var;
                this.e = 1;
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
                    ze5 ze5Var = (ze5) obj;
                    yg5Var2.unlock(null);
                    return ze5Var;
                } catch (Throwable th2) {
                    th = th2;
                    yg5Var2.unlock(null);
                    throw th;
                }
            }
            kg3Var = this.d;
            oe5Var = this.c;
            defpackage.yg5 yg5Var3 = this.b;
            r57.b(obj);
            yg5Var = yg5Var3;
            oe5Var.a.a(s5.SDK_CONFIGURATION_QUEUE);
            this.b = yg5Var;
            this.c = oe5Var;
            this.d = kg3Var;
            this.e = 2;
            defpackage.c31 c31Var = new defpackage.c31(1, zya.b(this));
            c31Var.u();
            c31Var.n(new le5(oe5Var));
            oe5Var.c.a(oe5Var.b, kg3Var, new me5(c31Var));
            Object objS = c31Var.s();
            if (objS != a32Var) {
                defpackage.yg5 yg5Var4 = yg5Var;
                obj = objS;
                yg5Var2 = yg5Var4;
                ze5 ze5Var2 = (ze5) obj;
                yg5Var2.unlock(null);
                return ze5Var2;
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
