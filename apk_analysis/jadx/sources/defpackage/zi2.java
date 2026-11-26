package defpackage;

import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.media3.common.util.BackgroundThreadStateHandler;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class zi2 implements Executor {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ zi2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((BackgroundThreadStateHandler) obj).runInBackground(runnable);
                break;
            default:
                UseCaseThreads.sequentialExecutor$lambda$0((UseCaseThreads) obj, runnable);
                break;
        }
    }
}
