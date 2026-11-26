package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class m08<T> extends d64<T> {
    public volatile T b;

    @Override // defpackage.d64
    public final T a(z37 z37Var) {
        if (this.b == null) {
            return (T) super.a(z37Var);
        }
        T t = this.b;
        if (t != null) {
            return t;
        }
        ah.f("Single instance created couldn't return value");
        return null;
    }

    @Override // defpackage.d64
    public final void b() {
        nl3<T, j59> nl3Var = this.a.g.a;
        if (nl3Var != null) {
            nl3Var.invoke(this.b);
        }
        this.b = null;
    }

    @Override // defpackage.d64
    public final T c(z37 z37Var) {
        if (this.b == null) {
            synchronized (this) {
                if (!(this.b != null)) {
                    this.b = a(z37Var);
                }
                j59 j59Var = j59.a;
            }
        }
        T t = this.b;
        if (t != null) {
            return t;
        }
        ah.f("Single instance created couldn't return value");
        return null;
    }
}
