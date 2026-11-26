package defpackage;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes5.dex */
public final class k97 extends AtomicLong implements ThreadFactory {
    public final String b;
    public final int c;
    public final boolean d;

    public static final class a extends Thread {
    }

    public k97(String str, int i, boolean z) {
        this.b = str;
        this.c = i;
        this.d = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        String str = this.b + '-' + incrementAndGet();
        Thread aVar = this.d ? new a(runnable, str) : new Thread(runnable, str);
        aVar.setPriority(this.c);
        aVar.setDaemon(true);
        return aVar;
    }

    @Override // java.util.concurrent.atomic.AtomicLong
    public final String toString() {
        return me0.d(new StringBuilder("RxThreadFactory["), this.b, "]");
    }

    public k97(String str) {
        this(str, 5, false);
    }
}
