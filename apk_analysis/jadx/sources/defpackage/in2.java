package defpackage;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public final class in2 implements Executor {
    public static final in2 b = new in2();

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
