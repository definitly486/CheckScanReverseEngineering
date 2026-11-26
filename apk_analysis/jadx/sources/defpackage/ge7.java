package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: loaded from: classes5.dex */
public final class ge7 extends AtomicReferenceArray<Object> implements Runnable, Callable<Object>, cp2 {
    public static final Object c = new Object();
    public static final Object d = new Object();
    public static final Object e = new Object();
    public static final Object f = new Object();
    public final Runnable b;

    public ge7(Runnable runnable, fp2 fp2Var) {
        super(3);
        this.b = runnable;
        lazySet(0, fp2Var);
    }

    public final void a(Future<?> future) {
        Object obj;
        do {
            obj = get(1);
            if (obj == f) {
                return;
            }
            if (obj == d) {
                future.cancel(false);
                return;
            } else if (obj == e) {
                future.cancel(true);
                return;
            }
        } while (!compareAndSet(1, obj, future));
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        run();
        return null;
    }

    @Override // defpackage.cp2
    public final void dispose() {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        while (true) {
            Object obj6 = get(1);
            obj = f;
            if (obj6 == obj || obj6 == (obj4 = d) || obj6 == (obj5 = e)) {
                break;
            }
            boolean z = get(2) != Thread.currentThread();
            if (z) {
                obj4 = obj5;
            }
            if (compareAndSet(1, obj6, obj4)) {
                if (obj6 == null) {
                    break;
                }
                ((Future) obj6).cancel(z);
                break;
            }
        }
        do {
            obj2 = get(0);
            if (obj2 == obj || obj2 == (obj3 = c) || obj2 == null) {
                return;
            }
        } while (!compareAndSet(0, obj2, obj3));
        ((fp2) obj2).a(this);
    }

    @Override // defpackage.cp2
    public final boolean isDisposed() {
        Object obj = get(0);
        return obj == c || obj == f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object obj2 = e;
        Object obj3 = d;
        Object obj4 = c;
        Object obj5 = f;
        lazySet(2, Thread.currentThread());
        try {
            this.b.run();
        } catch (Throwable th) {
            try {
                d97.b(th);
            } finally {
                lazySet(2, null);
                Object obj6 = get(0);
                if (obj6 != obj4 && compareAndSet(0, obj6, obj5) && obj6 != null) {
                    ((fp2) obj6).a(this);
                }
                do {
                    obj = get(1);
                    if (obj == obj3 || obj == obj2) {
                        break;
                    }
                } while (!compareAndSet(1, obj, obj5));
            }
        }
        lazySet(2, null);
        Object obj7 = get(0);
        if (obj7 != obj4 && compareAndSet(0, obj7, obj5) && obj7 != null) {
            ((fp2) obj7).a(this);
        }
        while (r2 != obj3 && r2 != obj2 && !compareAndSet(1, get(1), obj5)) {
        }
    }
}
