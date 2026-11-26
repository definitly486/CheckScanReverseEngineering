package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.d;
import com.google.android.gms.internal.mlkit_vision_barcode.zzdz;
import com.google.android.gms.internal.mlkit_vision_barcode.zzet;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes4.dex */
public abstract class rbb extends AtomicReference implements Runnable {
    public static final mbb b = new mbb();
    public static final mbb c = new mbb();

    public abstract void a(zzet zzetVar);

    public final void b(Thread thread) {
        Runnable runnable = (Runnable) get();
        ebb ebbVar = null;
        boolean z = false;
        int i = 0;
        while (true) {
            boolean z2 = runnable instanceof ebb;
            mbb mbbVar = c;
            if (!z2) {
                if (runnable != mbbVar) {
                    break;
                }
            } else {
                ebbVar = (ebb) runnable;
            }
            i++;
            if (i <= 1000) {
                Thread.yield();
            } else if (runnable == mbbVar || compareAndSet(runnable, mbbVar)) {
                z = Thread.interrupted() || z;
                LockSupport.park(ebbVar);
            }
            runnable = (Runnable) get();
        }
        if (z) {
            thread.interrupt();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Thread threadCurrentThread = Thread.currentThread();
        zzet zzetVarZza = null;
        if (compareAndSet(null, threadCurrentThread)) {
            ocb ocbVar = ((jcb) this).d;
            boolean zIsDone = ocbVar.isDone();
            mbb mbbVar = b;
            if (!zIsDone) {
                try {
                    zzetVarZza = ((jcb) this).e.zza();
                } catch (Throwable th) {
                    try {
                        if (th instanceof InterruptedException) {
                            Thread.currentThread().interrupt();
                        }
                        if (!compareAndSet(threadCurrentThread, mbbVar)) {
                            b(threadCurrentThread);
                        }
                        if (zzdz.g.f(ocbVar, null, new d(th))) {
                            zzdz.f(ocbVar);
                            return;
                        }
                        return;
                    } catch (Throwable unused) {
                        if (!compareAndSet(threadCurrentThread, mbbVar)) {
                            b(threadCurrentThread);
                        }
                        a(null);
                        throw null;
                    }
                }
            }
            if (!compareAndSet(threadCurrentThread, mbbVar)) {
                b(threadCurrentThread);
            }
            if (zIsDone) {
                return;
            }
            a(zzetVarZza);
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String strC;
        Runnable runnable = (Runnable) get();
        if (runnable == b) {
            strC = "running=[DONE]";
        } else if (runnable instanceof ebb) {
            strC = "running=[INTERRUPTED]";
        } else {
            strC = runnable instanceof Thread ? me0.c("running=[RUNNING ON ", ((Thread) runnable).getName(), "]") : "running=[NOT STARTED YET]";
        }
        return me0.c(strC, ", ", ((jcb) this).e.toString());
    }
}
