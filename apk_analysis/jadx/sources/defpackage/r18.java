package defpackage;

import com.google.common.collect.j;
import com.google.common.collect.n;

/* JADX INFO: loaded from: classes4.dex */
public final class r18<E> extends n<E> {
    public final transient E e;

    public r18(E e) {
        e.getClass();
        this.e = e;
    }

    @Override // com.google.common.collect.n, com.google.common.collect.i
    public final j<E> a() {
        return j.s(this.e);
    }

    @Override // com.google.common.collect.i
    public final int b(int i, Object[] objArr) {
        objArr[i] = this.e;
        return i + 1;
    }

    @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.e.equals(obj);
    }

    @Override // com.google.common.collect.n, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.e.hashCode();
    }

    @Override // com.google.common.collect.i
    public final boolean i() {
        return false;
    }

    @Override // com.google.common.collect.n, com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    /* JADX INFO: renamed from: j */
    public final y69<E> iterator() {
        return new ya4.d(this.e);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return "[" + this.e.toString() + ']';
    }

    @Override // com.google.common.collect.n, com.google.common.collect.i
    public Object writeReplace() {
        return super.writeReplace();
    }
}
