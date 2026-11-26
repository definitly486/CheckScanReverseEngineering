package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_common.zzav;
import java.util.Deque;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class kb5 extends zzav {
    public static final ThreadLocal c = new ThreadLocal();
    public final ThreadPoolExecutor b;

    public kb5() {
        final ThreadFactory threadFactoryDefaultThreadFactory = Executors.defaultThreadFactory();
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(iAvailableProcessors, iAvailableProcessors, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: hub
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return threadFactoryDefaultThreadFactory.newThread(new uxb(runnable, 0));
            }
        });
        this.b = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzav, java.util.concurrent.Executor
    public final void execute(final Runnable runnable) {
        Deque deque = (Deque) c.get();
        if (deque == null || deque.size() > 1) {
            this.b.execute(new Runnable() { // from class: tpb
                @Override // java.lang.Runnable
                public final void run() {
                    Deque deque2 = (Deque) kb5.c.get();
                    Preconditions.checkNotNull(deque2);
                    Runnable runnable2 = runnable;
                    deque2.add(runnable2);
                    if (deque2.size() <= 1) {
                        do {
                            runnable2.run();
                            deque2.removeFirst();
                            runnable2 = (Runnable) deque2.peekFirst();
                        } while (runnable2 != null);
                    }
                }
            });
            return;
        }
        Preconditions.checkNotNull(deque);
        deque.add(runnable);
        if (deque.size() <= 1) {
            do {
                runnable.run();
                deque.removeFirst();
                runnable = (Runnable) deque.peekFirst();
            } while (runnable != null);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzav, com.google.android.gms.internal.mlkit_common.zzx
    public final /* synthetic */ Object m() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzav
    public final ThreadPoolExecutor n() {
        return this.b;
    }
}
