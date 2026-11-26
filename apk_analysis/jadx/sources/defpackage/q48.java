package defpackage;

import java.lang.ref.SoftReference;
import java.util.ArrayDeque;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes5.dex */
public final class q48<T> {
    public final ThreadLocal<SoftReference<ArrayDeque<T>>> a = ThreadLocal.withInitial(new p48());
    public final Supplier<T> b;

    public q48(Supplier<T> supplier) {
        this.b = supplier;
    }

    public final T a() {
        ThreadLocal<SoftReference<ArrayDeque<T>>> threadLocal = this.a;
        ArrayDeque<T> arrayDeque = threadLocal.get().get();
        if (arrayDeque == null) {
            arrayDeque = new ArrayDeque<>();
            threadLocal.set(new SoftReference<>(arrayDeque));
        }
        return !arrayDeque.isEmpty() ? arrayDeque.pop() : this.b.get();
    }

    public final void b(T t) {
        ThreadLocal<SoftReference<ArrayDeque<T>>> threadLocal = this.a;
        ArrayDeque<T> arrayDeque = threadLocal.get().get();
        if (arrayDeque == null) {
            arrayDeque = new ArrayDeque<>();
            threadLocal.set(new SoftReference<>(arrayDeque));
        }
        if (arrayDeque.size() < 12) {
            arrayDeque.push(t);
        }
    }
}
