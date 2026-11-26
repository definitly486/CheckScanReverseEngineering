package yads;

import defpackage.j59;
import defpackage.k57;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class jg0 extends pg8 implements defpackage.bm3 {
    public defpackage.yg5 b;
    public kg0 c;
    public kg0 d;
    public int e;
    public final /* synthetic */ kg0 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jg0(kg0 kg0Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.f = kg0Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new jg0(this.f, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new jg0(this.f, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0060  */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        kg0 kg0Var;
        defpackage.yg5 yg5Var;
        Throwable th;
        kg0 kg0Var2;
        Object obj2;
        defpackage.yg5 yg5Var2;
        kg0 kg0Var3;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.e;
        try {
            if (i == 0) {
                r57.b(obj);
                kg0Var = this.f;
                yg5Var = kg0Var.f;
                this.b = yg5Var;
                this.c = kg0Var;
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
                kg0Var2 = this.d;
                kg0Var3 = this.c;
                yg5Var2 = this.b;
                try {
                    r57.b(obj);
                    obj2 = ((k57) obj).b;
                    if (obj2 instanceof k57.a) {
                        obj2 = null;
                    }
                    kg0Var2.e = (dg0) obj2;
                    kg0Var = kg0Var3;
                    ef0 ef0VarA = kg0Var.c.a(kg0Var.a.a(), kg0Var.e);
                    yg5Var2.unlock(null);
                    return ef0VarA;
                } catch (Throwable th2) {
                    th = th2;
                    yg5Var = yg5Var2;
                    yg5Var.unlock(null);
                    throw th;
                }
            }
            kg0 kg0Var4 = this.c;
            defpackage.yg5 yg5Var3 = this.b;
            r57.b(obj);
            kg0Var = kg0Var4;
            yg5Var = yg5Var3;
            if (kg0Var.e == null) {
                b65 b65Var = kg0Var.b;
                this.b = yg5Var;
                this.c = kg0Var;
                this.d = kg0Var;
                try {
                    this.e = 2;
                    Object objA = b65Var.a(this);
                    if (objA != a32Var) {
                        kg0Var2 = kg0Var;
                        obj2 = objA;
                        yg5Var2 = yg5Var;
                        kg0Var3 = kg0Var2;
                        if (obj2 instanceof k57.a) {
                            obj2 = null;
                        }
                        kg0Var2.e = (dg0) obj2;
                        kg0Var = kg0Var3;
                    }
                    return a32Var;
                } catch (Throwable th3) {
                    th = th3;
                    yg5Var.unlock(null);
                    throw th;
                }
            }
            yg5Var2 = yg5Var;
            ef0 ef0VarA2 = kg0Var.c.a(kg0Var.a.a(), kg0Var.e);
            yg5Var2.unlock(null);
            return ef0VarA2;
        } catch (Throwable th4) {
            th = th4;
        }
    }
}
