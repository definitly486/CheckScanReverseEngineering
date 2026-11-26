package defpackage;

import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes5.dex */
public final class xt3 implements v48 {
    public byte b;
    public final iy6 c;
    public final Inflater d;
    public final a54 e;
    public final CRC32 f;

    public xt3(v48 v48Var) {
        v48Var.getClass();
        iy6 iy6Var = new iy6(v48Var);
        this.c = iy6Var;
        Inflater inflater = new Inflater(true);
        this.d = inflater;
        this.e = new a54(iy6Var, inflater);
        this.f = new CRC32();
    }

    public static void a(int i, int i2, String str) throws IOException {
        if (i2 == i) {
            return;
        }
        StringBuilder sbD = fh.d(str, ": actual 0x");
        sbD.append(ta8.R(8, h.f(i2)));
        sbD.append(" != expected 0x");
        sbD.append(ta8.R(8, h.f(i)));
        throw new IOException(sbD.toString());
    }

    public final void b(bu0 bu0Var, long j, long j2) {
        gl7 gl7Var = bu0Var.b;
        gl7Var.getClass();
        while (true) {
            long j3 = gl7Var.c - gl7Var.b;
            if (j < j3) {
                break;
            }
            j -= j3;
            gl7Var = gl7Var.f;
            gl7Var.getClass();
        }
        while (j2 > 0) {
            int i = (int) (((long) gl7Var.b) + j);
            int iMin = (int) Math.min(gl7Var.c - i, j2);
            this.f.update(gl7Var.a, i, iMin);
            j2 -= (long) iMin;
            gl7Var = gl7Var.f;
            gl7Var.getClass();
            j = 0;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.e.close();
    }

    @Override // defpackage.v48
    public final wv8 r() {
        return this.c.b.r();
    }

    @Override // defpackage.v48
    public final long t0(bu0 bu0Var, long j) throws IOException {
        byte b;
        xt3 xt3Var = this;
        iy6 iy6Var = xt3Var.c;
        bu0 bu0Var2 = iy6Var.c;
        bu0Var.getClass();
        if (j < 0) {
            c9.f(r01.c(j, "byteCount < 0: "));
            return 0L;
        }
        if (j == 0) {
            return 0L;
        }
        byte b2 = xt3Var.b;
        CRC32 crc32 = xt3Var.f;
        if (b2 == 0) {
            iy6Var.c0(10L);
            byte bQ = bu0Var2.Q(3L);
            boolean z = ((bQ >> 1) & 1) == 1;
            if (z) {
                xt3Var.b(bu0Var2, 0L, 10L);
            }
            a(8075, iy6Var.readShort(), "ID1ID2");
            iy6Var.skip(8L);
            if (((bQ >> 2) & 1) == 1) {
                iy6Var.c0(2L);
                if (z) {
                    b(bu0Var2, 0L, 2L);
                }
                long jK0 = bu0Var2.k0() & 65535;
                iy6Var.c0(jK0);
                if (z) {
                    b(bu0Var2, 0L, jK0);
                }
                iy6Var.skip(jK0);
            }
            if (((bQ >> 3) & 1) == 1) {
                long jN = iy6Var.n((byte) 0, 0L, Long.MAX_VALUE);
                if (jN == -1) {
                    n7.e();
                    return 0L;
                }
                if (z) {
                    b(bu0Var2, 0L, jN + 1);
                }
                iy6Var.skip(jN + 1);
            }
            if (((bQ >> 4) & 1) == 1) {
                long jN2 = iy6Var.n((byte) 0, 0L, Long.MAX_VALUE);
                if (jN2 == -1) {
                    n7.e();
                    return 0L;
                }
                if (z) {
                    xt3Var = this;
                    xt3Var.b(bu0Var2, 0L, jN2 + 1);
                } else {
                    xt3Var = this;
                }
                iy6Var.skip(jN2 + 1);
            } else {
                xt3Var = this;
            }
            if (z) {
                a(iy6Var.y(), (short) crc32.getValue(), "FHCRC");
                crc32.reset();
            }
            xt3Var.b = (byte) 1;
            b2 = 1;
        }
        if (b2 == 1) {
            long j2 = bu0Var.c;
            long jT0 = xt3Var.e.t0(bu0Var, j);
            if (jT0 != -1) {
                xt3Var.b(bu0Var, j2, jT0);
                return jT0;
            }
            b = 2;
            xt3Var.b = (byte) 2;
            b2 = 2;
        } else {
            b = 2;
        }
        if (b2 == b) {
            a(iy6Var.p(), (int) crc32.getValue(), "CRC");
            a(iy6Var.p(), (int) xt3Var.d.getBytesWritten(), "ISIZE");
            xt3Var.b = (byte) 3;
            if (!iy6Var.m()) {
                ki0.d("gzip finished without exhausting source");
                return 0L;
            }
        }
        return -1L;
    }
}
