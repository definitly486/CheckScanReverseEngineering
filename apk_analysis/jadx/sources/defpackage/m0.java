package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.common.util.concurrent.ListenableFuture;
import com.tapjoy.TJAdUnitConstants;
import java.security.PrivilegedExceptionAction;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
public abstract class m0<V> extends j94 implements ListenableFuture<V> {
    public static final Object e = new Object();
    public static final wn4 f = new wn4(l0.class);
    public static final boolean g;
    public static final a h;
    public volatile Object b;
    public volatile l0.d c;
    public volatile e d;

    public static abstract class a {
        public abstract boolean a(l0 l0Var, l0.d dVar, l0.d dVar2);

        public abstract boolean b(m0<?> m0Var, Object obj, Object obj2);

        public abstract boolean c(m0<?> m0Var, e eVar, e eVar2);

        public abstract l0.d d(l0 l0Var, l0.d dVar);

        public abstract e e(l0 l0Var);

        public abstract void f(e eVar, e eVar2);

        public abstract void g(e eVar, Thread thread);
    }

    public static final class b extends a {
        public static final AtomicReferenceFieldUpdater<e, Thread> a = AtomicReferenceFieldUpdater.newUpdater(e.class, Thread.class, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
        public static final AtomicReferenceFieldUpdater<e, e> b = AtomicReferenceFieldUpdater.newUpdater(e.class, e.class, "b");
        public static final AtomicReferenceFieldUpdater<? super m0<?>, e> c = AtomicReferenceFieldUpdater.newUpdater(m0.class, e.class, "d");
        public static final AtomicReferenceFieldUpdater<? super m0<?>, l0.d> d = AtomicReferenceFieldUpdater.newUpdater(m0.class, l0.d.class, "c");
        public static final AtomicReferenceFieldUpdater<? super m0<?>, Object> e = AtomicReferenceFieldUpdater.newUpdater(m0.class, Object.class, "b");

        @Override // m0.a
        public final boolean a(l0 l0Var, l0.d dVar, l0.d dVar2) {
            AtomicReferenceFieldUpdater<? super m0<?>, l0.d> atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = d;
                if (atomicReferenceFieldUpdater.compareAndSet(l0Var, dVar, dVar2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(l0Var) == dVar);
            return false;
        }

        @Override // m0.a
        public final boolean b(m0<?> m0Var, Object obj, Object obj2) {
            AtomicReferenceFieldUpdater<? super m0<?>, Object> atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = e;
                if (atomicReferenceFieldUpdater.compareAndSet(m0Var, obj, obj2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(m0Var) == obj);
            return false;
        }

        @Override // m0.a
        public final boolean c(m0<?> m0Var, e eVar, e eVar2) {
            AtomicReferenceFieldUpdater<? super m0<?>, e> atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = c;
                if (atomicReferenceFieldUpdater.compareAndSet(m0Var, eVar, eVar2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(m0Var) == eVar);
            return false;
        }

        @Override // m0.a
        public final l0.d d(l0 l0Var, l0.d dVar) {
            return d.getAndSet(l0Var, dVar);
        }

        @Override // m0.a
        public final e e(l0 l0Var) {
            return c.getAndSet(l0Var, e.c);
        }

        @Override // m0.a
        public final void f(e eVar, e eVar2) {
            b.lazySet(eVar, eVar2);
        }

        @Override // m0.a
        public final void g(e eVar, Thread thread) {
            a.lazySet(eVar, thread);
        }
    }

    public static final class c extends a {
        @Override // m0.a
        public final boolean a(l0 l0Var, l0.d dVar, l0.d dVar2) {
            synchronized (l0Var) {
                try {
                    if (l0Var.c != dVar) {
                        return false;
                    }
                    l0Var.c = dVar2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // m0.a
        public final boolean b(m0<?> m0Var, Object obj, Object obj2) {
            synchronized (m0Var) {
                try {
                    if (m0Var.b != obj) {
                        return false;
                    }
                    m0Var.b = obj2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // m0.a
        public final boolean c(m0<?> m0Var, e eVar, e eVar2) {
            synchronized (m0Var) {
                try {
                    if (m0Var.d != eVar) {
                        return false;
                    }
                    m0Var.d = eVar2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // m0.a
        public final l0.d d(l0 l0Var, l0.d dVar) {
            l0.d dVar2;
            synchronized (l0Var) {
                try {
                    dVar2 = l0Var.c;
                    if (dVar2 != dVar) {
                        l0Var.c = dVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return dVar2;
        }

        @Override // m0.a
        public final e e(l0 l0Var) {
            e eVar;
            e eVar2 = e.c;
            synchronized (l0Var) {
                try {
                    eVar = l0Var.d;
                    if (eVar != eVar2) {
                        l0Var.d = eVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return eVar;
        }

        @Override // m0.a
        public final void f(e eVar, e eVar2) {
            eVar.b = eVar2;
        }

        @Override // m0.a
        public final void g(e eVar, Thread thread) {
            eVar.a = thread;
        }
    }

    public static final class d extends a {
        public static final Unsafe a;
        public static final long b;
        public static final long c;
        public static final long d;
        public static final long e;
        public static final long f;

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (SecurityException unused) {
                    n0 n0Var = new n0();
                    try {
                        unsafe = (Unsafe) Class.forName("java.security.AccessController").getMethod("doPrivileged", PrivilegedExceptionAction.class).invoke(null, n0Var);
                    } catch (Exception unused2) {
                        unsafe = (Unsafe) n0Var.run();
                    }
                }
                try {
                    c = unsafe.objectFieldOffset(m0.class.getDeclaredField("d"));
                    b = unsafe.objectFieldOffset(m0.class.getDeclaredField("c"));
                    d = unsafe.objectFieldOffset(m0.class.getDeclaredField("b"));
                    e = unsafe.objectFieldOffset(e.class.getDeclaredField(CmcdData.OBJECT_TYPE_AUDIO_ONLY));
                    f = unsafe.objectFieldOffset(e.class.getDeclaredField("b"));
                    a = unsafe;
                } catch (NoSuchFieldException e2) {
                    ti0.f(e2);
                }
            } catch (Exception e3) {
                mg.e("Could not initialize intrinsics", e3);
            }
        }

        @Override // m0.a
        public final boolean a(l0 l0Var, l0.d dVar, l0.d dVar2) {
            while (true) {
                Unsafe unsafe = a;
                long j = b;
                l0 l0Var2 = l0Var;
                l0.d dVar3 = dVar;
                l0.d dVar4 = dVar2;
                if (unsafe.compareAndSwapObject(l0Var2, j, dVar3, dVar4)) {
                    return true;
                }
                if (unsafe.getObject(l0Var2, j) != dVar3) {
                    return false;
                }
                l0Var = l0Var2;
                dVar = dVar3;
                dVar2 = dVar4;
            }
        }

        @Override // m0.a
        public final boolean b(m0<?> m0Var, Object obj, Object obj2) {
            while (true) {
                Unsafe unsafe = a;
                long j = d;
                m0<?> m0Var2 = m0Var;
                Object obj3 = obj;
                Object obj4 = obj2;
                if (unsafe.compareAndSwapObject(m0Var2, j, obj3, obj4)) {
                    return true;
                }
                if (unsafe.getObject(m0Var2, j) != obj3) {
                    return false;
                }
                m0Var = m0Var2;
                obj = obj3;
                obj2 = obj4;
            }
        }

        @Override // m0.a
        public final boolean c(m0<?> m0Var, e eVar, e eVar2) {
            while (true) {
                Unsafe unsafe = a;
                long j = c;
                m0<?> m0Var2 = m0Var;
                e eVar3 = eVar;
                e eVar4 = eVar2;
                if (unsafe.compareAndSwapObject(m0Var2, j, eVar3, eVar4)) {
                    return true;
                }
                if (unsafe.getObject(m0Var2, j) != eVar3) {
                    return false;
                }
                m0Var = m0Var2;
                eVar = eVar3;
                eVar2 = eVar4;
            }
        }

        @Override // m0.a
        public final l0.d d(l0 l0Var, l0.d dVar) {
            l0.d dVar2;
            do {
                dVar2 = l0Var.c;
                if (dVar == dVar2) {
                    break;
                }
            } while (!a(l0Var, dVar2, dVar));
            return dVar2;
        }

        @Override // m0.a
        public final e e(l0 l0Var) {
            e eVar;
            e eVar2 = e.c;
            do {
                eVar = l0Var.d;
                if (eVar2 == eVar) {
                    break;
                }
            } while (!c(l0Var, eVar, eVar2));
            return eVar;
        }

        @Override // m0.a
        public final void f(e eVar, e eVar2) {
            a.putObject(eVar, f, eVar2);
        }

        @Override // m0.a
        public final void g(e eVar, Thread thread) {
            a.putObject(eVar, e, thread);
        }
    }

    public static final class e {
        public static final e c = new e();
        public volatile Thread a;
        public volatile e b;

        public e() {
            m0.h.g(this, Thread.currentThread());
        }
    }

    static {
        boolean z;
        a cVar;
        Throwable th;
        a dVar;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", TJAdUnitConstants.String.FALSE));
        } catch (SecurityException unused) {
            z = false;
        }
        g = z;
        String property = System.getProperty("java.runtime.name", "");
        Throwable e2 = null;
        if (property == null || property.contains("Android")) {
            try {
                dVar = new d();
            } catch (Error | Exception e3) {
                try {
                    cVar = new b();
                } catch (Error | Exception e4) {
                    e2 = e4;
                    cVar = new c();
                }
                a aVar = cVar;
                th = e3;
                dVar = aVar;
            }
        } else {
            try {
                dVar = new b();
            } catch (NoClassDefFoundError unused2) {
                dVar = new c();
            }
        }
        th = null;
        h = dVar;
        if (e2 != null) {
            wn4 wn4Var = f;
            Logger loggerA = wn4Var.a();
            Level level = Level.SEVERE;
            loggerA.log(level, "UnsafeAtomicHelper is broken!", th);
            wn4Var.a().log(level, "AtomicReferenceFieldUpdaterAtomicHelper is broken!", e2);
        }
    }

    public final void b(e eVar) {
        eVar.a = null;
        while (true) {
            e eVar2 = this.d;
            if (eVar2 == e.c) {
                return;
            }
            e eVar3 = null;
            while (eVar2 != null) {
                e eVar4 = eVar2.b;
                if (eVar2.a != null) {
                    eVar3 = eVar2;
                } else if (eVar3 != null) {
                    eVar3.b = eVar4;
                    if (eVar3.a == null) {
                    }
                } else if (!h.c(this, eVar2, eVar4)) {
                }
                eVar2 = eVar4;
            }
            return;
        }
    }
}
