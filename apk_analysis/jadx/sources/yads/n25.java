package yads;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes6.dex */
public final class n25 implements t03 {
    public final Handler a;
    public final v5 b;
    public final lh c;
    public p70 d;
    public ch e;

    public n25(Context context, e4 e4Var, bf5 bf5Var, t5 t5Var, u03 u03Var) {
        Handler handler = new Handler(Looper.getMainLooper());
        v5 v5Var = new v5(context, e4Var, t5Var, bf5Var);
        lh lhVar = new lh(context, u03Var);
        this.a = handler;
        this.b = v5Var;
        this.c = lhVar;
    }

    @Override // yads.t03
    public final void a(ah ahVar) {
        this.b.a();
        lh lhVar = this.c;
        Context context = lhVar.b;
        o25 o25Var = new o25(lhVar.a);
        fw3 fw3Var = new fw3(context);
        ee5.a.getClass();
        this.a.post(new defpackage.do2(3, this, new kh(ahVar, o25Var, fw3Var, ng3.a())));
    }

    @Override // yads.t03
    public final void onAdFailedToLoad(m4 m4Var) {
        this.b.a(m4Var.b, m4Var.c);
        this.a.post(new defpackage.a2(3, this, m4Var));
    }

    public static final void a(n25 n25Var, m4 m4Var) {
        p70 p70Var = n25Var.d;
        if (p70Var != null) {
            p70Var.onAdFailedToLoad(m4Var);
        }
        ch chVar = n25Var.e;
        if (chVar != null) {
            chVar.a.a(chVar.b);
        }
    }

    public static final void a(n25 n25Var, kh khVar) {
        p70 p70Var = n25Var.d;
        if (p70Var != null) {
            p70Var.a(khVar);
        }
        ch chVar = n25Var.e;
        if (chVar != null) {
            chVar.a.a(chVar.b);
        }
    }
}
