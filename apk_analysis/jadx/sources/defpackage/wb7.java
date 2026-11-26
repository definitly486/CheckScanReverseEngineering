package defpackage;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes5.dex */
public final class wb7<T> implements cl4<T>, Serializable {
    public static final AtomicReferenceFieldUpdater<wb7<?>, Object> d = AtomicReferenceFieldUpdater.newUpdater(wb7.class, Object.class, "c");
    public volatile ll3<? extends T> b;
    public volatile Object c;

    public wb7() {
        throw null;
    }

    private final void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    private final Object writeReplace() {
        return new h54(getValue());
    }

    @Override // defpackage.cl4
    public final T getValue() {
        T t = (T) this.c;
        sm1 sm1Var = sm1.d;
        if (t != sm1Var) {
            return t;
        }
        ll3<? extends T> ll3Var = this.b;
        if (ll3Var != null) {
            T tInvoke = ll3Var.invoke();
            AtomicReferenceFieldUpdater<wb7<?>, Object> atomicReferenceFieldUpdater = d;
            while (!atomicReferenceFieldUpdater.compareAndSet(this, sm1Var, tInvoke)) {
                if (atomicReferenceFieldUpdater.get(this) != sm1Var) {
                }
            }
            this.b = null;
            return tInvoke;
        }
        return (T) this.c;
    }

    @Override // defpackage.cl4
    public final boolean isInitialized() {
        return this.c != sm1.d;
    }

    public final String toString() {
        return isInitialized() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
