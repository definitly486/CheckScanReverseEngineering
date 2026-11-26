package defpackage;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public final class x67<T> extends f06<T> implements Serializable {
    public final f06<? super T> b;

    public x67(f06<? super T> f06Var) {
        this.b = f06Var;
    }

    @Override // defpackage.f06
    public final <S extends T> f06<S> a() {
        return this.b;
    }

    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        return this.b.compare(t2, t);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof x67) {
            return this.b.equals(((x67) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        return -this.b.hashCode();
    }

    public final String toString() {
        return this.b + ".reverse()";
    }
}
