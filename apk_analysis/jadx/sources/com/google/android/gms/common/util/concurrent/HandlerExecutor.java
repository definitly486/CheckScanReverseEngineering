package com.google.android.gms.common.util.concurrent;

import android.os.Looper;
import com.google.android.gms.internal.common.zzg;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public class HandlerExecutor implements Executor {
    public final zzg b;

    public HandlerExecutor(Looper looper) {
        this.b = new zzg(looper);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.b.post(runnable);
    }
}
