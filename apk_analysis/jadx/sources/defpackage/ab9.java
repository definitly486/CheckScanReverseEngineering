package defpackage;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ab9 implements ThreadFactory {
    public final /* synthetic */ String b;
    public final /* synthetic */ boolean c;

    public /* synthetic */ ab9(String str, boolean z) {
        this.b = str;
        this.c = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, this.b);
        thread.setDaemon(this.c);
        return thread;
    }
}
