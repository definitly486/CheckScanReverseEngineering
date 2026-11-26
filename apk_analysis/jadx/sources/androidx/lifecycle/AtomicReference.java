package androidx.lifecycle;

/* JADX INFO: loaded from: classes3.dex */
public final class AtomicReference<V> {
    private final java.util.concurrent.atomic.AtomicReference<V> base;

    public AtomicReference(V v) {
        this.base = new java.util.concurrent.atomic.AtomicReference<>(v);
    }

    public final boolean compareAndSet(V v, V v2) {
        java.util.concurrent.atomic.AtomicReference<V> atomicReference = this.base;
        while (!atomicReference.compareAndSet(v, v2)) {
            if (atomicReference.get() != v) {
                return false;
            }
        }
        return true;
    }

    public final V get() {
        return this.base.get();
    }
}
