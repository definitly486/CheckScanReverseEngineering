package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.zya;

/* JADX INFO: loaded from: classes6.dex */
public final class dc4 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ Context c;
    public final /* synthetic */ by3 d;
    public final /* synthetic */ tz3 e;
    public final /* synthetic */ ec4 f;
    public final /* synthetic */ d9 g;
    public final /* synthetic */ boolean h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dc4(Context context, by3 by3Var, tz3 tz3Var, ec4 ec4Var, d9 d9Var, boolean z, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = context;
        this.d = by3Var;
        this.e = tz3Var;
        this.f = ec4Var;
        this.g = d9Var;
        this.h = z;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new dc4(this.c, this.d, this.e, this.f, this.g, this.h, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((dc4) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        zj6 zj6Var;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        vb4 vb4Var = null;
        if (i == 0) {
            r57.b(obj);
            gc4 gc4VarA = gc4.c.a(this.c);
            if (gc4VarA.b.size() != gc4VarA.a) {
                if (!gc4VarA.b.containsKey(this.d) && this.e != null) {
                    ec5 ec5Var = this.f.a;
                    Context context = this.c;
                    String str = this.g.G;
                    if (str != null) {
                        zj6.c.getClass();
                        zj6Var = (zj6) zj6.d.get(str);
                        if (zj6Var == null) {
                            zj6Var = zj6.DEFAULT;
                        }
                    } else {
                        zj6Var = zj6.DEFAULT;
                    }
                    try {
                        vb4Var = new vb4(context, new xj6(zj6Var), null);
                    } catch (Throwable unused) {
                    }
                    if (vb4Var == null) {
                        return j59.a;
                    }
                    by3 by3Var = this.d;
                    tz3 tz3Var = this.e;
                    boolean z = this.h;
                    this.b = 1;
                    defpackage.c31 c31Var = new defpackage.c31(1, zya.b(this));
                    c31Var.u();
                    bc4 bc4Var = new bc4(gc4VarA, by3Var, new cc4(z, c31Var));
                    if (gc4VarA.b.size() < gc4VarA.a) {
                        gc4VarA.b.put(by3Var, vb4Var);
                    }
                    if (tz3Var instanceof rz3) {
                        vb4Var.a(((rz3) tz3Var).a, (ub4) bc4Var);
                    } else if (tz3Var instanceof sz3) {
                        vb4Var.a(((sz3) tz3Var).a, bc4Var);
                    }
                    if (!z && (c31Var.t() instanceof defpackage.no5)) {
                        c31Var.resumeWith(j59.a);
                    }
                    Object objS = c31Var.s();
                    defpackage.a32 a32Var2 = defpackage.a32.COROUTINE_SUSPENDED;
                    if (objS == a32Var) {
                        return a32Var;
                    }
                }
            }
            return j59.a;
        }
        if (i != 1) {
            defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        return j59.a;
    }
}
