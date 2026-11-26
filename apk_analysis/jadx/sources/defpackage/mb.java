package defpackage;

import io.appmetrica.analytics.push.coreutils.internal.CoreConstants;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes4.dex */
public abstract class mb<OutputT> extends l0.f<OutputT> {
    public static final a k;
    public static final wn4 l = new wn4(mb.class);
    public volatile Set<Throwable> i;
    public volatile int j;

    public static abstract class a {
        public abstract void a(lb lbVar, Set set);

        public abstract int b(lb lbVar);
    }

    public static final class b extends a {
        public static final AtomicReferenceFieldUpdater<? super mb<?>, ? super Set<Throwable>> a = AtomicReferenceFieldUpdater.newUpdater(mb.class, Set.class, "i");
        public static final AtomicIntegerFieldUpdater<? super mb<?>> b = AtomicIntegerFieldUpdater.newUpdater(mb.class, CoreConstants.PushMessage.PROCESSING_MIN_TIME);

        @Override // mb.a
        public final void a(lb lbVar, Set set) {
            AtomicReferenceFieldUpdater<? super mb<?>, ? super Set<Throwable>> atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = a;
                if (atomicReferenceFieldUpdater.compareAndSet(lbVar, null, set)) {
                    return;
                }
            } while (atomicReferenceFieldUpdater.get(lbVar) == null);
        }

        @Override // mb.a
        public final int b(lb lbVar) {
            return b.decrementAndGet(lbVar);
        }
    }

    public static final class c extends a {
        @Override // mb.a
        public final void a(lb lbVar, Set set) {
            synchronized (lbVar) {
                try {
                    if (lbVar.i == null) {
                        lbVar.i = set;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // mb.a
        public final int b(lb lbVar) {
            int i;
            synchronized (lbVar) {
                i = lbVar.j - 1;
                lbVar.j = i;
            }
            return i;
        }
    }

    static {
        Throwable th;
        a cVar;
        try {
            cVar = new b();
            th = null;
        } catch (Throwable th2) {
            th = th2;
            cVar = new c();
        }
        k = cVar;
        if (th != null) {
            l.a().log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
    }
}
