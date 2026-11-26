package defpackage;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class q72 {
    public Context a;

    public final r72 a() {
        Context context = this.a;
        if (context == null) {
            g2.d(Context.class.getCanonicalName());
            return null;
        }
        r72 r72Var = new r72();
        r72Var.b = nq2.a(r13.a.a);
        e64 e64Var = new e64(context);
        r72Var.c = e64Var;
        r72Var.d = nq2.a(new na5(e64Var, new m62(e64Var)));
        e64 e64Var2 = r72Var.c;
        r72Var.e = new ye7(e64Var2);
        ws6<String> ws6VarA = nq2.a(new g13(e64Var2));
        r72Var.f = ws6VarA;
        ws6<u97> ws6VarA2 = nq2.a(new v97(r72Var.e, ws6VarA));
        r72Var.g = ws6VarA2;
        oe7 oe7Var = new oe7();
        e64 e64Var3 = r72Var.c;
        pe7 pe7Var = new pe7(e64Var3, ws6VarA2, oe7Var);
        ws6<Executor> ws6Var = r72Var.b;
        ws6 ws6Var2 = r72Var.d;
        r72Var.h = nq2.a(new e39(new qi2(ws6Var, ws6Var2, pe7Var, ws6VarA2, ws6VarA2), new s89(e64Var3, ws6Var2, ws6VarA2, pe7Var, ws6Var, ws6VarA2, ws6VarA2), new kk9(ws6Var, ws6VarA2, pe7Var, ws6VarA2)));
        return r72Var;
    }
}
