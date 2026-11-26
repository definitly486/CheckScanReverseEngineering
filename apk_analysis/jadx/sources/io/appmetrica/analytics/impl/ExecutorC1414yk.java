package io.appmetrica.analytics.impl;

import android.os.Handler;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.yk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class ExecutorC1414yk implements Executor {
    public final /* synthetic */ Handler a;

    public ExecutorC1414yk(Handler handler) {
        this.a = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.a.post(runnable);
    }
}
