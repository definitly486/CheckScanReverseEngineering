package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class cf7<T> extends d64<T> {
    @Override // defpackage.d64
    public final void b() {
        synchronized (this) {
            throw null;
        }
    }

    @Override // defpackage.d64
    public final T c(z37 z37Var) {
        ze7 ze7Var = z37Var.b;
        kv6 kv6Var = ze7Var.a;
        gi0<T> gi0Var = this.a;
        kv6 kv6Var2 = gi0Var.a;
        if (aa4.e(kv6Var, kv6Var2) || aa4.e(z37Var.f, kv6Var2)) {
            throw null;
        }
        throw new IllegalStateException(("Wrong Scope qualifier: trying to open instance for " + ze7Var.b + " in " + gi0Var).toString());
    }
}
