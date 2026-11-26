package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class nl9 {
    public static final mp7 a(mp7 mp7Var, jq7 jq7Var) {
        mp7 mp7VarA;
        df4 df4VarB;
        mp7Var.getClass();
        jq7Var.getClass();
        if (!aa4.e(mp7Var.getKind(), sp7.a.a)) {
            return mp7Var.isInline() ? a(mp7Var.d(0), jq7Var) : mp7Var;
        }
        ne4 ne4VarC = ly1.c(mp7Var);
        mp7 descriptor = null;
        if (ne4VarC != null && (df4VarB = jq7Var.b(ne4VarC, kx2.b)) != null) {
            descriptor = df4VarB.getDescriptor();
        }
        return (descriptor == null || (mp7VarA = a(descriptor, jq7Var)) == null) ? mp7Var : mp7VarA;
    }

    public static final ml9 b(xb4 xb4Var, mp7 mp7Var) {
        xb4Var.getClass();
        mp7Var.getClass();
        sp7 kind = mp7Var.getKind();
        if (kind instanceof ba6) {
            return ml9.POLY_OBJ;
        }
        if (aa4.e(kind, eb8.b.a)) {
            return ml9.LIST;
        }
        if (!aa4.e(kind, eb8.c.a)) {
            return ml9.OBJ;
        }
        mp7 mp7VarA = a(mp7Var.d(0), xb4Var.b);
        sp7 kind2 = mp7VarA.getKind();
        if ((kind2 instanceof dg6) || aa4.e(kind2, sp7.b.a)) {
            return ml9.MAP;
        }
        throw yc4.a(mp7VarA);
    }
}
