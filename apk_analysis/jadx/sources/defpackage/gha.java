package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class gha extends gh4 implements nl3<e49, j59> {
    public static final gha f = new gha(1);

    @Override // defpackage.nl3
    public final j59 invoke(e49 e49Var) {
        e49 e49Var2 = e49Var;
        e49Var2.getClass();
        int i = e49Var2.b;
        if (i < 400) {
            return j59.a;
        }
        StringBuilder sbC = n7.c(i, "error code: ", ", body: ");
        sbC.append(e49Var2.c);
        throw new IllegalStateException(sbC.toString().toString());
    }
}
