package androidx.work;

import defpackage.g03;
import defpackage.h03;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public enum DirectExecutor implements Executor {
    INSTANCE;

    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

    public static g03<DirectExecutor> getEntries() {
        return $ENTRIES;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.getClass();
        runnable.run();
    }

    @Override // java.lang.Enum
    public String toString() {
        return "DirectExecutor";
    }
}
