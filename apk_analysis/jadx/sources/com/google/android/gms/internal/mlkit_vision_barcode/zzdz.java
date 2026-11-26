package com.google.android.gms.internal.mlkit_vision_barcode;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.tapjoy.TJAdUnitConstants;
import defpackage.bg;
import defpackage.me0;
import defpackage.n1;
import defpackage.pg;
import defpackage.xbb;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzdz<V> extends zzex implements zzet<V> {
    public static final boolean e;
    public static final xbb f;
    public static final b g;
    public static final Object h;
    public volatile Object b;
    public volatile e c;
    public volatile k d;

    static {
        boolean z;
        b hVar;
        Throwable th;
        Throwable th2;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", TJAdUnitConstants.String.FALSE));
        } catch (SecurityException unused) {
            z = false;
        }
        e = z;
        f = new xbb(zzdz.class);
        try {
            hVar = new j();
            th = null;
            th2 = null;
        } catch (Error | Exception e2) {
            try {
                th = null;
                th2 = e2;
                hVar = new f(AtomicReferenceFieldUpdater.newUpdater(k.class, Thread.class, CmcdData.OBJECT_TYPE_AUDIO_ONLY), AtomicReferenceFieldUpdater.newUpdater(k.class, k.class, "b"), AtomicReferenceFieldUpdater.newUpdater(zzdz.class, k.class, "d"), AtomicReferenceFieldUpdater.newUpdater(zzdz.class, e.class, "c"), AtomicReferenceFieldUpdater.newUpdater(zzdz.class, Object.class, "b"));
            } catch (Error | Exception e3) {
                hVar = new h();
                th = e3;
                th2 = e2;
            }
        }
        g = hVar;
        if (th != null) {
            xbb xbbVar = f;
            Logger loggerA = xbbVar.a();
            Level level = Level.SEVERE;
            loggerA.logp(level, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            xbbVar.a().logp(level, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
        h = new Object();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object d(zzet zzetVar) {
        Object obj;
        Throwable thA;
        if (zzetVar instanceof i) {
            Object cVar = ((zzdz) zzetVar).b;
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
        if ((zzetVar instanceof zzex) && (thA = ((zzex) zzetVar).a()) != null) {
            return new d(thA);
        }
        boolean zIsCancelled = zzetVar.isCancelled();
        boolean z = true;
        if ((!e) && zIsCancelled) {
            c cVar3 = c.d;
            Objects.requireNonNull(cVar3);
            return cVar3;
        }
        boolean z2 = false;
        while (true) {
            try {
                try {
                    try {
                        obj = zzetVar.get();
                        break;
                    } catch (Error e2) {
                        e = e2;
                        return new d(e);
                    }
                } catch (InterruptedException unused) {
                    z2 = z;
                } catch (Throwable th2) {
                    if (z2) {
                        Thread.currentThread().interrupt();
                    }
                    throw th2;
                }
            } catch (Error | Exception e3) {
                e = e3;
                return new d(e);
            } catch (CancellationException e4) {
                return !zIsCancelled ? new d(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(zzetVar)), e4)) : new c(false, e4);
            } catch (ExecutionException e5) {
                return zIsCancelled ? new c(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(zzetVar)), e5)) : new d(e5.getCause());
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
        if (zIsCancelled) {
            return new c(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(zzetVar))));
        }
        return obj == null ? h : obj;
    }

    public static void f(zzdz zzdzVar) {
        e eVar = null;
        while (true) {
            for (k kVarB = g.b(zzdzVar); kVarB != null; kVarB = kVarB.b) {
                Thread thread = kVarB.a;
                if (thread != null) {
                    kVarB.a = null;
                    LockSupport.unpark(thread);
                }
            }
            zzdzVar.c();
            e eVar2 = eVar;
            e eVarA = g.a(zzdzVar, e.d);
            e eVar3 = eVar2;
            while (eVarA != null) {
                e eVar4 = eVarA.c;
                eVarA.c = eVar3;
                eVar3 = eVarA;
                eVarA = eVar4;
            }
            while (eVar3 != null) {
                Runnable runnable = eVar3.a;
                e eVar5 = eVar3.c;
                Objects.requireNonNull(runnable);
                if (runnable instanceof g) {
                    g gVar = (g) runnable;
                    zzdzVar = gVar.b;
                    if (zzdzVar.b == gVar) {
                        if (g.f(zzdzVar, gVar, d(gVar.c))) {
                            eVar = eVar5;
                        }
                    } else {
                        continue;
                    }
                } else {
                    Executor executor = eVar3.b;
                    Objects.requireNonNull(executor);
                    g(runnable, executor);
                }
                eVar3 = eVar5;
            }
            return;
        }
    }

    public static void g(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e2) {
            f.a().logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "executeListener", pg.g("RuntimeException while executing runnable ", String.valueOf(runnable), " with executor ", String.valueOf(executor)), (Throwable) e2);
        }
    }

    public static final Object i(Object obj) throws ExecutionException {
        if (obj instanceof c) {
            Throwable th = ((c) obj).b;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof d) {
            throw new ExecutionException(((d) obj).a);
        }
        if (obj == h) {
            return null;
        }
        return obj;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzex
    public final Throwable a() {
        if (!(this instanceof i)) {
            return null;
        }
        Object obj = this.b;
        if (obj instanceof d) {
            return ((d) obj).a;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String b() {
        if (this instanceof ScheduledFuture) {
            return bg.d(((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS), "remaining delay=[", " ms]");
        }
        return null;
    }

    public void c() {
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        c cVar;
        Object obj = this.b;
        if (!(obj instanceof g) && !(obj == null)) {
            return false;
        }
        if (e) {
            cVar = new c(z, new CancellationException("Future.cancel() was called."));
        } else {
            cVar = z ? c.c : c.d;
            Objects.requireNonNull(cVar);
        }
        boolean z2 = false;
        while (true) {
            if (g.f(this, obj, cVar)) {
                f(this);
                if (obj instanceof g) {
                    zzet<? extends V> zzetVar = ((g) obj).c;
                    if (zzetVar instanceof i) {
                        this = (zzdz) zzetVar;
                        obj = this.b;
                        if ((obj == null) | (obj instanceof g)) {
                            z2 = true;
                        }
                    } else {
                        zzetVar.cancel(z);
                    }
                }
                return true;
            }
            obj = this.b;
            if (!(obj instanceof g)) {
                return z2;
            }
        }
    }

    public final void e(StringBuilder sb) {
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
    public final Object get(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        boolean z;
        long j2;
        k kVar = k.c;
        long nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.b;
        if ((obj != null) && (!(obj instanceof g))) {
            return i(obj);
        }
        long j3 = 0;
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            k kVar2 = this.d;
            if (kVar2 != kVar) {
                k kVar3 = new k();
                z = true;
                while (true) {
                    b bVar = g;
                    bVar.c(kVar3, kVar2);
                    if (bVar.g(this, kVar2, kVar3)) {
                        j2 = j3;
                        do {
                            LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                            if (Thread.interrupted()) {
                                h(kVar3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.b;
                            if ((obj2 != null) && (!(obj2 instanceof g))) {
                                return i(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        h(kVar3);
                        break;
                    }
                    long j4 = j3;
                    kVar2 = this.d;
                    if (kVar2 != kVar) {
                        j3 = j4;
                    }
                }
            }
            Object obj3 = this.b;
            Objects.requireNonNull(obj3);
            return i(obj3);
        }
        z = true;
        j2 = 0;
        while (nanos > j2) {
            Object obj4 = this.b;
            if ((obj4 != null ? z : false) && (!(obj4 instanceof g))) {
                return i(obj4);
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
            if (jConvert != j2 && nanos2 <= 1000) {
                z = false;
            }
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

    public final void h(k kVar) {
        kVar.a = null;
        while (true) {
            k kVar2 = this.d;
            if (kVar2 != k.c) {
                k kVar3 = null;
                while (kVar2 != null) {
                    k kVar4 = kVar2.b;
                    if (kVar2.a != null) {
                        kVar3 = kVar2;
                    } else if (kVar3 != null) {
                        kVar3.b = kVar4;
                        if (kVar3.a == null) {
                        }
                    } else if (!g.g(this, kVar2, kVar4)) {
                    }
                    kVar2 = kVar4;
                }
                return;
            }
            return;
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.b instanceof c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.b;
        return (obj != null) & (!(obj instanceof g));
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
            e(sb);
        } else {
            int length = sb.length();
            sb.append("PENDING");
            Object obj = this.b;
            if (obj instanceof g) {
                sb.append(", setFuture=[");
                zzet<? extends V> zzetVar = ((g) obj).c;
                try {
                    if (zzetVar == this) {
                        sb.append("this future");
                    } else {
                        sb.append(zzetVar);
                    }
                } catch (Exception e2) {
                    e = e2;
                    sb.append("Exception thrown from implementation: ");
                    sb.append(e.getClass());
                } catch (StackOverflowError e3) {
                    e = e3;
                    sb.append("Exception thrown from implementation: ");
                    sb.append(e.getClass());
                }
                sb.append("]");
            } else {
                try {
                    strConcat = zzba.zza(b());
                } catch (Exception | StackOverflowError e4) {
                    strConcat = "Exception thrown from implementation: ".concat(String.valueOf(e4.getClass()));
                }
                if (strConcat != null) {
                    n1.d(sb, ", info=[", strConcat, "]");
                }
            }
            if (isDone()) {
                sb.delete(length, sb.length());
                e(sb);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzet
    public final void zzl(Runnable runnable, Executor executor) {
        e eVar;
        zzaz.zzc(executor, "Executor was null.");
        if (!isDone() && (eVar = this.c) != e.d) {
            e eVar2 = new e(runnable, executor);
            do {
                eVar2.c = eVar;
                if (g.e(this, eVar, eVar2)) {
                    return;
                } else {
                    eVar = this.c;
                }
            } while (eVar != e.d);
        }
        g(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException {
        Object obj;
        k kVar = k.c;
        if (!Thread.interrupted()) {
            Object obj2 = this.b;
            if ((obj2 != null) & (!(obj2 instanceof g))) {
                return i(obj2);
            }
            k kVar2 = this.d;
            if (kVar2 != kVar) {
                k kVar3 = new k();
                do {
                    b bVar = g;
                    bVar.c(kVar3, kVar2);
                    if (bVar.g(this, kVar2, kVar3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.b;
                            } else {
                                h(kVar3);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof g))));
                        return i(obj);
                    }
                    kVar2 = this.d;
                } while (kVar2 != kVar);
            }
            Object obj3 = this.b;
            Objects.requireNonNull(obj3);
            return i(obj3);
        }
        throw new InterruptedException();
    }
}
