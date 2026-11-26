package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class wg implements k75 {
    public final lg a;
    public final defpackage.cl4 b;

    public wg(defpackage.cl4 cl4Var, lg lgVar) {
        this.a = lgVar;
        this.b = cl4Var;
    }

    @Override // yads.k75
    public final void reportError(String str, Throwable th) {
        if (this.a.a()) {
            try {
                ((gj0) this.b.getValue()).a.reportError(str, th);
            } catch (Throwable unused) {
            }
        }
    }
}
