package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class k44<T> implements Iterable<j44<? extends T>>, re4 {
    public final ll3<Iterator<T>> b;

    /* JADX WARN: Multi-variable type inference failed */
    public k44(ll3<? extends Iterator<? extends T>> ll3Var) {
        this.b = ll3Var;
    }

    @Override // java.lang.Iterable
    public final Iterator<j44<T>> iterator() {
        return new l44(this.b.invoke());
    }
}
