package yads;

import android.content.Context;
import defpackage.fh8;
import defpackage.rm9;
import defpackage.zya;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class hl2 {
    public final e85 a;
    public final xk2 b;
    public final Context c;
    public final defpackage.cl4 d = new fh8(new defpackage.zq2(4));
    public final HashMap e = new HashMap();

    public hl2(e85 e85Var, Context context, xk2 xk2Var) {
        this.a = e85Var;
        this.b = xk2Var;
        this.c = context.getApplicationContext();
    }

    public static final Object a(hl2 hl2Var, String str, String str2, cl2 cl2Var) throws Throwable {
        hl2Var.getClass();
        defpackage.c31 c31Var = new defpackage.c31(1, zya.b(cl2Var));
        c31Var.u();
        jl2 jl2Var = new jl2(str2, hl2Var.c, new fl2(hl2Var, str, c31Var), new gl2(hl2Var, c31Var));
        c31Var.n(new el2(jl2Var));
        hl2Var.a.a(jl2Var);
        Object objS = c31Var.s();
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        return objS;
    }

    public static final defpackage.y22 a(defpackage.y22 y22Var) {
        if (y22Var != null) {
            return y22Var;
        }
        return xn.a(rm9.b(), new i90());
    }
}
