package com.google.android.gms.internal.play_billing;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.tapjoy.TJAdUnitConstants;
import defpackage.a4c;
import defpackage.bg;
import defpackage.byb;
import defpackage.emb;
import defpackage.i1c;
import defpackage.me0;
import defpackage.n1;
import defpackage.ohb;
import defpackage.pg;
import defpackage.rub;
import defpackage.x8b;
import defpackage.y14;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Locale;
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
public class zzo implements zzdk {
    public static final boolean e = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", TJAdUnitConstants.String.FALSE));
    public static final Logger f = Logger.getLogger(zzo.class.getName());
    public static final y14 g;
    public static final Object h;
    public static final /* synthetic */ int zzf = 0;
    public volatile Object b;
    public volatile emb c;
    public volatile a4c d;

    static {
        y14 i1cVar;
        try {
            i1cVar = new rub(AtomicReferenceFieldUpdater.newUpdater(a4c.class, Thread.class, CmcdData.OBJECT_TYPE_AUDIO_ONLY), AtomicReferenceFieldUpdater.newUpdater(a4c.class, a4c.class, "b"), AtomicReferenceFieldUpdater.newUpdater(zzo.class, a4c.class, "d"), AtomicReferenceFieldUpdater.newUpdater(zzo.class, emb.class, "c"), AtomicReferenceFieldUpdater.newUpdater(zzo.class, Object.class, "b"));
            th = null;
        } catch (Throwable th) {
            th = th;
            i1cVar = new i1c();
        }
        Throwable th2 = th;
        g = i1cVar;
        if (th2 != null) {
            f.logp(Level.SEVERE, "com.android.billingclient.util.concurrent.AbstractResolvableFuture", "<clinit>", "SafeAtomicHelper is broken!", th2);
        }
        h = new Object();
    }

    public static void b(zzo zzoVar) {
        a4c a4cVar;
        y14 y14Var;
        emb embVar;
        do {
            a4cVar = zzoVar.d;
            y14Var = g;
        } while (!y14Var.T(zzoVar, a4cVar, a4c.c));
        while (a4cVar != null) {
            Thread thread = a4cVar.a;
            if (thread != null) {
                a4cVar.a = null;
                LockSupport.unpark(thread);
            }
            a4cVar = a4cVar.b;
        }
        do {
            embVar = zzoVar.c;
        } while (!y14Var.R(zzoVar, embVar, emb.d));
        emb embVar2 = null;
        while (embVar != null) {
            emb embVar3 = embVar.c;
            embVar.c = embVar2;
            embVar2 = embVar;
            embVar = embVar3;
        }
        while (embVar2 != null) {
            Runnable runnable = embVar2.a;
            emb embVar4 = embVar2.c;
            if (runnable instanceof byb) {
                throw null;
            }
            d(runnable, embVar2.b);
            embVar2 = embVar4;
        }
    }

