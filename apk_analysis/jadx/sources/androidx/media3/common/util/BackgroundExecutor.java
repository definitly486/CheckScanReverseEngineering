package androidx.media3.common.util;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public final class BackgroundExecutor {
    private static Executor staticInstance;

    private BackgroundExecutor() {
    }

    public static synchronized Executor get() {
        Executor executorNewSingleThreadExecutor;
        executorNewSingleThreadExecutor = staticInstance;
        if (executorNewSingleThreadExecutor == null) {
            executorNewSingleThreadExecutor = Util.newSingleThreadExecutor("ExoPlayer:BackgroundExecutor");
            staticInstance = executorNewSingleThreadExecutor;
        }
        return executorNewSingleThreadExecutor;
    }

    public static synchronized void set(Executor executor) {
        staticInstance = executor;
    }
}
