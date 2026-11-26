package defpackage;

import io.reactivex.exceptions.ProtocolViolationException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public class dc8 extends AtomicInteger implements bc8 {
    public bc8 b;
    public long c;
    public final AtomicReference<bc8> d = new AtomicReference<>();
    public final AtomicLong e = new AtomicLong();
    public final AtomicLong f = new AtomicLong();
    public volatile boolean g;
    public boolean h;

    public void a(bc8 bc8Var) {
        g(bc8Var);
    }

    public final void b() {
        if (getAndIncrement() != 0) {
            return;
        }
        d();
    }

    @Override // defpackage.bc8
    public final void cancel() {
        if (this.g) {
            return;
        }
        this.g = true;
        b();
    }

    public final void d() {
        int iAddAndGet = 1;
        long jD = 0;
        bc8 bc8Var = null;
        do {
            bc8 andSet = this.d.get();
            if (andSet != null) {
                andSet = this.d.getAndSet(null);
            }
            long andSet2 = this.e.get();
            if (andSet2 != 0) {
                andSet2 = this.e.getAndSet(0L);
            }
            long andSet3 = this.f.get();
            if (andSet3 != 0) {
                andSet3 = this.f.getAndSet(0L);
            }
            bc8 bc8Var2 = this.b;
            if (this.g) {
                if (bc8Var2 != null) {
                    bc8Var2.cancel();
                    this.b = null;
                }
                if (andSet != null) {
                    andSet.cancel();
                }
            } else {
                long jD2 = this.c;
                if (jD2 != Long.MAX_VALUE) {
                    jD2 = m00.d(jD2, andSet2);
                    if (jD2 != Long.MAX_VALUE) {
                        jD2 -= andSet3;
                        if (jD2 < 0) {
                            d97.b(new ProtocolViolationException(r01.c(jD2, "More produced than requested: ")));
                            jD2 = 0;
                        }
                    }
                    this.c = jD2;
                }
                if (andSet != null) {
                    this.b = andSet;
                    if (jD2 != 0) {
                        jD = m00.d(jD, jD2);
                        bc8Var = andSet;
                    }
                } else if (bc8Var2 != null && andSet2 != 0) {
                    jD = m00.d(jD, andSet2);
                    bc8Var = bc8Var2;
                }
            }
            iAddAndGet = addAndGet(-iAddAndGet);
        } while (iAddAndGet != 0);
        if (jD != 0) {
            bc8Var.request(jD);
        }
    }

    public final void f(long j) {
        if (this.h) {
            return;
        }
        if (get() != 0 || !compareAndSet(0, 1)) {
            m00.c(this.f, j);
            b();
            return;
        }
        long j2 = this.c;
        if (j2 != Long.MAX_VALUE) {
            long j3 = j2 - j;
            if (j3 < 0) {
                d97.b(new ProtocolViolationException(r01.c(j3, "More produced than requested: ")));
                j3 = 0;
            }
            this.c = j3;
        }
        if (decrementAndGet() == 0) {
            return;
        }
        d();
    }

    public final void g(bc8 bc8Var) {
        if (this.g) {
            bc8Var.cancel();
            return;
        }
        nq5.a(bc8Var, "s is null");
        if (get() != 0 || !compareAndSet(0, 1)) {
            this.d.getAndSet(bc8Var);
            b();
            return;
        }
        this.b = bc8Var;
        long j = this.c;
        if (decrementAndGet() != 0) {
            d();
        }
        if (j != 0) {
            bc8Var.request(j);
        }
    }

    @Override // defpackage.bc8
    public final void request(long j) {
        if (!hc8.e(j) || this.h) {
            return;
        }
        if (get() != 0 || !compareAndSet(0, 1)) {
            m00.c(this.e, j);
            b();
            return;
        }
        long j2 = this.c;
        if (j2 != Long.MAX_VALUE) {
            long jD = m00.d(j2, j);
            this.c = jD;
            if (jD == Long.MAX_VALUE) {
                this.h = true;
            }
        }
        bc8 bc8Var = this.b;
        if (decrementAndGet() != 0) {
            d();
        }
        if (bc8Var != null) {
            bc8Var.request(j);
        }
    }
}
