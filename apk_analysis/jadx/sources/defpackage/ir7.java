package defpackage;

import java.io.InvalidObjectException;
import java.io.NotSerializableException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class ir7<E> extends f1<E> implements Serializable {
    public static final ir7 c = new ir7(uz4.o);
    public final uz4<E, ?> b;

    public ir7() {
        this.b = new uz4<>();
    }

    private final void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    private final Object writeReplace() throws NotSerializableException {
        if (this.b.n) {
            return new zp7(this, 1);
        }
        throw new NotSerializableException("The set cannot be serialized while it is being built.");
    }

    @Override // defpackage.f1, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(E e) {
        return this.b.a(e) >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean addAll(Collection<? extends E> collection) {
        collection.getClass();
        this.b.d();
        return super.addAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.b.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.b.containsKey(obj);
    }

    @Override // defpackage.f1
    public final int getSize() {
        return this.b.j;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.b.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<E> iterator() {
        uz4<E, ?> uz4Var = this.b;
        uz4Var.getClass();
        return new uz4.d(uz4Var);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        uz4<E, ?> uz4Var = this.b;
        uz4Var.d();
        int iK = uz4Var.k(obj);
        if (iK < 0) {
            return false;
        }
        uz4Var.p(iK);
        return true;
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean removeAll(Collection<?> collection) {
        collection.getClass();
        this.b.d();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean retainAll(Collection<?> collection) {
        collection.getClass();
        this.b.d();
        return super.retainAll(collection);
    }

    public ir7(uz4<E, ?> uz4Var) {
        uz4Var.getClass();
        this.b = uz4Var;
    }

    public ir7(int i) {
        this.b = new uz4<>(i);
    }
}
