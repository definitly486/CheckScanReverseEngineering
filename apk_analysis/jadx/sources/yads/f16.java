package yads;

import android.app.Activity;
import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class f16 implements u1 {
    public static final /* synthetic */ defpackage.ze4[] d = {cb.a(f16.class, "contextReference", "getContextReference()Landroid/content/Context;", 0)};
    public final hj4 a;
    public final i1 b;
    public final e55 c;

    public f16(Activity activity, hj4 hj4Var) {
        i1 i1Var;
        i1 i1Var2 = i1.g;
        if (i1Var2 == null) {
            synchronized (i1.f) {
                i1Var = i1.g;
                if (i1Var == null) {
                    i1Var = new i1();
                    i1.g = i1Var;
                }
            }
            i1Var2 = i1Var;
        }
        this.a = hj4Var;
        this.b = i1Var2;
        this.c = new e55(activity);
    }

    @Override // yads.u1
    public final void a(Activity activity) {
        e55 e55Var = this.c;
        defpackage.ze4 ze4Var = d[0];
        Context context = (Context) e55Var.a.get();
        if (context == null || !context.equals(activity)) {
            return;
        }
        this.a.a.j();
    }

    @Override // yads.u1
    public final void b(Activity activity) {
        e55 e55Var = this.c;
        defpackage.ze4 ze4Var = d[0];
        Context context = (Context) e55Var.a.get();
        if (context == null || !context.equals(activity)) {
            return;
        }
        this.a.a.i();
    }
}
