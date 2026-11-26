package defpackage;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import yads.cc2;
import yads.l66;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class eg implements l66 {
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void c(z47 z47Var) throws Exception {
        boolean zIsTerminated;
        if (z47Var instanceof AutoCloseable) {
            z47Var.close();
            return;
        }
        if (!(z47Var instanceof ExecutorService)) {
            mi2.b();
            return;
        }
        ExecutorService executorService = (ExecutorService) z47Var;
        if (executorService == ForkJoinPool.commonPool() || (zIsTerminated = executorService.isTerminated())) {
            return;
        }
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

    public static /* synthetic */ void d(Object obj, String str) {
        throw new IllegalArgumentException((str + obj).toString());
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return cc2.a(((Long) obj).longValue());
    }
}
