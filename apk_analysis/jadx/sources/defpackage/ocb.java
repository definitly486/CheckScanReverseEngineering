package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.c;
import com.google.android.gms.internal.mlkit_vision_barcode.l;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes4.dex */
public final class ocb extends l implements RunnableFuture {
    public volatile jcb i;

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzdz
    public final String b() {
        jcb jcbVar = this.i;
        return jcbVar != null ? me0.c("task=[", jcbVar.toString(), "]") : super.b();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzdz
    public final void c() {
        jcb jcbVar;
        Object obj = this.b;
        if ((obj instanceof c) && ((c) obj).a && (jcbVar = this.i) != null) {
            mbb mbbVar = rbb.c;
            mbb mbbVar2 = rbb.b;
            Runnable runnable = (Runnable) jcbVar.get();
            if (runnable instanceof Thread) {
                ebb ebbVar = new ebb(jcbVar);
                ebbVar.setExclusiveOwnerThread(Thread.currentThread());
                if (jcbVar.compareAndSet(runnable, ebbVar)) {
                    try {
                        Thread thread = (Thread) runnable;
                        thread.interrupt();
                        if (((Runnable) jcbVar.getAndSet(mbbVar2)) == mbbVar) {
                            LockSupport.unpark(thread);
                        }
                    } catch (Throwable th) {
                        if (((Runnable) jcbVar.getAndSet(mbbVar2)) == mbbVar) {
                            LockSupport.unpark((Thread) runnable);
                        }
                        throw th;
                    }
                }
            }
        }
        this.i = null;
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        jcb jcbVar = this.i;
        if (jcbVar != null) {
            jcbVar.run();
        }
        this.i = null;
    }
}
