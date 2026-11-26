package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class vb7 implements Executor {
    public final Executor b;

    public static class a implements Runnable {
        public final Runnable b;

        public a(Runnable runnable) {
            this.b = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.b.run();
            } catch (Exception e) {
                hv4.b("Executor", "Background execution failure.", e);
            }
        }
    }

    public vb7(ExecutorService executorService) {
        this.b = executorService;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.b.execute(new a(runnable));
    }
}
