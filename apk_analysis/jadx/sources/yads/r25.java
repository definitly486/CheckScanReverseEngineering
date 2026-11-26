package yads;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes6.dex */
public final class r25 implements t03 {
    public final ka5 a;
    public final Handler b;
    public final v5 c;
    public String d;
    public w80 e;
    public da5 f;

    public r25(Context context, e4 e4Var, bf5 bf5Var, t5 t5Var, ka5 ka5Var) {
        Handler handler = new Handler(Looper.getMainLooper());
        v5 v5Var = new v5(context, e4Var, t5Var, bf5Var);
        this.a = ka5Var;
        this.b = handler;
        this.c = v5Var;
    }

    @Override // yads.t03
    public final void a(ba5 ba5Var) {
        this.c.a();
        ka5 ka5Var = this.a;
        Context context = ka5Var.b;
        s25 s25Var = ka5Var.a;
        fw3 fw3Var = new fw3(context);
        ee5.a.getClass();
        this.b.post(new defpackage.h00(3, this, new ja5(ba5Var, s25Var, fw3Var, ng3.a())));
    }

    @Override // yads.t03
    public final void onAdFailedToLoad(m4 m4Var) {
        this.c.a(m4Var.b, m4Var.c);
        this.b.post(new defpackage.du(4, m4Var, this));
    }

    public static final void a(r25 r25Var, ja5 ja5Var) {
        w80 w80Var = r25Var.e;
        if (w80Var != null) {
            w80Var.a(ja5Var);
        }
        da5 da5Var = r25Var.f;
        if (da5Var != null) {
            da5Var.a.a(da5Var.b);
        }
    }

    public static final void a(m4 m4Var, r25 r25Var) {
        m4 m4Var2 = new m4(m4Var.a, m4Var.b, m4Var.c, r25Var.d);
        w80 w80Var = r25Var.e;
        if (w80Var != null) {
            w80Var.onAdFailedToLoad(m4Var2);
        }
        da5 da5Var = r25Var.f;
        if (da5Var != null) {
            da5Var.a.a(da5Var.b);
        }
    }
}
