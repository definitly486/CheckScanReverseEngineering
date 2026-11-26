package defpackage;

import androidx.arch.core.executor.ArchTaskExecutor;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class tq implements Executor {
    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        ArchTaskExecutor.lambda$static$1(runnable);
    }
}
