package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class x93 implements n4 {
    public final Context a;
    public final e4 b;
    public final bf5 c;
    public final qp d;
    public final rq4 e;
    public final y45 f;

    public x93(Context context, e4 e4Var, t5 t5Var, bf5 bf5Var) {
        qp qpVar = new qp(t5Var);
        rq4 rq4Var = new rq4();
        y45 y45VarA = y45.b.a();
        this.a = context;
        this.b = e4Var;
        this.c = bf5Var;
        this.d = qpVar;
        this.e = rq4Var;
        this.f = y45VarA;
    }

    @Override // yads.n4
    public final cp a(String str, String str2, ds dsVar) {
        Context context = this.a;
        e4 e4Var = this.b;
        Context context2 = ((do6) this.c).a;
        k4 k4Var = new k4(context, e4Var, mw.a(context2, context2), str, str2, this.d, dsVar);
        n8 n8Var = this.b.e;
        String str3 = n8Var != null ? n8Var.h : null;
        this.e.getClass();
        String strA = rq4.a(str3);
        n8 n8Var2 = this.b.e;
        String str4 = n8Var2 != null ? n8Var2.i : null;
        if (strA == null) {
            strA = str4;
        }
        if (strA != null) {
            this.f.a(k4Var, strA);
        }
        return k4Var;
    }
}
