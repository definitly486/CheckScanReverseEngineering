package defpackage;

import androidx.collection.SieveCacheKt;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class wy3 implements Closeable {
    public static final Logger g = Logger.getLogger(fy3.class.getName());
    public final vu0 b;
    public final bu0 c;
    public int d;
    public boolean e;
    public final jx3.b f;

    public wy3(hy6 hy6Var) {
        hy6Var.getClass();
        this.b = hy6Var;
        bu0 bu0Var = new bu0();
        this.c = bu0Var;
        this.d = 16384;
        this.f = new jx3.b(bu0Var);
    }

    public final synchronized void T(int i, long j) {
        if (this.e) {
            throw new IOException("closed");
        }
        if (j == 0 || j > SieveCacheKt.NodeLinkMask) {
            throw new IllegalArgumentException(("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: " + j).toString());
        }
        b(i, 4, 8, 0);
        this.b.writeInt((int) j);
        this.b.flush();
    }

    public final synchronized void a(or7 or7Var) {
        try {
            or7Var.getClass();
            if (this.e) {
                throw new IOException("closed");
            }
            int i = this.d;
            int i2 = or7Var.a;
            if ((i2 & 32) != 0) {
                i = or7Var.b[5];
            }
            this.d = i;
            if (((i2 & 2) != 0 ? or7Var.b[1] : -1) != -1) {
                jx3.b bVar = this.f;
                int iMin = Math.min((i2 & 2) != 0 ? or7Var.b[1] : -1, 16384);
                int i3 = bVar.d;
                if (i3 != iMin) {
                    if (iMin < i3) {
                        bVar.b = Math.min(bVar.b, iMin);
                    }
                    bVar.c = true;
                    bVar.d = iMin;
                    int i4 = bVar.h;
                    if (iMin < i4) {
                        if (iMin == 0) {
                            av3[] av3VarArr = bVar.e;
                            aq5.t(null, av3VarArr, 0, av3VarArr.length);
                            bVar.f = bVar.e.length - 1;
                            bVar.g = 0;
                            bVar.h = 0;
                        } else {
                            bVar.a(i4 - iMin);
                        }
                    }
                }
            }
            b(0, 0, 4, 1);
            this.b.flush();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void b(int i, int i2, int i3, int i4) {
        Level level = Level.FINE;
        Logger logger = g;
        if (logger.isLoggable(level)) {
            fy3.a.getClass();
            logger.fine(fy3.a(false, i, i2, i3, i4));
        }
        if (i2 > this.d) {
            throw new IllegalArgumentException(("FRAME_SIZE_ERROR length > " + this.d + ": " + i2).toString());
        }
        if ((Integer.MIN_VALUE & i) != 0) {
            c9.f(jh.b(i, "reserved bit set: "));
            return;
        }
        byte[] bArr = gb9.a;
        vu0 vu0Var = this.b;
        vu0Var.writeByte((i2 >>> 16) & 255);
        vu0Var.writeByte((i2 >>> 8) & 255);
        vu0Var.writeByte(i2 & 255);
        vu0Var.writeByte(i3 & 255);
        vu0Var.writeByte(i4 & 255);
        vu0Var.writeInt(i & Integer.MAX_VALUE);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.e = true;
        this.b.close();
    }

    public final synchronized void e(int i, p03 p03Var, byte[] bArr) {
        p03Var.getClass();
        if (this.e) {
            throw new IOException("closed");
        }
        if (p03Var.a() == -1) {
            throw new IllegalArgumentException("errorCode.httpCode == -1");
        }
        b(0, bArr.length + 8, 7, 0);
        this.b.writeInt(i);
        this.b.writeInt(p03Var.a());
        if (bArr.length != 0) {
            this.b.write(bArr);
        }
        this.b.flush();
    }

    public final synchronized void f(ArrayList arrayList, int i, boolean z) {
        if (this.e) {
            throw new IOException("closed");
        }
        this.f.d(arrayList);
        long j = this.c.c;
        long jMin = Math.min(this.d, j);
        int i2 = j == jMin ? 4 : 0;
        if (z) {
            i2 |= 1;
        }
        b(i, (int) jMin, 1, i2);
        this.b.H(this.c, jMin);
        if (j > jMin) {
            long j2 = j - jMin;
            while (j2 > 0) {
                long jMin2 = Math.min(this.d, j2);
                j2 -= jMin2;
                b(i, (int) jMin2, 9, j2 == 0 ? 4 : 0);
                this.b.H(this.c, jMin2);
            }
        }
    }

    public final synchronized void flush() {
        if (this.e) {
            throw new IOException("closed");
        }
        this.b.flush();
    }

    public final synchronized void g(int i, p03 p03Var) {
        p03Var.getClass();
        if (this.e) {
            throw new IOException("closed");
        }
        if (p03Var.a() == -1) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        b(i, 4, 3, 0);
        this.b.writeInt(p03Var.a());
        this.b.flush();
    }

    public final synchronized void m0(int i, int i2, boolean z) {
        if (this.e) {
            throw new IOException("closed");
        }
        b(0, 8, 6, z ? 1 : 0);
        this.b.writeInt(i);
        this.b.writeInt(i2);
        this.b.flush();
    }

    public final synchronized void w(boolean z, int i, bu0 bu0Var, int i2) {
        if (this.e) {
            throw new IOException("closed");
        }
        b(i, i2, 0, z ? 1 : 0);
        if (i2 > 0) {
            vu0 vu0Var = this.b;
            bu0Var.getClass();
            vu0Var.H(bu0Var, i2);
        }
    }
}
