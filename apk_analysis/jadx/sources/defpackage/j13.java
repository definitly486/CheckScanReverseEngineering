package defpackage;

import androidx.media3.muxer.MuxerUtil;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class j13 implements vk3 {
    public static final Logger e = Logger.getLogger(lv5.class.getName());
    public final lv5 b;
    public final zs.d c;
    public final mv5 d;

    public j13(lv5 lv5Var, zs.d dVar) {
        Level level = Level.FINE;
        this.d = new mv5();
        this.b = lv5Var;
        this.c = dVar;
    }

    @Override // defpackage.vk3
    public final void T(int i, long j) {
        this.d.g(mv5.a.OUTBOUND, i, j);
        try {
            this.c.T(i, j);
        } catch (IOException e2) {
            this.b.m(e2);
        }
    }

    @Override // defpackage.vk3
    public final int b0() {
        return this.c.b.b0();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            this.c.close();
        } catch (IOException e2) {
            e.log(e2.getClass().equals(IOException.class) ? Level.FINE : Level.INFO, "Failed closing connection", (Throwable) e2);
        }
    }

    @Override // defpackage.vk3
    public final void flush() {
        try {
            this.c.flush();
        } catch (IOException e2) {
            this.b.m(e2);
        }
    }

    @Override // defpackage.vk3
    public final void g0(q03 q03Var, byte[] bArr) {
        zs.d dVar = this.c;
        this.d.c(mv5.a.OUTBOUND, 0, q03Var, gx0.q(bArr));
        try {
            dVar.g0(q03Var, bArr);
            dVar.flush();
        } catch (IOException e2) {
            this.b.m(e2);
        }
    }

    @Override // defpackage.vk3
    public final void h0(int i, q03 q03Var) {
        this.d.e(mv5.a.OUTBOUND, i, q03Var);
        try {
            this.c.h0(i, q03Var);
        } catch (IOException e2) {
            this.b.m(e2);
        }
    }

    @Override // defpackage.vk3
    public final void m0(int i, int i2, boolean z) {
        mv5 mv5Var = this.d;
        if (z) {
            mv5.a aVar = mv5.a.OUTBOUND;
            long j = (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) i2)) | (((long) i) << 32);
            if (mv5Var.a()) {
                mv5Var.a.log(Level.FINE, aVar + " PING: ack=true bytes=" + j);
            }
        } else {
            mv5Var.d(mv5.a.OUTBOUND, (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) i2)) | (((long) i) << 32));
        }
        try {
            this.c.m0(i, i2, z);
        } catch (IOException e2) {
            this.b.m(e2);
        }
    }

    @Override // defpackage.vk3
    public final void p0(pr7 pr7Var) {
        mv5.a aVar = mv5.a.OUTBOUND;
        mv5 mv5Var = this.d;
        if (mv5Var.a()) {
            mv5Var.a.log(Level.FINE, aVar + " SETTINGS: ack=true");
        }
        try {
            this.c.p0(pr7Var);
        } catch (IOException e2) {
            this.b.m(e2);
        }
    }

    @Override // defpackage.vk3
    public final void u() {
        try {
            this.c.u();
        } catch (IOException e2) {
            this.b.m(e2);
        }
    }

    @Override // defpackage.vk3
    public final void w(boolean z, int i, bu0 bu0Var, int i2) {
        mv5.a aVar = mv5.a.OUTBOUND;
        bu0Var.getClass();
        this.d.b(aVar, i, bu0Var, i2, z);
        try {
            this.c.w(z, i, bu0Var, i2);
        } catch (IOException e2) {
            this.b.m(e2);
        }
    }

    @Override // defpackage.vk3
    public final void x(int i, List list, boolean z) {
        try {
            this.c.x(i, list, z);
        } catch (IOException e2) {
            this.b.m(e2);
        }
    }

    @Override // defpackage.vk3
    public final void z(pr7 pr7Var) {
        this.d.f(mv5.a.OUTBOUND, pr7Var);
        try {
            this.c.z(pr7Var);
        } catch (IOException e2) {
            this.b.m(e2);
        }
    }
}
