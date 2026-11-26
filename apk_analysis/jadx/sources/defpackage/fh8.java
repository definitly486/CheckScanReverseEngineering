package defpackage;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class fh8<T> implements cl4<T>, Serializable {
    public ll3<? extends T> b;
    public volatile Object c;
    public final Object d;

    public fh8(ll3 ll3Var) {
        ll3Var.getClass();
        this.b = ll3Var;
        this.c = sm1.d;
        this.d = this;
    }

    private final Object writeReplace() {
        return new h54(getValue());
    }

    @Override // defpackage.cl4
    public final T getValue() {
        T tInvoke;
        T t = (T) this.c;
        sm1 sm1Var = sm1.d;
        if (t != sm1Var) {
            return t;
        }
        synchronized (this.d) {
            tInvoke = (T) this.c;
            if (tInvoke == sm1Var) {
                ll3<? extends T> ll3Var = this.b;
                ll3Var.getClass();
                tInvoke = ll3Var.invoke();
                this.c = tInvoke;
                this.b = null;
            }
        }
        return tInvoke;
    }

    @Override // defpackage.cl4
    public final boolean isInitialized() {
        return this.c != sm1.d;
    }

    public final String toString() {
        return isInitialized() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
