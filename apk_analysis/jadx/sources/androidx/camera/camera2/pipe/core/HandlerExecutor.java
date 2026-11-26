package androidx.camera.camera2.pipe.core;

import android.os.Handler;
import defpackage.jn;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class HandlerExecutor implements Executor {
    private final Handler handler;

    public HandlerExecutor(Handler handler) {
        handler.getClass();
        this.handler = handler;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.getClass();
        if (this.handler.post(runnable)) {
            return;
        }
        jn.e(this.handler);
    }
}
