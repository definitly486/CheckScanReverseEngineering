package yads;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes6.dex */
public abstract class qb3 {
    public static final AtomicLong a = new AtomicLong();

    public static final long a() {
        return a.getAndIncrement();
    }
}
