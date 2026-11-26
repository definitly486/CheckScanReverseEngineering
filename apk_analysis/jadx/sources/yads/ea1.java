package yads;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class ea1 {
    public static final AtomicBoolean f = new AtomicBoolean(true);
    public static final AtomicBoolean g = new AtomicBoolean(true);
    public final long a;
    public long b = -1;
    public final AtomicBoolean c = new AtomicBoolean(false);
    public final String d;
    public final AtomicBoolean e;

    public ea1(long j) {
        this.a = j;
        this.d = f.compareAndSet(true, false) ? "Cold" : "Cool";
        this.e = new AtomicBoolean(true);
    }
}
