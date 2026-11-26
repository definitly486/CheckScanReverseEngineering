package defpackage;

import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class lw0<F, T> extends f06<F> implements Serializable {
    public final lm3<F, ? extends T> b;
    public final f06<T> c;

    public lw0(lm3<F, ? extends T> lm3Var, f06<T> f06Var) {
        this.b = lm3Var;
        this.c = f06Var;
    }

    @Override // java.util.Comparator
    public final int compare(F f, F f2) {
        lm3<F, ? extends T> lm3Var = this.b;
        return this.c.compare(lm3Var.apply(f), lm3Var.apply(f2));
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof lw0)) {
            return false;
        }
        lw0 lw0Var = (lw0) obj;
        return this.b.equals(lw0Var.b) && this.c.equals(lw0Var.c);
    }

    public final int hashCode() {
        return Objects.hash(this.b, this.c);
    }

    public final String toString() {
        return this.c + ".onResultOf(" + this.b + ")";
    }
}
