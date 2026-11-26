package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.yr;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class eu3 {
    public final Context a;
    public final e4 b;
    public final mg c;
    public final s94 d;

    public eu3(Context context, e4 e4Var) {
        mg mgVar = new mg(context);
        r94 r94Var = s94.e;
        s94 s94Var = s94.f;
        if (s94Var == null) {
            synchronized (r94Var) {
                s94Var = s94.f;
                if (s94Var == null) {
                    s94Var = new s94();
                    s94.f = s94Var;
                }
            }
        }
        this.a = context;
        this.b = e4Var;
        this.c = mgVar;
        this.d = s94Var;
    }

    public final List a() {
        m4 m4VarA;
        m4 m4VarA2;
        try {
            this.c.a();
            m4VarA = null;
        } catch (vm3 e) {
            m4 m4Var = o8.a;
            m4VarA = o8.a(1, e.getMessage(), e.c);
        }
        try {
            s94 s94Var = this.d;
            Context context = this.a;
            if (s94Var.b) {
                synchronized (s94Var.a) {
                    try {
                        if (s94Var.b) {
                            if (za.a(context)) {
                                s94Var.c.a(context);
                                s94Var.d.getClass();
                                cu4.a(context);
                            }
                            s94Var.b = false;
                        }
                        j59 j59Var = j59.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            m4VarA2 = null;
        } catch (vm3 e2) {
            m4 m4Var2 = o8.a;
            m4VarA2 = o8.a(1, e2.getMessage(), e2.c);
        }
        e4 e4Var = this.b;
        return yr.G(new m4[]{m4VarA, m4VarA2, e4Var.c.a == null ? o8.l : null, e4Var.e == null ? o8.i : null});
    }
}
