package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class e89 {
    public final q79 a;
    public final ro7 b;
    public final jf6 c;

    public e89(q79 q79Var, ro7 ro7Var, jf6 jf6Var) {
        this.a = q79Var;
        this.b = ro7Var;
        this.c = jf6Var;
    }

    public final Object a(String str, pg8 pg8Var) {
        jf6 jf6Var = this.c;
        if (str != null) {
            jf6Var.X0(str);
        }
        jf6Var.R();
        Object objC = z22.c(new d89(this, null), pg8Var);
        return objC == a32.COROUTINE_SUSPENDED ? objC : j59.a;
    }
}
