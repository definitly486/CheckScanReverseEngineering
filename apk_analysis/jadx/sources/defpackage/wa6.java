package defpackage;

import android.os.SystemClock;
import java.time.Clock;
import java.util.Date;

/* JADX INFO: loaded from: classes4.dex */
public final class wa6 implements qb6 {
    public final Clock a;
    public final ll3<Long> b;
    public final long c;
    public volatile a d;
    public volatile Long e;

    public static final class a {
        public final long a;
        public final long b;

        public a(long j, long j2) {
            this.a = j;
            this.b = j2;
        }
    }

    public wa6(Object obj) {
        Object aVar;
        try {
            aVar = SystemClock.currentNetworkTimeClock();
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        aVar = aVar instanceof k57.a ? null : aVar;
        va6 va6Var = va6.c;
        va6Var.getClass();
        this.a = (Clock) aVar;
        this.b = va6Var;
        this.c = 60000L;
    }

    @Override // defpackage.qb6
    public final Date a(int i) {
        return new Date(currentTimeMillis() + ((long) (i * 1000)));
    }

    @Override // defpackage.qb6
    public final Date b() {
        return new Date(currentTimeMillis());
    }

    @Override // defpackage.qb6
    public final long currentTimeMillis() {
        Object aVar;
        Clock clock = this.a;
        if (clock == null) {
            return System.currentTimeMillis();
        }
        long jLongValue = this.b.invoke().longValue();
        a aVar2 = this.d;
        boolean z = true;
        boolean z2 = aVar2 == null || jLongValue - aVar2.b >= this.c;
        Long l = this.e;
        if (l != null && jLongValue - l.longValue() < this.c) {
            z = false;
        }
        if (z2 && z) {
            this.e = Long.valueOf(jLongValue);
            try {
                aVar = Long.valueOf(clock.millis());
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            if (aVar instanceof k57.a) {
                aVar = null;
            }
            Long l2 = (Long) aVar;
            if (l2 != null) {
                this.d = new a(l2.longValue(), this.b.invoke().longValue());
                return l2.longValue();
            }
        }
        a aVar3 = this.d;
        if (aVar3 != null) {
            return (jLongValue - aVar3.b) + aVar3.a;
        }
        return System.currentTimeMillis();
    }

    @Override // defpackage.qb6
    public final long nanoTime() {
        return System.nanoTime();
    }
}
