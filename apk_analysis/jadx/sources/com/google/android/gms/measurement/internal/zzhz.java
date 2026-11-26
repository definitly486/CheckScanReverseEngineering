package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.ah;
import defpackage.dpb;
import defpackage.hpb;
import defpackage.lpb;
import defpackage.mvb;
import defpackage.xp;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhz extends mvb {
    public static final AtomicLong k = new AtomicLong(Long.MIN_VALUE);
    public lpb c;
    public lpb d;
    public final PriorityBlockingQueue e;
    public final LinkedBlockingQueue f;
    public final dpb g;
    public final dpb h;
    public final Object i;
    public final Semaphore j;

    public zzhz(zzic zzicVar) {
        super(zzicVar);
        this.i = new Object();
        this.j = new Semaphore(2);
        this.e = new PriorityBlockingQueue();
        this.f = new LinkedBlockingQueue();
        this.g = new dpb(this, "Thread death: Uncaught exception on worker thread");
        this.h = new dpb(this, "Thread death: Uncaught exception on network thread");
    }

    @Override // defpackage.mvb
    public final boolean a() {
        return false;
    }

    public final Object d(AtomicReference atomicReference, long j, String str, Runnable runnable) {
        synchronized (atomicReference) {
            this.a.zzaX().zzj(runnable);
            try {
                atomicReference.wait(j);
            } catch (InterruptedException unused) {
                zzgs zzgsVarZze = this.a.zzaW().zze();
                StringBuilder sb = new StringBuilder(str.length() + 24);
                sb.append("Interrupted waiting for ");
                sb.append(str);
                zzgsVarZze.zza(sb.toString());
                return null;
            }
        }
        Object obj = atomicReference.get();
        if (obj == null) {
            this.a.zzaW().zze().zza("Timed out waiting for ".concat(str));
        }
        return obj;
    }

    public final void e(hpb hpbVar) {
        synchronized (this.i) {
            try {
                PriorityBlockingQueue priorityBlockingQueue = this.e;
                priorityBlockingQueue.add(hpbVar);
                lpb lpbVar = this.c;
                if (lpbVar == null) {
                    lpb lpbVar2 = new lpb(this, "Measurement Worker", priorityBlockingQueue);
                    this.c = lpbVar2;
                    lpbVar2.setUncaughtExceptionHandler(this.g);
                    this.c.start();
                } else {
                    Object obj = lpbVar.b;
                    synchronized (obj) {
                        obj.notifyAll();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.jvb
    public final void zzaY() {
        if (Thread.currentThread() == this.d) {
            return;
        }
        ah.f("Call expected from network thread");
    }

    public final void zzd() {
        if (Thread.currentThread() != this.c) {
            return;
        }
        ah.f("Call not expected from worker thread");
    }

    public final boolean zze() {
        return Thread.currentThread() == this.c;
    }

    public final boolean zzf() {
        return Thread.currentThread() == this.d;
    }

    @Override // defpackage.jvb
    public final void zzg() {
        if (Thread.currentThread() == this.c) {
            return;
        }
        ah.f("Call expected from worker thread");
    }

    public final Future zzh(Callable callable) {
        c();
        Preconditions.checkNotNull(callable);
        hpb hpbVar = new hpb(this, callable, false);
        if (Thread.currentThread() != this.c) {
            e(hpbVar);
            return hpbVar;
        }
        if (!this.e.isEmpty()) {
            xp.h(this.a, "Callable skipped the worker queue.");
        }
        hpbVar.run();
        return hpbVar;
    }

    public final Future zzi(Callable callable) {
        c();
        Preconditions.checkNotNull(callable);
        hpb hpbVar = new hpb(this, callable, true);
        if (Thread.currentThread() == this.c) {
            hpbVar.run();
            return hpbVar;
        }
        e(hpbVar);
        return hpbVar;
    }

    public final void zzj(Runnable runnable) {
        c();
        Preconditions.checkNotNull(runnable);
        e(new hpb(this, runnable, false, "Task exception on worker thread"));
    }

    public final void zzl(Runnable runnable) {
        c();
        Preconditions.checkNotNull(runnable);
        e(new hpb(this, runnable, true, "Task exception on worker thread"));
    }

    public final void zzm(Runnable runnable) {
        c();
        Preconditions.checkNotNull(runnable);
        hpb hpbVar = new hpb(this, runnable, false, "Task exception on network thread");
        synchronized (this.i) {
            try {
                LinkedBlockingQueue linkedBlockingQueue = this.f;
                linkedBlockingQueue.add(hpbVar);
                lpb lpbVar = this.d;
                if (lpbVar == null) {
                    lpb lpbVar2 = new lpb(this, "Measurement Network", linkedBlockingQueue);
                    this.d = lpbVar2;
                    lpbVar2.setUncaughtExceptionHandler(this.h);
                    this.d.start();
                } else {
                    Object obj = lpbVar.b;
                    synchronized (obj) {
                        obj.notifyAll();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
