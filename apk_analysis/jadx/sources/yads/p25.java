package yads;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import defpackage.dy9;
import yads.p25;

/* JADX INFO: loaded from: classes6.dex */
public final class p25 implements t03 {
    public final op3 a;
    public final Handler b;
    public final v5 c;
    public d80 d;
    public hp3 e;
    public String f;

    public p25(Context context, e4 e4Var, bf5 bf5Var, t5 t5Var, op3 op3Var) {
        Handler handler = new Handler(Looper.getMainLooper());
        v5 v5Var = new v5(context, e4Var, t5Var, bf5Var);
        this.a = op3Var;
        this.b = handler;
        this.c = v5Var;
    }

    @Override // yads.t03
    public final void a(fp3 fp3Var) {
        this.c.a();
        op3 op3Var = this.a;
        Context context = op3Var.b;
        q25 q25Var = op3Var.a;
        fw3 fw3Var = new fw3(context);
        ee5.a.getClass();
        final np3 np3Var = new np3(fp3Var, q25Var, fw3Var, ng3.a());
        this.b.post(new Runnable() { // from class: d5a
            @Override // java.lang.Runnable
            public final void run() {
                p25.a(this.b, np3Var);
            }
        });
    }

    @Override // yads.t03
    public final void onAdFailedToLoad(m4 m4Var) {
        this.c.a(m4Var.b, m4Var.c);
        this.b.post(new dy9(1, this, new m4(m4Var.a, m4Var.b, m4Var.c, this.f)));
    }

    public static final void a(p25 p25Var, np3 np3Var) {
        d80 d80Var = p25Var.d;
        if (d80Var != null) {
            d80Var.a(np3Var);
        }
        hp3 hp3Var = p25Var.e;
        if (hp3Var != null) {
            hp3Var.a.a(hp3Var.b);
        }
    }

    public static final void a(p25 p25Var, m4 m4Var) {
        d80 d80Var = p25Var.d;
        if (d80Var != null) {
            d80Var.onAdFailedToLoad(m4Var);
        }
        hp3 hp3Var = p25Var.e;
        if (hp3Var != null) {
            hp3Var.a.a(hp3Var.b);
        }
    }
}
