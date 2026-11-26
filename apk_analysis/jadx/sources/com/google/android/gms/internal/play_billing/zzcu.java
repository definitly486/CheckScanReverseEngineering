package com.google.android.gms.internal.play_billing;

import defpackage.bg;
import defpackage.me0;
import defpackage.n1;
import defpackage.pg;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzcu<V> extends m<V> {
    public static Object c(Object obj) throws ExecutionException {
        if (obj instanceof c) {
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(((c) obj).b);
            throw cancellationException;
        }
        if (obj instanceof e) {
            throw new ExecutionException(((e) obj).a);
        }
        if (obj == m.e) {
            return null;
        }
        return obj;
    }

    public static boolean f(Object obj) {
        return !(obj instanceof d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object g(zzdk zzdkVar) {
        Object obj;
        Throwable thA;
        if (zzdkVar instanceof g) {
            Object cVar = ((zzcu) zzdkVar).b;
            if (cVar instanceof c) {
                c cVar2 = (c) cVar;
                if (cVar2.a) {
                    Throwable th = cVar2.b;
                    cVar = th != null ? new c(false, th) : c.d;
                }
            }
            Objects.requireNonNull(cVar);
            return cVar;
        }
        if ((zzdkVar instanceof zzdq) && (thA = ((zzdq) zzdkVar).a()) != null) {
            return new e(thA);
        }
        boolean zIsCancelled = zzdkVar.isCancelled();
        boolean z = true;
        if ((!m.g) && zIsCancelled) {
            c cVar3 = c.d;
            Objects.requireNonNull(cVar3);
            return cVar3;
        }
        boolean z2 = false;
        while (true) {
            try {
                try {
                    try {
                        obj = zzdkVar.get();
                        break;
                    } catch (Error e) {
                        e = e;
                        return new e(e);
                    }
                } catch (InterruptedException unused) {
                    z2 = z;
                } catch (Throwable th2) {
                    if (z2) {
                        Thread.currentThread().interrupt();
                    }
                    throw th2;
                }
            } catch (Error | Exception e2) {
                e = e2;
                return new e(e);
            } catch (CancellationException e3) {
                return !zIsCancelled ? new e(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(zzdkVar)), e3)) : new c(false, e3);
            } catch (ExecutionException e4) {
                return zIsCancelled ? new c(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(zzdkVar)), e4)) : new e(e4.getCause());
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
        if (zIsCancelled) {
            return new c(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(zzdkVar))));
        }
        return obj == null ? m.e : obj;
    }

    public static void i(zzcu zzcuVar) {
        f fVar = null;
        while (true) {
            zzcuVar.getClass();
            for (l lVarB = m.h.b(zzcuVar); lVarB != null; lVarB = lVarB.b) {
                Thread thread = lVarB.a;
                if (thread != null) {
                    lVarB.a = null;
                    LockSupport.unpark(thread);
                }
            }
            zzcuVar.e();
            f fVar2 = fVar;
            f fVarA = m.h.a(zzcuVar, f.d);
            f fVar3 = fVar2;
            while (fVarA != null) {
                f fVar4 = fVarA.c;
                fVarA.c = fVar3;
                fVar3 = fVarA;
                fVarA = fVar4;
            }
            while (fVar3 != null) {
                Runnable runnable = fVar3.a;
                f fVar5 = fVar3.c;
                Objects.requireNonNull(runnable);
                if (runnable instanceof d) {
                    d dVar = (d) runnable;
                    zzcuVar = dVar.b;
                    if (zzcuVar.b == dVar) {
                        if (m.h.f(zzcuVar, dVar, g(dVar.c))) {
                            fVar = fVar5;
                        }
                    } else {
                        continue;
                    }
                } else {
                    Executor executor = fVar3.b;
                    Objects.requireNonNull(executor);
                    j(runnable, executor);
                }
                fVar3 = fVar5;
            }
            return;
        }
    }

    public static void j(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e) {
            m.f.a().logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "executeListener", pg.g("RuntimeException while executing runnable ", String.valueOf(runnable), " with executor ", String.valueOf(executor)), (Throwable) e);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzdq
    public final Throwable a() {
        if (!(this instanceof g)) {
            return null;
        }
        Object obj = this.b;
        if (obj instanceof e) {
            return ((e) obj).a;
        }
        return null;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        c cVar;
        Object obj = this.b;
        if (!(obj instanceof d) && !(obj == null)) {
            return false;
        }
        if (m.g) {
            cVar = new c(z, new CancellationException("Future.cancel() was called."));
        } else {
            cVar = z ? c.c : c.d;
            Objects.requireNonNull(cVar);
        }
        boolean z2 = false;
        while (true) {
            if (m.h.f(this, obj, cVar)) {
                i(this);
                if (obj instanceof d) {
                    zzdk<? extends V> zzdkVar = ((d) obj).c;
                    if (zzdkVar instanceof g) {
                        this = (zzcu) zzdkVar;
                        obj = this.b;
                        if ((obj == null) | (obj instanceof d)) {
                            z2 = true;
                        }
                    } else {
                        zzdkVar.cancel(z);
                    }
                }
                return true;
            }
            obj = this.b;
            if (f(obj)) {
                return z2;
            }
        }
    }

    public String d() {
        throw null;
    }

    public void e() {
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        long j2;
        l lVar = l.c;
        long nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.b;
        if ((obj != null) && f(obj)) {
            return c(obj);
        }
        long j3 = 0;
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            l lVar2 = this.d;
            if (lVar2 != lVar) {
                l lVar3 = new l();
                while (true) {
                    h hVar = m.h;
                    hVar.c(lVar3, lVar2);
                    if (hVar.g(this, lVar2, lVar3)) {
                        j2 = j3;
                        do {
                            LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                            if (Thread.interrupted()) {
                                b(lVar3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.b;
                            if ((obj2 != null) && f(obj2)) {
                                return c(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        b(lVar3);
                        break;
                    }
                    long j4 = j3;
                    lVar2 = this.d;
                    if (lVar2 != lVar) {
                        j3 = j4;
                    }
                }
            }
            Object obj3 = this.b;
            Objects.requireNonNull(obj3);
            return c(obj3);
        }
        j2 = 0;
        while (nanos > j2) {
            Object obj4 = this.b;
            if ((obj4 != null) && f(obj4)) {
                return c(obj4);
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
        String strConcat = "Waited " + j + " " + timeUnit.toString().toLowerCase(locale);
        if (nanos + 1000 < j2) {
            String strConcat2 = strConcat.concat(" (plus ");
            long j5 = -nanos;
            long jConvert = timeUnit.convert(j5, TimeUnit.NANOSECONDS);
            long nanos2 = j5 - timeUnit.toNanos(jConvert);
            boolean z = jConvert == j2 || nanos2 > 1000;
            if (jConvert > j2) {
                String strConcat3 = strConcat2 + jConvert + " " + lowerCase;
                if (z) {
                    strConcat3 = strConcat3.concat(StringUtils.COMMA);
                }
                strConcat2 = strConcat3.concat(" ");
            }
            if (z) {
                strConcat2 = bg.d(nanos2, strConcat2, " nanoseconds ");
            }
            strConcat = strConcat2.concat("delay)");
        }
        if (isDone()) {
            throw new TimeoutException(strConcat.concat(" but future completed as timeout expired"));
        }
        throw new TimeoutException(me0.c(strConcat, " for ", string));
    }

    public final void h(StringBuilder sb) {
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
            } catch (ExecutionException e) {
                sb.append("FAILURE, cause=[");
                sb.append(e.getCause());
                sb.append("]");
                return;
            } catch (Exception e2) {
                sb.append("UNKNOWN, cause=[");
                sb.append(e2.getClass());
                sb.append(" thrown from get()]");
                return;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        sb.append("SUCCESS, result=[");
        if (v == null) {
            sb.append("null");
        } else if (v == this) {
            sb.append("this future");
        } else {
            sb.append(v.getClass().getName());
            sb.append("@");
            sb.append(Integer.toHexString(System.identityHashCode(v)));
        }
        sb.append("]");
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.b instanceof c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.b;
        return (obj != null) & f(obj);
    }

    public final String toString() {
        String strConcat;
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (this.b instanceof c) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            h(sb);
        } else {
            int length = sb.length();
            sb.append("PENDING");
            Object obj = this.b;
            if (obj instanceof d) {
                sb.append(", setFuture=[");
                zzdk<? extends V> zzdkVar = ((d) obj).c;
                try {
                    if (zzdkVar == this) {
                        sb.append("this future");
                    } else {
                        sb.append(zzdkVar);
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
                    strConcat = zzbo.zza(d());
                } catch (Throwable th2) {
                    if ((th2 instanceof Error) && !(th2 instanceof StackOverflowError)) {
                        throw th2;
                    }
                    strConcat = "Exception thrown from implementation: ".concat(String.valueOf(th2.getClass()));
                }
                if (strConcat != null) {
                    n1.d(sb, ", info=[", strConcat, "]");
                }
            }
            if (isDone()) {
                sb.delete(length, sb.length());
                h(sb);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.play_billing.zzdk
    public final void zzb(Runnable runnable, Executor executor) {
        f fVar;
        zzbl.zzc(executor, "Executor was null.");
        if (!isDone() && (fVar = this.c) != f.d) {
            f fVar2 = new f(runnable, executor);
            do {
                fVar2.c = fVar;
                if (m.h.e(this, fVar, fVar2)) {
                    return;
                } else {
                    fVar = this.c;
                }
            } while (fVar != f.d);
        }
        j(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException {
        Object obj;
        l lVar = l.c;
        if (!Thread.interrupted()) {
            Object obj2 = this.b;
            if ((obj2 != null) & f(obj2)) {
                return c(obj2);
            }
            l lVar2 = this.d;
            if (lVar2 != lVar) {
                l lVar3 = new l();
                do {
                    h hVar = m.h;
                    hVar.c(lVar3, lVar2);
                    if (hVar.g(this, lVar2, lVar3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.b;
                            } else {
                                b(lVar3);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & f(obj)));
                        return c(obj);
                    }
                    lVar2 = this.d;
                } while (lVar2 != lVar);
            }
            Object obj3 = this.b;
            Objects.requireNonNull(obj3);
            return c(obj3);
        }
        throw new InterruptedException();
    }
}
