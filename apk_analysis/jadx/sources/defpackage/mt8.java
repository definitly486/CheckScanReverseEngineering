package defpackage;

import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes5.dex */
public final class mt8 implements ThreadFactory {
    public final /* synthetic */ ThreadFactory b;
    public final /* synthetic */ String c;
    public final /* synthetic */ AtomicLong d;
    public final /* synthetic */ Boolean e;

    public mt8(ThreadFactory threadFactory, String str, AtomicLong atomicLong, Boolean bool) {
        this.b = threadFactory;
        this.c = str;
        this.d = atomicLong;
        this.e = bool;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.b.newThread(runnable);
        Objects.requireNonNull(threadNewThread);
        AtomicLong atomicLong = this.d;
        Objects.requireNonNull(atomicLong);
        threadNewThread.setName(String.format(Locale.ROOT, this.c, Long.valueOf(atomicLong.getAndIncrement())));
        Boolean bool = this.e;
        if (bool != null) {
            threadNewThread.setDaemon(bool.booleanValue());
        }
        return threadNewThread;
    }
}
