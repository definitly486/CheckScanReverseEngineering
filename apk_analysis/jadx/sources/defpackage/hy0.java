package defpackage;

import androidx.core.app.NotificationCompat;
import androidx.media3.common.C;
import io.grpc.b;
import io.grpc.c;
import java.net.SocketAddress;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public final class hy0 implements fm1 {
    public final fm1 b;

    public class a extends dj3 {
        public final mw1 a;
        public final AtomicInteger b = new AtomicInteger(C.RATE_UNSET_INT);
        public volatile h88 c;

        /* JADX INFO: renamed from: hy0$a$a, reason: collision with other inner class name */
        public class C0198a {
        }

        public a(hy0 hy0Var, mw1 mw1Var, String str) {
            o8.l(mw1Var, "delegate");
            this.a = mw1Var;
        }

        @Override // defpackage.dj3
        public final mw1 a() {
            return this.a;
        }

        @Override // defpackage.em1
        public final cm1 b(ra5<?, ?> ra5Var, la5 la5Var, b bVar, c[] cVarArr) {
            bVar.getClass();
            return this.b.get() >= 0 ? new i53(this.c, dm1.a.PROCESSED, cVarArr) : this.a.b(ra5Var, la5Var, bVar, cVarArr);
        }

        @Override // defpackage.dj3, defpackage.nz4
        public final void e(h88 h88Var) {
            o8.l(h88Var, NotificationCompat.CATEGORY_STATUS);
            synchronized (this) {
                try {
                    if (this.b.get() < 0) {
                        this.c = h88Var;
                        this.b.addAndGet(Integer.MAX_VALUE);
                        if (this.b.get() != 0) {
                            return;
                        }
                        super.e(h88Var);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public hy0(fm1 fm1Var, ez4.h hVar) {
        this.b = fm1Var;
    }

    @Override // defpackage.fm1
    public final ScheduledExecutorService A() {
        return this.b.A();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.b.close();
    }

    @Override // defpackage.fm1
    public final mw1 d0(SocketAddress socketAddress, fm1.a aVar, p94.g gVar) {
        return new a(this, this.b.d0(socketAddress, aVar, gVar), aVar.a);
    }
}
