package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes5.dex */
public final class sb7<T> implements e02<T>, b32 {
    public static final AtomicReferenceFieldUpdater<sb7<?>, Object> c = AtomicReferenceFieldUpdater.newUpdater(sb7.class, Object.class, "result");
    public final e02<T> b;
    private volatile Object result;

    public sb7(e02 e02Var, a32 a32Var) {
        this.b = e02Var;
        this.result = a32Var;
    }

    @Override // defpackage.b32
    public final b32 getCallerFrame() {
        e02<T> e02Var = this.b;
        if (e02Var instanceof b32) {
            return (b32) e02Var;
        }
        return null;
    }

    @Override // defpackage.e02
    public final o22 getContext() {
        return this.b.getContext();
    }

    @Override // defpackage.e02
    public final void resumeWith(Object obj) {
        AtomicReferenceFieldUpdater<sb7<?>, Object> atomicReferenceFieldUpdater = c;
        while (true) {
            Object obj2 = this.result;
            a32 a32Var = a32.UNDECIDED;
            if (obj2 == a32Var) {
                while (!atomicReferenceFieldUpdater.compareAndSet(this, a32Var, obj)) {
                    if (atomicReferenceFieldUpdater.get(this) != a32Var) {
                    }
                }
                return;
            }
            a32 a32Var2 = a32.COROUTINE_SUSPENDED;
            if (obj2 != a32Var2) {
                ah.f("Already resumed");
                return;
            }
            a32 a32Var3 = a32.RESUMED;
            do {
                if (atomicReferenceFieldUpdater.compareAndSet(this, a32Var2, a32Var3)) {
                    this.b.resumeWith(obj);
                    return;
                }
            } while (atomicReferenceFieldUpdater.get(this) == a32Var2);
        }
    }

    public final String toString() {
        return "SafeContinuation for " + this.b;
    }
}
