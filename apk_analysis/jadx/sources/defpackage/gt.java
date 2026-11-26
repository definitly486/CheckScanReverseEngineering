package defpackage;

import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class gt {
    public static final Logger b = Logger.getLogger(gt.class.getName());
    public final AtomicLong a;

    public final class a {
        public final long a;

        public a(long j) {
            this.a = j;
        }
    }

    public gt(long j) {
        AtomicLong atomicLong = new AtomicLong();
        this.a = atomicLong;
        o8.f(j > 0, "value must be positive");
        atomicLong.set(j);
    }
}
