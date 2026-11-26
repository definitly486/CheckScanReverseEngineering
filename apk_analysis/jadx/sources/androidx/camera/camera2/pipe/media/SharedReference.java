package androidx.camera.camera2.pipe.media;

import defpackage.jy8;
import defpackage.kt;
import defpackage.lt;
import defpackage.ot;

/* JADX INFO: loaded from: classes.dex */
public final class SharedReference<T> {
    private final lt count;
    private ot<Finalizer<T>> currentFinalizer;
    private final T value;

    public SharedReference(T t, Finalizer<? super T> finalizer) {
        finalizer.getClass();
        this.value = t;
        this.count = kt.b(1);
        this.currentFinalizer = kt.d(finalizer);
    }

    public final T acquireOrNull() {
        int i;
        boolean zCompareAndSet;
        lt ltVar = this.count;
        do {
            int i2 = ltVar.a;
            i = i2 == 0 ? 0 : i2 + 1;
            zCompareAndSet = lt.b.compareAndSet(ltVar, i2, i);
            if (zCompareAndSet) {
                jy8.a aVar = jy8.a.a;
            }
        } while (!zCompareAndSet);
        if (i != 0) {
            return this.value;
        }
        return null;
    }

    public final void decrement() {
        if (this.count.a() == 0) {
            Finalizer<T> finalizerB = this.currentFinalizer.b(null);
            finalizerB.getClass();
            finalizerB.finalize(this.value);
        }
    }

    public final void setFinalizer(Finalizer<? super T> finalizer) {
        Finalizer<T> finalizer2;
        Finalizer<T> finalizer3;
        finalizer.getClass();
        ot<Finalizer<T>> otVar = this.currentFinalizer;
        do {
            finalizer2 = otVar.b;
            finalizer3 = finalizer2;
        } while (!otVar.a(finalizer2, finalizer3 == null ? null : finalizer));
        if (finalizer3 != null) {
            finalizer3.finalize(null);
        } else {
            finalizer.finalize(null);
        }
    }
}
