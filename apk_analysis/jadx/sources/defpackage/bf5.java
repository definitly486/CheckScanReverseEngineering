package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class bf5<T> implements hz7<T> {
    public final AtomicReference<a<T>> b;
    public final AtomicReference<a<T>> c;

    public static final class a<E> extends AtomicReference<a<E>> {
        public E b;
    }

    public bf5() {
        AtomicReference<a<T>> atomicReference = new AtomicReference<>();
        this.b = atomicReference;
        AtomicReference<a<T>> atomicReference2 = new AtomicReference<>();
        this.c = atomicReference2;
        a<T> aVar = new a<>();
        atomicReference2.lazySet(aVar);
        atomicReference.getAndSet(aVar);
    }

    @Override // defpackage.iz7
    public final void clear() {
        while (poll() != null && !isEmpty()) {
        }
    }

    @Override // defpackage.iz7
    public final boolean isEmpty() {
        return this.c.get() == this.b.get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.iz7
    public final boolean offer(T t) {
        if (t == 0) {
            o2.d("Null is not a valid element");
            return false;
        }
        a<T> aVar = new a<>();
        aVar.b = t;
        this.b.getAndSet(aVar).lazySet(aVar);
        return true;
    }

    @Override // defpackage.iz7
    public final T poll() {
        a<T> aVar;
        AtomicReference<a<T>> atomicReference = this.c;
        a<T> aVar2 = atomicReference.get();
        a<T> aVar3 = (a) aVar2.get();
        if (aVar3 != null) {
            T t = aVar3.b;
            aVar3.b = null;
            atomicReference.lazySet(aVar3);
            return t;
        }
        if (aVar2 == this.b.get()) {
            return null;
        }
        do {
            aVar = (a) aVar2.get();
        } while (aVar == null);
        T t2 = aVar.b;
        aVar.b = null;
        atomicReference.lazySet(aVar);
        return t2;
    }
}
