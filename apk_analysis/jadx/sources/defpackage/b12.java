package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class b12 implements e15<w04> {
    @Override // defpackage.e15
    public final void a(g15 g15Var, zn5 zn5Var) {
        f58 f58Var = g15Var.c;
        w04 w04Var = (w04) zn5Var;
        x05 x05Var = g15Var.a;
        e58 e58Var = x05Var.e.a.get(w04.class);
        if (e58Var == null) {
            g15Var.f(w04Var);
            return;
        }
        int iC = g15Var.c();
        g15Var.f(w04Var);
        if (iC == g15Var.c()) {
            f58Var.a((char) 65532);
        }
        boolean z = w04Var.a instanceof hq4;
        i14.a aVar = x05Var.d;
        String str = w04Var.f;
        aVar.getClass();
        g27 g27Var = g15Var.b;
        g27Var.a(y14.b, str);
        g27Var.a(y14.c, Boolean.valueOf(z));
        g27Var.a(y14.d, null);
        Object objA = e58Var.a(x05Var, g27Var);
        StringBuilder sb = f58Var.b;
        int length = sb.length();
        int length2 = sb.length();
        if (length <= iC || iC < 0 || length > length2) {
            return;
        }
        f58.c(f58Var, objA, iC, length);
    }
}
