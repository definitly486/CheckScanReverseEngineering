package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class i75 {
    public static final h75 a(h75 h75Var, h75 h75Var2) {
        if (h75Var2 == null) {
            return new h75(h75Var.a, h75Var.b);
        }
        c cVar = h75Var.b;
        if (cVar == null) {
            cVar = h75Var2.b;
        }
        return new h75(defpackage.n05.g(h75Var.a, h75Var2.a), cVar);
    }
}
