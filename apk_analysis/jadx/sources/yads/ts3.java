package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.jd8;
import defpackage.jr9;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.rm9;

/* JADX INFO: loaded from: classes6.dex */
public final class ts3 {
    public final Context a;
    public final zg5 b;
    public final ct3 c;
    public final ll3 d;
    public final defpackage.y22 e;
    public final os3 f;

    public ts3(Context context, q84 q84Var, int i) {
        zg5 zg5Var;
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        ct3 ct3Var = new ct3(context);
        defpackage.d84 d84Var = new defpackage.d84(context, 5);
        q84Var = (i & 16) != 0 ? null : q84Var;
        defpackage.o22 j90Var = q84Var != null ? new j90(q84Var) : new i90();
        jd8 jd8VarB = rm9.b();
        defpackage.oi2 oi2Var = defpackage.qo2.a;
        defpackage.kz1 kz1VarA = defpackage.z22.a(o22.a.C0306a.d(jd8VarB, defpackage.sh2.c).plus(j90Var));
        os3 os3VarA = ns3.a();
        this.a = context;
        this.b = zg5Var2;
        this.c = ct3Var;
        this.d = d84Var;
        this.e = kz1VarA;
        this.f = os3VarA;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ba A[Catch: all -> 0x002f, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x002f, blocks: (B:13:0x002a, B:46:0x00ba), top: B:61:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00e0, code lost:
    
        if (r12.s() == r1) goto L48;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v9, types: [xp1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(defpackage.f02 r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.ts3.a(f02):java.lang.Object");
    }

    public static final e85 a(Context context) {
        return qn4.a(context);
    }

    public static final j59 a(ts3 ts3Var, String str) {
        defpackage.xp1 xp1Var = ts3Var.f.a;
        if (xp1Var != null) {
            xp1Var.f(j59.a);
        }
        return j59.a;
    }

    public final void a(String str, nl3 nl3Var) {
        vs5 vs5Var = new vs5(str, new jr9(this, str, nl3Var), new defpackage.d34(str, nl3Var));
        vs5Var.j = false;
        vs5Var.q = "light_bundle_js_request_tag";
        ((e85) this.d.invoke()).a(vs5Var);
    }

    public static final void a(String str, nl3 nl3Var, hi6 hi6Var) {
        nl3Var.invoke(null);
    }

    public static final void a(ts3 ts3Var, String str, nl3 nl3Var, String str2) {
        defpackage.av0.c(ts3Var.e, null, null, new ss3(ts3Var, str2, str, nl3Var, null), 3);
    }
}
