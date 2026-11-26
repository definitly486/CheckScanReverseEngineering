package yads;

import android.content.res.TypedArray;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public final class x40 implements tp0 {
    public final ArrayList b = new ArrayList();
    public boolean c;

    public final void a(tp0 tp0Var) {
        if (this.c) {
            defpackage.fg.c("close() method was called");
        } else if (tp0Var != tp0.a) {
            this.b.add(tp0Var);
        }
    }

    @Override // java.lang.AutoCloseable, java.io.Closeable
    public final void close() throws Exception {
        boolean zIsTerminated;
        for (AutoCloseable autoCloseable : this.b) {
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
                    return;
                }
                ((MediaDrm) autoCloseable).release();
            }
        }
        this.b.clear();
        this.c = true;
    }
}
