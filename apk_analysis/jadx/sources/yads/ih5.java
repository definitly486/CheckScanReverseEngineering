package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class ih5 {
    public final y56 a;
    public final a66 b;

    public ih5(Context context) {
        y56 y56Var = new y56(context);
        a66 a66Var = new a66(context);
        this.a = y56Var;
        this.b = a66Var;
    }

    public final void a() {
        boolean z;
        a66 a66Var = this.b;
        m96 m96Var = a66Var.a;
        Context context = a66Var.d;
        m96Var.getClass();
        if (za.a(context)) {
            z56 z56Var = a66Var.b;
            fe5 fe5VarA = z56Var.a.a(a66Var.d);
            if (fe5VarA != null && fe5VarA.r) {
                a66Var.c.getClass();
                b66.b();
            }
        }
        y56 y56Var = this.a;
        m96 m96Var2 = y56Var.c;
        Context context2 = y56Var.e;
        m96Var2.getClass();
        if (za.a(context2)) {
            zg5 zg5Var = y56Var.b;
            zg5Var.getClass();
            synchronized (zg5.k) {
                z = zg5Var.g;
            }
            if (z) {
                x56 x56Var = y56Var.d;
                fe5 fe5VarA2 = x56Var.a.a(y56Var.e);
                if (fe5VarA2 == null || !fe5VarA2.q) {
                    return;
                }
                y56Var.a.a();
            }
        }
    }
}