    public static void d(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            f.logp(Level.SEVERE, "com.android.billingclient.util.concurrent.AbstractResolvableFuture", "executeListener", pg.g("RuntimeException while executing runnable ", String.valueOf(runnable), " with executor ", String.valueOf(executor)), (Throwable) e2);
        }
    }

    public static final Object f(Object obj) throws ExecutionException {
        if (obj instanceof x8b) {
            Throwable th = ((x8b) obj).a;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof ohb) {
            throw new ExecutionException(((ohb) obj).a);
        }
        if (obj == h) {
            return null;
        }
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String a() {
        if (this.b instanceof byb) {
            return "setFuture=[null]";
        }
        if (this instanceof ScheduledFuture) {
            return bg.d(((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS), "remaining delay=[", " ms]");
        }
        return null;
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
            } catch (RuntimeException e2) {
                sb.append("UNKNOWN, cause=[");
                sb.append(e2.getClass());
                sb.append(" thrown from get()]");
                return;
            } catch (ExecutionException e3) {
                sb.append("FAILURE, cause=[");
                sb.append(e3.getCause());
                sb.append("]");
                return;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        sb.append("SUCCESS, result=[");
        sb.append(v == this ? "this future" : String.valueOf(v));
        sb.append("]");
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        x8b x8bVar;
        Object obj = this.b;
        if ((obj instanceof byb) | (obj == null)) {
            if (e) {
                x8bVar = new x8b(new CancellationException("Future.cancel() was called."));
            } else {
                x8bVar = z ? x8b.b : x8b.c;
            }
            while (!g.S(this, obj, x8bVar)) {
                obj = this.b;
                if (!(obj instanceof byb)) {
                }
            }
            b(this);
            if (obj instanceof byb) {
                throw null;
            }
            return true;
        }
        return false;
    }

    public final void e(a4c a4cVar) {
        a4cVar.a = null;
        while (true) {
            a4c a4cVar2 = this.d;
            if (a4cVar2 != a4c.c) {
                a4c a4cVar3 = null;
                while (a4cVar2 != null) {
                    a4c a4cVar4 = a4cVar2.b;
                    if (a4cVar2.a != null) {
                        a4cVar3 = a4cVar2;
                    } else if (a4cVar3 != null) {
                        a4cVar3.b = a4cVar4;
                        if (a4cVar3.a == null) {
                        }
                    } else if (!g.T(this, a4cVar2, a4cVar4)) {
                    }
                    a4cVar2 = a4cVar4;
                }
                return;
            }
            return;
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        boolean z;
        long nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.b;
        if ((obj != null) && (!(obj instanceof byb))) {
            return f(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            a4c a4cVar = this.d;
            a4c a4cVar2 = a4c.c;
            if (a4cVar != a4cVar2) {
                a4c a4cVar3 = new a4c();
                z = true;
                while (true) {
                    y14 y14Var = g;
                    y14Var.P(a4cVar3, a4cVar);
                    if (y14Var.T(this, a4cVar, a4cVar3)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                e(a4cVar3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.b;
                            if ((obj2 != null) && (!(obj2 instanceof byb))) {
                                return f(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        e(a4cVar3);
                        break;
                    }
                    a4cVar = this.d;
                    if (a4cVar == a4cVar2) {
                    }
                }
            }
            return f(this.b);
        }
        z = true;
        while (nanos > 0) {
            Object obj3 = this.b;
            if ((obj3 != null ? z : false) && (!(obj3 instanceof byb))) {
                return f(obj3);
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
        if (nanos + 1000 < 0) {
            String strConcat2 = strConcat.concat(" (plus ");
            long j2 = -nanos;
            long jConvert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
            long nanos2 = j2 - timeUnit.toNanos(jConvert);
            if (jConvert != 0 && nanos2 <= 1000) {
                z = false;
            }
            if (jConvert > 0) {
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

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.b instanceof x8b;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.b;
        return (obj != null) & (!(obj instanceof byb));
    }

    public final String toString() {
        String strConcat;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.b instanceof x8b) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            c(sb);
        } else {
            try {
                strConcat = a();
            } catch (RuntimeException e2) {
                strConcat = "Exception thrown from implementation: ".concat(String.valueOf(e2.getClass()));
            }
            if (strConcat != null && !strConcat.isEmpty()) {
                n1.d(sb, "PENDING, info=[", strConcat, "]");
            } else if (isDone()) {
                c(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.play_billing.zzdk
    public final void zzb(Runnable runnable, Executor executor) {
        executor.getClass();
        emb embVar = this.c;
        emb embVar2 = emb.d;
        if (embVar != embVar2) {
            emb embVar3 = new emb(runnable, executor);
            do {
                embVar3.c = embVar;
                if (g.R(this, embVar, embVar3)) {
                    return;
                } else {
                    embVar = this.c;
                }
            } while (embVar != embVar2);
        }
        d(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.b;
            if ((obj2 != null) & (!(obj2 instanceof byb))) {
                return f(obj2);
            }
            a4c a4cVar = this.d;
            a4c a4cVar2 = a4c.c;
            if (a4cVar != a4cVar2) {
                a4c a4cVar3 = new a4c();
                do {
                    y14 y14Var = g;
                    y14Var.P(a4cVar3, a4cVar);
                    if (y14Var.T(this, a4cVar, a4cVar3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.b;
                            } else {
                                e(a4cVar3);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof byb))));
                        return f(obj);
                    }
                    a4cVar = this.d;
                } while (a4cVar != a4cVar2);
            }
            return f(this.b);
        }
        throw new InterruptedException();
    }
}
