package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class h65 {
    public final e4 a;
    public final d9 b;
    public final ba c;
    public final q84 d;
    public final fe5 e;
    public final e40 f;
    public yj4 g;

    public h65(Context context, e4 e4Var, bf5 bf5Var, d9 d9Var, ba baVar) {
        zg5 zg5Var;
        bf5Var.getClass();
        q84 q84VarA = re.a(context, new lm6(((do6) bf5Var).a));
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
        fe5 fe5VarA = zg5Var2.a(context);
        e40 e40Var = new e40();
        this.a = e4Var;
        this.b = d9Var;
        this.c = baVar;
        this.d = q84VarA;
        this.e = fe5VarA;
        this.f = e40Var;
    }
}
