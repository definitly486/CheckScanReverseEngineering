package androidx.core.os;

import android.os.Handler;
import androidx.core.util.Preconditions;
import defpackage.jn;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public final class ExecutorCompat {

    public static class HandlerExecutor implements Executor {
        private final Handler mHandler;

        public HandlerExecutor(Handler handler) {
            this.mHandler = (Handler) Preconditions.checkNotNull(handler);
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            if (this.mHandler.post((Runnable) Preconditions.checkNotNull(runnable))) {
                return;
            }
            jn.e(this.mHandler);
        }
    }

    private ExecutorCompat() {
    }

    public static Executor create(Handler handler) {
        return new HandlerExecutor(handler);
    }
}
