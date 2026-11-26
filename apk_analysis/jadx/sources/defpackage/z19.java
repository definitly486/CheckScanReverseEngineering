package defpackage;

import java.util.ListIterator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class z19<F, T> extends y19 implements ListIterator<T> {
    @Override // java.util.ListIterator
    public final void add(T t) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return ((ListIterator) this.c).hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return ((ListIterator) this.c).nextIndex();
    }

    @Override // java.util.ListIterator
    public final T previous() {
        return (T) a(((ListIterator) this.c).previous());
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return ((ListIterator) this.c).previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(T t) {
        throw new UnsupportedOperationException();
    }
}
