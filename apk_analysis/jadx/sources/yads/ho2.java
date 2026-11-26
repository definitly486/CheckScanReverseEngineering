package yads;

import android.content.res.TypedArray;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import defpackage.j59;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public final class ho2 {
    public final tf6 a;
    public final cf2 b;
    public boolean c = false;
    public final do2 d;
    public vq0 e;
    public fo2 f;

    public ho2(bo2 bo2Var, vq0 vq0Var, tf6 tf6Var, cf2 cf2Var) {
        this.a = tf6Var;
        this.b = cf2Var;
        this.d = new do2(bo2Var, vq0Var);
        a();
    }

    public static final j59 a(ho2 ho2Var, st stVar) throws Exception {
        boolean zIsTerminated;
        do2 do2Var = ho2Var.d;
        do2Var.getClass();
        qb1 qb1Var = stVar.a;
        AutoCloseable autoCloseable = do2Var.f;
        if (autoCloseable != null) {
            if (autoCloseable instanceof AutoCloseable) {
                autoCloseable.close();
            } else if (autoCloseable instanceof ExecutorService) {
                ExecutorService executorService = (ExecutorService) autoCloseable;
                if (executorService != ForkJoinPool.commonPool() && !(zIsTerminated = executorService.isTerminated())) {
                    executorService.shutdown();
                    boolean z = false;
                    while (!zIsTerminated) {
                        try {
                            zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                        } catch (InterruptedException unused) {
                            if (!z) {
                                executorService.shutdownNow();
                                z = true;
                            }
                        }
                    }
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                }
            } else if (autoCloseable instanceof TypedArray) {
                ((TypedArray) autoCloseable).recycle();
            } else if (autoCloseable instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) autoCloseable).release();
            } else {
                if (!(autoCloseable instanceof MediaDrm)) {
                    defpackage.mi2.b();
                    return null;
                }
                ((MediaDrm) autoCloseable).release();
            }
        }
        do2Var.f = do2Var.a.a(stVar.b, stVar.a).a(do2Var.g);
        return j59.a;
    }

    public final void a() {
        if (this.c) {
            tf6 tf6Var = this.a;
            defpackage.vh0 vh0Var = new defpackage.vh0(this, 3);
            vh0Var.invoke(tf6Var.a);
            tf6Var.b.add(vh0Var);
            vq0 vq0Var = this.e;
            if (vq0Var != null) {
                this.e = vq0Var;
                if (this.c) {
                    fo2 fo2Var = this.f;
                    if (fo2Var != null) {
                        fo2Var.close();
                    }
                    this.f = new fo2(vq0Var, this.d, this.b);
                    return;
                }
                return;
            }
            return;
        }
        fo2 fo2Var2 = this.f;
        if (fo2Var2 != null) {
            fo2Var2.close();
        }
        this.f = null;
    }
}
