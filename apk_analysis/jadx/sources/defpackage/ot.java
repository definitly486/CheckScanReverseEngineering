package defpackage;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes.dex */
public final class ot<T> {
    public static final AtomicReferenceFieldUpdater<ot<?>, Object> c = AtomicReferenceFieldUpdater.newUpdater(ot.class, Object.class, "b");
    public final jy8 a;
    public volatile T b;

    public ot(T t, jy8 jy8Var) {
        this.a = jy8Var;
        this.b = t;
    }

    public final boolean a(T t, T t2) {
        boolean z;
        while (true) {
            AtomicReferenceFieldUpdater<ot<?>, Object> atomicReferenceFieldUpdater = c;
            if (atomicReferenceFieldUpdater.compareAndSet(this, t, t2)) {
                z = true;
                break;
            }
            if (atomicReferenceFieldUpdater.get(this) != t) {
                z = false;
                break;
            }
        }
        if (z && this.a != jy8.a.a) {
            Objects.toString(t);
            Objects.toString(t2);
        }
        return z;
    }

    public final T b(T t) {
        T t2 = (T) c.getAndSet(this, t);
        if (this.a != jy8.a.a) {
            Objects.toString(t);
            Objects.toString(t2);
        }
        return t2;
    }

    public final void c(T t) {
        this.b = t;
        if (this.a != jy8.a.a) {
            Objects.toString(t);
        }
    }

    public final String toString() {
        return String.valueOf(this.b);
    }
}
