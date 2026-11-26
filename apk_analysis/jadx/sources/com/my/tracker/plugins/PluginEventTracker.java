package com.my.tracker.plugins;

import com.my.tracker.obfuscated.i0;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes4.dex */
public final class PluginEventTracker {
    private static final Executor b = Executors.newSingleThreadExecutor();
    private final i0 a;

    private PluginEventTracker(i0 i0Var) {
        this.a = i0Var;
    }

    public static PluginEventTracker a(i0 i0Var) {
        return new PluginEventTracker(i0Var);
    }

    public static void onBackground(Runnable runnable) {
        b.execute(runnable);
    }

    public void trackPluginEvent(int i, byte[] bArr, boolean z, boolean z2, Runnable runnable) {
        this.a.a(i, bArr, z, z2, runnable);
    }
}
