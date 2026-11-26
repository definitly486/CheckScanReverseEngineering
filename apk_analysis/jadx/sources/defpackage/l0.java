package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes4.dex */
public abstract class l0<V> extends m0<V> {

    public static final class a {
        public static final a c;
        public static final a d;
        public final boolean a;
        public final Throwable b;

        static {
            if (m0.g) {
                d = null;
                c = null;
            } else {
                d = new a(false, null);
                c = new a(true, null);
            }
        }

        public a(boolean z, Throwable th) {
            this.a = z;
            this.b = th;
        }
    }

    public static final class b<V> implements Runnable {
        public final l0<V> b;
        public final ListenableFuture<? extends V> c;

        public b(l0<V> l0Var, ListenableFuture<? extends V> listenableFuture) {
            this.b = l0Var;
            this.c = listenableFuture;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.b.b != this) {
                return;
            }
            Object objI = l0.i(this.c);
            if (m0.h.b(this.b, this, objI)) {
                l0.f(this.b, false);
            }
        }
    }

    public static final class c {
        public static final c b = new c(new a("Failure occurred while trying to finish a future."));
        public final Throwable a;

        public class a extends Throwable {
            @Override // java.lang.Throwable
            public final Throwable fillInStackTrace() {
                return this;
            }
        }

        public c(Throwable th) {
            th.getClass();
            this.a = th;
        }
    }

    public interface e<V> extends ListenableFuture<V> {
    }

    public static abstract class f<V> extends l0<V> implements e<V> {
        @Override // defpackage.l0, java.util.concurrent.Future
        public final boolean isCancelled() {
            return this.b instanceof a;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void f(l0<?> l0Var, boolean z) {
        d dVar = null;
        while (true) {
            for (m0.e eVarE = m0.h.e(l0Var); eVarE != null; eVarE = eVarE.b) {
                Thread thread = eVarE.a;
                if (thread != null) {
                    eVarE.a = null;
                    LockSupport.unpark(thread);
                }
            }
            if (z) {
                l0Var.j();
                z = false;
            }
            l0Var.d();
            d dVar2 = dVar;
            d dVarD = m0.h.d(l0Var, d.d);
            d dVar3 = dVar2;
            while (dVarD != null) {
                d dVar4 = dVarD.c;
                dVarD.c = dVar3;
                dVar3 = dVarD;
                dVarD = dVar4;
            }
            while (dVar3 != null) {
                dVar = dVar3.c;
                Runnable runnable = dVar3.a;
                Objects.requireNonNull(runnable);
                if (runnable instanceof b) {
                    b bVar = (b) runnable;
                    l0Var = bVar.b;
                    if (l0Var.b == bVar) {
                        if (m0.h.b(l0Var, bVar, i(bVar.c))) {
                        }
                    } else {
                        continue;
                    }
                } else {
                    Executor executor = dVar3.b;
                    Objects.requireNonNull(executor);
                    g(runnable, executor);
                }
                dVar3 = dVar;
            }
            return;
        }
    }

    public static void g(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e2) {
            m0.f.a().log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <V> V h(Object obj) throws ExecutionException {
        if (obj instanceof a) {
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(((a) obj).b);
            throw cancellationException;
        }
        if (obj instanceof c) {
            throw new ExecutionException(((c) obj).a);
        }
        if (obj == m0.e) {
            return null;
        }
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object i(ListenableFuture<?> listenableFuture) {
        Object obj;
        Throwable thA;
        if (listenableFuture instanceof e) {
            Object aVar = ((l0) listenableFuture).b;
            if (aVar instanceof a) {
                a aVar2 = (a) aVar;
                if (aVar2.a) {
                    aVar = aVar2.b != null ? new a(false, aVar2.b) : a.d;
                }
            }
            Objects.requireNonNull(aVar);
            return aVar;
        }
        if ((listenableFuture instanceof j94) && (thA = ((j94) listenableFuture).a()) != null) {
            return new c(thA);
        }
        boolean zIsCancelled = listenableFuture.isCancelled();
        boolean z = true;
        if ((!m0.g) && zIsCancelled) {
            a aVar3 = a.d;
            Objects.requireNonNull(aVar3);
            return aVar3;
        }
        boolean z2 = false;
        while (true) {
            try {
                try {
                    try {
                        obj = listenableFuture.get();
                        break;
                    } catch (Error e2) {
                        e = e2;
                        return new c(e);
                    }
                } catch (InterruptedException unused) {
                    z2 = z;
                } catch (Throwable th) {
                    if (z2) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            } catch (Error | Exception e3) {
                e = e3;
                return new c(e);
            } catch (CancellationException e4) {
                if (zIsCancelled) {
                    return new a(false, e4);
                }
                return new c(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + listenableFuture, e4));
            } catch (ExecutionException e5) {
                if (!zIsCancelled) {
                    return new c(e5.getCause());
                }
                return new a(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + listenableFuture, e5));
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
        if (!zIsCancelled) {
            return obj == null ? m0.e : obj;
        }
        return new a(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + listenableFuture));
    }

    @Override // defpackage.j94
    public final Throwable a() {
        if (!(this instanceof e)) {
            return null;
        }
        Object obj = this.b;
        if (obj instanceof c) {
            return ((c) obj).a;
        }
        return null;
    }

    public void addListener(Runnable runnable, Executor executor) {
        d dVar;
        o8.l(runnable, "Runnable was null.");
        o8.l(executor, "Executor was null.");
        if (!isDone() && (dVar = this.c) != d.d) {
            d dVar2 = new d(runnable, executor);
            do {
                dVar2.c = dVar;
                if (m0.h.a(this, dVar, dVar2)) {
                    return;
                } else {
                    dVar = this.c;
                }
            } while (dVar != d.d);
        }
        g(runnable, executor);
    }

    public final void c(StringBuilder sb) {
        V v;
        boolean z = false;
        while (true) {
            try {
                try {
                    v = get();
                    break;
                } catch (InterruptedException unused) {
                    z = true;
                } catch (Throwable th) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            } catch (CancellationException unused2) {
                sb.append("CANCELLED");
                return;
            } catch (ExecutionException e2) {
                sb.append("FAILURE, cause=[");
                sb.append(e2.getCause());
                sb.append("]");
                return;
            } catch (Exception e3) {
                sb.append("UNKNOWN, cause=[");
                sb.append(e3.getClass());
                sb.append(" thrown from get()]");
                return;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        sb.append("SUCCESS, result=[");
        e(v, sb);
        sb.append("]");
    }

    public boolean cancel(boolean z) {
        a aVar;
        Object obj = this.b;
        if (!(obj == null) && !(obj instanceof b)) {
            return false;
        }
        if (m0.g) {
            aVar = new a(z, new CancellationException("Future.cancel() was called."));
        } else {
            aVar = z ? a.c : a.d;
            Objects.requireNonNull(aVar);
        }
        boolean z2 = false;
        while (true) {
            if (m0.h.b(this, obj, aVar)) {
                f(this, z);
                if (obj instanceof b) {
                    ListenableFuture<? extends V> listenableFuture = ((b) obj).c;
                    if (listenableFuture instanceof e) {
                        this = (l0) listenableFuture;
                        obj = this.b;
                        if ((obj == null) | (obj instanceof b)) {
                            z2 = true;
                        }
                    } else {
                        listenableFuture.cancel(z);
                    }
                }
                return true;
            }
            obj = this.b;
            if (!(obj instanceof b)) {
                return z2;
            }
        }
    }

    public void d() {
    }

    public final void e(Object obj, StringBuilder sb) {
        if (obj == null) {
            sb.append("null");
        } else {
            if (obj == this) {
                sb.append("this future");
                return;
            }
            sb.append(obj.getClass().getName());
            sb.append("@");
            sb.append(Integer.toHexString(System.identityHashCode(obj)));
        }
    }

    public V get(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        boolean z;
        long j2;
        m0.e eVar = m0.e.c;
        long nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.b;
        if ((obj != null) && (!(obj instanceof b))) {
            return (V) h(obj);
        }
        long j3 = 0;
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            m0.e eVar2 = this.d;
            if (eVar2 != eVar) {
                m0.e eVar3 = new m0.e();
                z = true;
                while (true) {
                    m0.a aVar = m0.h;
                    aVar.f(eVar3, eVar2);
                    if (aVar.c(this, eVar2, eVar3)) {
                        j2 = j3;
                        do {
                            LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                            if (Thread.interrupted()) {
                                b(eVar3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.b;
                            if ((obj2 != null) && (!(obj2 instanceof b))) {
                                return (V) h(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        b(eVar3);
                        break;
                    }
                    long j4 = j3;
                    eVar2 = this.d;
                    if (eVar2 != eVar) {
                        j3 = j4;
                    }
                }
            }
            Object obj3 = this.b;
            Objects.requireNonNull(obj3);
            return (V) h(obj3);
        }
        z = true;
        j2 = 0;
        while (nanos > j2) {
            Object obj4 = this.b;
            if ((obj4 != null ? z : false) && (!(obj4 instanceof b))) {
                return (V) h(obj4);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = jNanoTime - System.nanoTime();
        }
        String string = toString();
        String string2 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = string2.toLowerCase(locale);
        StringBuilder sbF = xp.f(j, "Waited ", " ");
        sbF.append(timeUnit.toString().toLowerCase(locale));
        String string3 = sbF.toString();
        if (nanos + 1000 < j2) {
            String strConcat = string3.concat(" (plus ");
            long j5 = -nanos;
            long jConvert = timeUnit.convert(j5, TimeUnit.NANOSECONDS);
            long nanos2 = j5 - timeUnit.toNanos(jConvert);
            boolean z2 = (jConvert == j2 || nanos2 > 1000) ? z : false;
            if (jConvert > j2) {
                String strConcat2 = strConcat + jConvert + " " + lowerCase;
                if (z2) {
                    strConcat2 = strConcat2.concat(StringUtils.COMMA);
                }
                strConcat = strConcat2.concat(" ");
            }
            if (z2) {
                strConcat = bg.d(nanos2, strConcat, " nanoseconds ");
            }
            string3 = strConcat.concat("delay)");
        }
        if (isDone()) {
            throw new TimeoutException(string3.concat(" but future completed as timeout expired"));
        }
        throw new TimeoutException(me0.c(string3, " for ", string));
    }

    public boolean isCancelled() {
        return this.b instanceof a;
    }

    public boolean isDone() {
        Object obj = this.b;
        return (!(obj instanceof b)) & (obj != null);
    }

    public void j() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String k() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public boolean l(V v) {
        if (v == null) {
            v = (V) m0.e;
        }
        if (!m0.h.b(this, null, v)) {
            return false;
        }
        f(this, false);
        return true;
    }

    public boolean m(Throwable th) {
        if (!m0.h.b(this, null, new c(th))) {
            return false;
        }
        f(this, false);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0048  */
    public boolean n(ListenableFuture<? extends V> listenableFuture) {
        c cVar;
        listenableFuture.getClass();
        Object obj = this.b;
        if (obj != null) {
            if (obj instanceof a) {
                listenableFuture.cancel(((a) obj).a);
            }
        } else if (listenableFuture.isDone()) {
            if (m0.h.b(this, null, i(listenableFuture))) {
                f(this, false);
                return true;
            }
        } else {
            b bVar = new b(this, listenableFuture);
            if (m0.h.b(this, null, bVar)) {
                try {
                    listenableFuture.addListener(bVar, jn2.INSTANCE);
                    return true;
                } catch (Throwable th) {
                    try {
                        cVar = new c(th);
                    } catch (Error | Exception unused) {
                        cVar = c.b;
                    }
                    m0.h.b(this, bVar, cVar);
                    return true;
                }
            }
            obj = this.b;
            if (obj instanceof a) {
                listenableFuture.cancel(((a) obj).a);
            }
        }
        return false;
    }

    public final boolean o() {
        Object obj = this.b;
        return (obj instanceof a) && ((a) obj).a;
    }

    public String toString() {
        String strK;
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            c(sb);
        } else {
            int length = sb.length();
            sb.append("PENDING");
            Object obj = this.b;
            if (obj instanceof b) {
                sb.append(", setFuture=[");
                ListenableFuture<? extends V> listenableFuture = ((b) obj).c;
                try {
                    if (listenableFuture == this) {
                        sb.append("this future");
                    } else {
                        sb.append(listenableFuture);
                    }
                } catch (Throwable th) {
                    if ((th instanceof Error) && !(th instanceof StackOverflowError)) {
                        throw th;
                    }
                    sb.append("Exception thrown from implementation: ");
                    sb.append(th.getClass());
                }
                sb.append("]");
            } else {
                try {
                    strK = k();
                    if (i13.b(strK)) {
                        strK = null;
                    }
                } catch (Throwable th2) {
                    if ((th2 instanceof Error) && !(th2 instanceof StackOverflowError)) {
                        throw th2;
                    }
                    strK = "Exception thrown from implementation: " + th2.getClass();
                }
                if (strK != null) {
                    n1.d(sb, ", info=[", strK, "]");
                }
            }
            if (isDone()) {
                sb.delete(length, sb.length());
                c(sb);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public static final class d {
        public static final d d = new d();
        public final Runnable a;
        public final Executor b;
        public d c;

        public d() {
            this.a = null;
            this.b = null;
        }

        public d(Runnable runnable, Executor executor) {
            this.a = runnable;
            this.b = executor;
        }
    }

    public V get() throws InterruptedException {
        Object obj;
        m0.e eVar = m0.e.c;
        if (!Thread.interrupted()) {
            Object obj2 = this.b;
            if ((obj2 != null) & (!(obj2 instanceof b))) {
                return (V) h(obj2);
            }
            m0.e eVar2 = this.d;
            if (eVar2 != eVar) {
                m0.e eVar3 = new m0.e();
                do {
                    m0.a aVar = m0.h;
                    aVar.f(eVar3, eVar2);
                    if (aVar.c(this, eVar2, eVar3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.b;
                            } else {
                                b(eVar3);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof b))));
                        return (V) h(obj);
                    }
                    eVar2 = this.d;
                } while (eVar2 != eVar);
            }
            Object obj3 = this.b;
            Objects.requireNonNull(obj3);
            return (V) h(obj3);
        }
        throw new InterruptedException();
    }
}
