package defpackage;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes4.dex */
public final class ce6 implements ThreadFactory {
    public final String b;

    public ce6(String str) {
        this.b = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        runnable.getClass();
        Thread thread = new Thread(runnable);
        thread.setDaemon(true);
        thread.setName(this.b);
        return thread;
    }
}
