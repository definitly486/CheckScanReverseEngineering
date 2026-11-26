package yads;

import android.net.Uri;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class iv5 implements wc0 {
    public final wc0 a;
    public final aw b;
    public boolean c;
    public long d;

    public iv5(wc0 wc0Var, aw awVar) {
        wc0Var.getClass();
        this.a = wc0Var;
        awVar.getClass();
        this.b = awVar;
    }

    @Override // yads.wc0
    public final long a(bd0 bd0Var) throws zv {
        long jA = this.a.a(bd0Var);
        this.d = jA;
        if (jA == 0) {
            return 0L;
        }
        if (bd0Var.g == -1 && jA != -1) {
            bd0Var = bd0Var.a(0L, jA);
        }
        this.c = true;
        aw awVar = this.b;
        awVar.getClass();
        bd0Var.h.getClass();
        if (bd0Var.g == -1 && (bd0Var.i & 2) == 2) {
            awVar.d = null;
        } else {
            awVar.d = bd0Var;
            awVar.e = (bd0Var.i & 4) == 4 ? awVar.b : Long.MAX_VALUE;
            awVar.i = 0L;
            try {
                awVar.a(bd0Var);
            } catch (IOException e) {
                throw new zv(e);
            }
        }
        return this.d;
    }

    @Override // yads.wc0
    public final Map b() {
        return this.a.b();
    }

    @Override // yads.tc0
    public final int c(byte[] bArr, int i, int i2) throws zv {
        if (this.d == 0) {
            return -1;
        }
        int iC = this.a.c(bArr, i, i2);
        if (iC > 0) {
            aw awVar = this.b;
            bd0 bd0Var = awVar.d;
            if (bd0Var != null) {
                int i3 = 0;
                while (i3 < iC) {
                    try {
                        if (awVar.h == awVar.e) {
                            awVar.a();
                            awVar.a(bd0Var);
                        }
                        int iMin = (int) Math.min(iC - i3, awVar.e - awVar.h);
                        OutputStream outputStream = awVar.g;
                        int i4 = u56.a;
                        outputStream.write(bArr, i + i3, iMin);
                        i3 += iMin;
                        long j = iMin;
                        awVar.h += j;
                        awVar.i += j;
                    } catch (IOException e) {
                        throw new zv(e);
                    }
                }
            }
            long j2 = this.d;
            if (j2 != -1) {
                this.d = j2 - ((long) iC);
            }
        }
        return iC;
    }

    @Override // yads.wc0
    public final void close() throws zv {
        try {
            this.a.close();
            if (this.c) {
                this.c = false;
                aw awVar = this.b;
                if (awVar.d == null) {
                    return;
                }
                try {
                    awVar.a();
                } catch (IOException e) {
                    throw new zv(e);
                }
            }
        } catch (Throwable th) {
            if (this.c) {
                this.c = false;
                aw awVar2 = this.b;
                if (awVar2.d != null) {
                    try {
                        awVar2.a();
                    } catch (IOException e2) {
                        throw new zv(e2);
                    }
                }
            }
            throw th;
        }
    }

    @Override // yads.wc0
    public final Uri d() {
        return this.a.d();
    }

    @Override // yads.wc0
    public final void a(p16 p16Var) {
        p16Var.getClass();
        this.a.a(p16Var);
    }
}
