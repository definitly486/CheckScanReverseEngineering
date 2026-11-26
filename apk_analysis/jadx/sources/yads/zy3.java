package yads;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.PlaybackException;
import com.tapjoy.TJAdUnitConstants;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
public abstract class zy3 extends gs {
    public static final byte[] F0 = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};
    public final long[] A;
    public up2 A0;
    public vz2 B;
    public ji0 B0;
    public vz2 C;
    public long C0;
    public eo2 D;
    public long D0;
    public eo2 E;
    public int E0;
    public MediaCrypto F;
    public boolean G;
    public final long H;
    public float I;
    public float J;
    public qy3 K;
    public vz2 L;
    public MediaFormat M;
    public boolean N;
    public float O;
    public ArrayDeque P;
    public yy3 Q;
    public vy3 R;
    public int S;
    public boolean T;
    public boolean U;
    public boolean V;
    public boolean W;
    public boolean X;
    public boolean Y;
    public boolean Z;
    public boolean a0;
    public boolean b0;
    public boolean c0;
    public tv d0;
    public long e0;
    public int f0;
    public int g0;
    public ByteBuffer h0;
    public boolean i0;
    public boolean j0;
    public boolean k0;
    public boolean l0;
    public boolean m0;
    public final oy3 n;
    public boolean n0;
    public final bz3 o;
    public int o0;
    public final boolean p;
    public int p0;
    public final float q;
    public int q0;
    public final mi0 r;
    public boolean r0;
    public final mi0 s;
    public boolean s0;
    public final mi0 t;
    public boolean t0;
    public final us u;
    public long u0;
    public final fx5 v;
    public long v0;
    public final ArrayList w;
    public boolean w0;
    public final MediaCodec.BufferInfo x;
    public boolean x0;
    public final long[] y;
    public boolean y0;
    public final long[] z;
    public boolean z0;

    public zy3(int i, oy3 oy3Var, bz3 bz3Var, boolean z, float f) {
        super(i);
        this.n = oy3Var;
        bz3Var.getClass();
        this.o = bz3Var;
        this.p = z;
        this.q = f;
        this.r = new mi0(0);
        this.s = new mi0(0);
        this.t = new mi0(2);
        us usVar = new us();
        this.u = usVar;
        this.v = new fx5();
        this.w = new ArrayList();
        this.x = new MediaCodec.BufferInfo();
        this.I = 1.0f;
        this.J = 1.0f;
        this.H = C.TIME_UNSET;
        this.y = new long[10];
        this.z = new long[10];
        this.A = new long[10];
        this.C0 = C.TIME_UNSET;
        this.D0 = C.TIME_UNSET;
        usVar.c(0);
        usVar.d.order(ByteOrder.nativeOrder());
        this.O = -1.0f;
        this.S = 0;
        this.o0 = 0;
        this.f0 = -1;
        this.g0 = -1;
        this.e0 = C.TIME_UNSET;
        this.u0 = C.TIME_UNSET;
        this.v0 = C.TIME_UNSET;
        this.p0 = 0;
        this.q0 = 0;
    }

    public abstract float a(float f, vz2[] vz2VarArr);

    public abstract int a(bz3 bz3Var, vz2 vz2Var);

    public abstract ArrayList a(bz3 bz3Var, vz2 vz2Var, boolean z);

    public abstract ny3 a(vy3 vy3Var, vz2 vz2Var, MediaCrypto mediaCrypto, float f);

    public abstract oi0 a(vy3 vy3Var, vz2 vz2Var, vz2 vz2Var2);

    public abstract void a(Exception exc);

    public abstract void a(String str);

    public abstract void a(String str, long j, long j2);

    /* JADX WARN: Code duplicated, block: B:114:0x0213  */
    /* JADX WARN: Code duplicated, block: B:127:0x023f  */
    /* JADX WARN: Code duplicated, block: B:129:0x0243  */
    /* JADX WARN: Code duplicated, block: B:131:0x024f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:132:0x0251  */
    /* JADX WARN: Code duplicated, block: B:134:0x025d  */
    /* JADX WARN: Code duplicated, block: B:136:0x0267  */
    /* JADX WARN: Code duplicated, block: B:138:0x0275  */
    /* JADX WARN: Code duplicated, block: B:143:0x0286  */
    /* JADX WARN: Code duplicated, block: B:145:0x028c A[PHI: r5
      0x028c: PHI (r5v8 yads.az3) = (r5v4 yads.az3), (r5v4 yads.az3), (r5v5 yads.az3), (r5v5 yads.az3), (r5v6 yads.az3), (r5v9 yads.az3) binds: [B:144:0x028a, B:141:0x0283, B:133:0x025b, B:135:0x0265, B:130:0x024d, B:126:0x023d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:27:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:29:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:31:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:33:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:35:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:42:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:58:0x0126 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x0128  */
    /* JADX WARN: Code duplicated, block: B:67:0x014d  */
    /* JADX WARN: Code duplicated, block: B:87:0x01a1  */
    public final void a(vy3 vy3Var, MediaCrypto mediaCrypto) {
        float fA;
        int i;
        az3 az3Var;
        String strF;
        String str;
        boolean z;
        boolean z2;
        boolean z3;
        az3 az3Var2;
        boolean z4;
        String str2;
        az3 az3Var3;
        String str3 = vy3Var.a;
        int i2 = u56.a;
        if (i2 < 23) {
            fA = -1.0f;
        } else {
            float f = this.J;
            vz2[] vz2VarArr = this.i;
            vz2VarArr.getClass();
            fA = a(f, vz2VarArr);
        }
        float f2 = fA > this.q ? fA : -1.0f;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        ny3 ny3VarA = a(vy3Var, this.B, mediaCrypto, f2);
        if (i2 >= 31) {
            rw4 rw4Var = this.f;
            rw4Var.getClass();
            xy3.a(ny3VarA, rw4Var);
        }
        try {
            b06.a("createCodec:" + str3);
            this.K = this.n.a(ny3VarA);
            b06.a();
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            this.R = vy3Var;
            this.O = f2;
            this.L = this.B;
            if (i2 <= 25) {
                az3 az3Var4 = m25.b;
                if (az3Var4.p().equals(str3)) {
                    String str4 = u56.d;
                    if (str4.startsWith(az3Var4.J()) || str4.startsWith(az3Var4.F()) || str4.startsWith(az3Var4.G()) || str4.startsWith(az3Var4.I())) {
                        i = 2;
                    } else if (i2 < 24) {
                        az3Var = m25.b;
                        if (!az3Var.s().equals(str3) || az3Var.t().equals(str3)) {
                            strF = az3Var.f();
                            str = u56.b;
                            if (!strF.equals(str) || az3Var.g().equals(str) || az3Var.k().equals(str) || az3Var.M().equals(str)) {
                                i = 1;
                            } else {
                                i = 0;
                            }
                        } else {
                            i = 0;
                        }
                    } else {
                        i = 0;
                    }
                } else if (i2 < 24) {
                    az3Var = m25.b;
                    if (az3Var.s().equals(str3)) {
                        strF = az3Var.f();
                        str = u56.b;
                        if (strF.equals(str)) {
                        }
                        i = 1;
                    } else {
                        strF = az3Var.f();
                        str = u56.b;
                        if (strF.equals(str)) {
                        }
                        i = 1;
                    }
                } else {
                    i = 0;
                }
            } else if (i2 < 24) {
                az3Var = m25.b;
                if (az3Var.s().equals(str3)) {
                    strF = az3Var.f();
                    str = u56.b;
                    if (strF.equals(str)) {
                    }
                    i = 1;
                } else {
                    strF = az3Var.f();
                    str = u56.b;
                    if (strF.equals(str)) {
                    }
                    i = 1;
                }
            } else {
                i = 0;
            }
            this.S = i;
            this.T = i2 < 21 && this.L.o.isEmpty() && m25.b.r().equals(str3);
            if (i2 < 18) {
                z = true;
            } else if (i2 == 18) {
                az3 az3Var5 = m25.b;
                if (az3Var5.u().equals(str3) || az3Var5.v().equals(str3)) {
                    z = true;
                } else {
                    if (i2 == 19) {
                        str2 = u56.d;
                        az3Var3 = m25.b;
                        if (!str2.startsWith(az3Var3.H()) && (az3Var3.o().equals(str3) || az3Var3.p().equals(str3))) {
                            z = true;
                        }
                    }
                    z = false;
                }
            } else {
                if (i2 == 19) {
                    str2 = u56.d;
                    az3Var3 = m25.b;
                    if (!str2.startsWith(az3Var3.H())) {
                    }
                }
                z = false;
            }
            this.U = z;
            this.V = i2 == 29 && m25.b.d().equals(str3);
            if (i2 > 23 || !m25.b.D().equals(str3)) {
                if (i2 <= 19) {
                    az3 az3Var6 = m25.b;
                    String strL = az3Var6.l();
                    String str5 = u56.b;
                    z2 = (strL.equals(str5) || az3Var6.L().equals(str5)) && (az3Var6.y().equals(str3) || az3Var6.z().equals(str3));
                }
            }
            this.W = z2;
            this.X = i2 == 21 && m25.b.C().equals(str3);
            if (i2 < 21) {
                az3 az3Var7 = m25.b;
                if (az3Var7.w().equals(str3) && az3Var7.K().equals(u56.c)) {
                    String str6 = u56.b;
                    if (str6.startsWith(az3Var7.c()) || str6.startsWith(az3Var7.j()) || str6.startsWith(az3Var7.h()) || str6.startsWith(az3Var7.i()) || str6.startsWith(az3Var7.m()) || str6.startsWith(az3Var7.n())) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                } else {
                    z3 = false;
                }
            } else {
                z3 = false;
            }
            this.Y = z3;
            this.Z = i2 <= 18 && this.L.z == 1 && m25.b.q().equals(str3);
            String str7 = vy3Var.a;
            if (i2 <= 25) {
                az3Var2 = m25.b;
                if (az3Var2.E().equals(str7)) {
                    z4 = true;
                } else if (i2 <= 17) {
                    az3Var2 = m25.b;
                    if (!az3Var2.x().equals(str7)) {
                        z4 = true;
                    } else if (i2 <= 29) {
                        az3Var2 = m25.b;
                        if (!az3Var2.A().equals(str7) || az3Var2.B().equals(str7)) {
                            z4 = true;
                        } else {
                            az3Var2 = m25.b;
                            if ((!az3Var2.b().equals(u56.c) && az3Var2.a().equals(u56.d) && vy3Var.f) || p()) {
                                z4 = true;
                            }
                        }
                    } else {
                        az3Var2 = m25.b;
                        z4 = !az3Var2.b().equals(u56.c) ? false : false;
                    }
                } else if (i2 <= 29) {
                    az3Var2 = m25.b;
                    if (az3Var2.A().equals(str7)) {
                    }
                    z4 = true;
                } else {
                    az3Var2 = m25.b;
                    if (!az3Var2.b().equals(u56.c)) {
                    }
                }
            } else if (i2 <= 17) {
                az3Var2 = m25.b;
                if (!az3Var2.x().equals(str7)) {
                    z4 = true;
                } else if (i2 <= 29) {
                    az3Var2 = m25.b;
                    if (az3Var2.A().equals(str7)) {
                    }
                    z4 = true;
                } else {
                    az3Var2 = m25.b;
                    if (!az3Var2.b().equals(u56.c)) {
                    }
                }
            } else if (i2 <= 29) {
                az3Var2 = m25.b;
                if (az3Var2.A().equals(str7)) {
                }
                z4 = true;
            } else {
                az3Var2 = m25.b;
                if (!az3Var2.b().equals(u56.c)) {
                }
            }
            this.c0 = z4;
            this.K.getClass();
            if (az3Var2.e().equals(vy3Var.a)) {
                this.d0 = new tv();
            }
            if (this.g == 2) {
                this.e0 = SystemClock.elapsedRealtime() + 1000;
            }
            this.B0.a++;
            a(str3, jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
        } catch (Throwable th) {
            b06.a();
            throw th;
        }
    }

    public abstract void a(vz2 vz2Var, MediaFormat mediaFormat);

    public abstract boolean a(long j, long j2, qy3 qy3Var, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, vz2 vz2Var);

    public abstract void b(mi0 mi0Var);

    public final boolean b(long j, long j2) {
        if (this.x0) {
            defpackage.ud.g();
            return false;
        }
        us usVar = this.u;
        int i = usVar.j;
        if (i > 0) {
            if (!a(j, j2, null, usVar.d, this.g0, 0, i, usVar.f, usVar.b(Integer.MIN_VALUE), this.u.b(4), this.C)) {
                return false;
            }
            a(this.u.i);
            this.u.b();
        }
        if (this.w0) {
            this.x0 = true;
            return false;
        }
        if (this.l0) {
            if (!this.u.a(this.t)) {
                defpackage.ud.g();
                return false;
            }
            this.l0 = false;
        }
        if (this.m0) {
            us usVar2 = this.u;
            if (usVar2.j > 0) {
                return true;
            }
            this.m0 = false;
            usVar2.b();
            this.t.b();
            this.l0 = false;
            this.k0 = false;
            this.m0 = false;
            q();
            if (!this.k0) {
                return false;
            }
        }
        if (this.w0) {
            defpackage.ud.g();
            return false;
        }
        a03 a03Var = this.c;
        a03Var.a = null;
        a03Var.b = null;
        this.t.b();
        while (true) {
            this.t.b();
            int iA = a(a03Var, this.t, 0);
            if (iA == -5) {
                a(a03Var);
                break;
            }
            if (iA != -4) {
                if (iA == -3) {
                    break;
                }
                defpackage.ud.g();
                return false;
            }
            if (this.t.b(4)) {
                this.w0 = true;
                break;
            }
            if (this.y0) {
                vz2 vz2Var = this.B;
                vz2Var.getClass();
                this.C = vz2Var;
                a(vz2Var, (MediaFormat) null);
                this.y0 = false;
            }
            this.t.c();
            if (!this.u.a(this.t)) {
                this.l0 = true;
                break;
            }
        }
        us usVar3 = this.u;
        if (usVar3.j > 0) {
            usVar3.c();
        }
        return this.u.j > 0 || this.w0 || this.m0;
    }

    public final boolean c(long j, long j2) throws up2 {
        boolean z;
        boolean zA;
        int iA;
        boolean z2;
        if (this.g0 < 0) {
            if (this.X && this.s0) {
                try {
                    iA = this.K.a(this.x);
                } catch (IllegalStateException unused) {
                    s();
                    if (this.x0) {
                        t();
                    }
                    return false;
                }
            } else {
                iA = this.K.a(this.x);
            }
            if (iA < 0) {
                if (iA != -2) {
                    if (this.c0 && (this.w0 || this.p0 == 2)) {
                        s();
                    }
                    return false;
                }
                this.t0 = true;
                MediaFormat mediaFormatA = this.K.a();
                if (this.S != 0 && mediaFormatA.getInteger(TJAdUnitConstants.String.WIDTH) == 32 && mediaFormatA.getInteger(TJAdUnitConstants.String.HEIGHT) == 32) {
                    this.b0 = true;
                } else {
                    if (this.Z) {
                        mediaFormatA.setInteger("channel-count", 1);
                    }
                    this.M = mediaFormatA;
                    this.N = true;
                }
                return true;
            }
            if (this.b0) {
                this.b0 = false;
                this.K.a(iA, false);
                return true;
            }
            MediaCodec.BufferInfo bufferInfo = this.x;
            if (bufferInfo.size == 0 && (bufferInfo.flags & 4) != 0) {
                s();
                return false;
            }
            this.g0 = iA;
            ByteBuffer byteBufferC = this.K.c(iA);
            this.h0 = byteBufferC;
            if (byteBufferC != null) {
                byteBufferC.position(this.x.offset);
                ByteBuffer byteBuffer = this.h0;
                MediaCodec.BufferInfo bufferInfo2 = this.x;
                byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
            }
            if (this.Y) {
                MediaCodec.BufferInfo bufferInfo3 = this.x;
                if (bufferInfo3.presentationTimeUs == 0 && (bufferInfo3.flags & 4) != 0) {
                    long j3 = this.u0;
                    if (j3 != C.TIME_UNSET) {
                        bufferInfo3.presentationTimeUs = j3;
                    }
                }
            }
            long j4 = this.x.presentationTimeUs;
            int size = this.w.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    z2 = false;
                    break;
                }
                if (((Long) this.w.get(i)).longValue() == j4) {
                    this.w.remove(i);
                    z2 = true;
                    break;
                }
                i++;
            }
            this.i0 = z2;
            long j5 = this.v0;
            long j6 = this.x.presentationTimeUs;
            this.j0 = j5 == j6;
            b(j6);
        }
        if (this.X && this.s0) {
            try {
                qy3 qy3Var = this.K;
                ByteBuffer byteBuffer2 = this.h0;
                int i2 = this.g0;
                MediaCodec.BufferInfo bufferInfo4 = this.x;
                z = false;
                try {
                    zA = a(j, j2, qy3Var, byteBuffer2, i2, bufferInfo4.flags, 1, bufferInfo4.presentationTimeUs, this.i0, this.j0, this.C);
                } catch (IllegalStateException unused2) {
                    s();
                    if (this.x0) {
                        t();
                    }
                    return z;
                }
            } catch (IllegalStateException unused3) {
                z = false;
            }
        } else {
            z = false;
            qy3 qy3Var2 = this.K;
            ByteBuffer byteBuffer3 = this.h0;
            int i3 = this.g0;
            MediaCodec.BufferInfo bufferInfo5 = this.x;
            zA = a(j, j2, qy3Var2, byteBuffer3, i3, bufferInfo5.flags, 1, bufferInfo5.presentationTimeUs, this.i0, this.j0, this.C);
        }
        if (zA) {
            a(this.x.presentationTimeUs);
            boolean z3 = (this.x.flags & 4) != 0 ? true : z;
            this.g0 = -1;
            this.h0 = null;
            if (!z3) {
                return true;
            }
            s();
        }
        return z;
    }

    @Override // yads.gs
    public boolean e() {
        return this.x0;
    }

    @Override // yads.gs
    public boolean f() {
        boolean zC;
        if (this.B == null) {
            return false;
        }
        if (d()) {
            zC = this.l;
        } else {
            mc5 mc5Var = this.h;
            mc5Var.getClass();
            zC = mc5Var.c();
        }
        if (zC || this.g0 >= 0) {
            return true;
        }
        return this.e0 != C.TIME_UNSET && SystemClock.elapsedRealtime() < this.e0;
    }

    @Override // yads.gs
    public final int k() {
        return 8;
    }

    public final boolean l() throws up2 {
        if (this.r0) {
            this.p0 = 1;
            if (this.U || this.W) {
                this.q0 = 3;
                return false;
            }
            this.q0 = 2;
        } else {
            x();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:169:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:170:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:171:0x0301  */
    /* JADX WARN: Code duplicated, block: B:74:0x012f  */
    /* JADX WARN: Code duplicated, block: B:75:0x0132  */
    /* JADX WARN: Code duplicated, block: B:76:0x0135  */
    public final boolean m() throws up2 {
        long j;
        int i;
        int i2;
        qy3 qy3Var = this.K;
        if (qy3Var == null || this.p0 == 2 || this.w0) {
            return false;
        }
        if (this.f0 < 0) {
            int iB = qy3Var.b();
            this.f0 = iB;
            if (iB < 0) {
                return false;
            }
            this.s.d = this.K.b(iB);
            this.s.b();
        }
        if (this.p0 == 1) {
            if (!this.c0) {
                this.s0 = true;
                this.K.a(this.f0, 0, 0L, 4);
                this.f0 = -1;
                this.s.d = null;
            }
            this.p0 = 2;
            return false;
        }
        if (this.a0) {
            this.a0 = false;
            this.s.d.put(F0);
            this.K.a(this.f0, 38, 0L, 0);
            this.f0 = -1;
            this.s.d = null;
            this.r0 = true;
            return true;
        }
        if (this.o0 == 1) {
            for (int i3 = 0; i3 < this.L.o.size(); i3++) {
                this.s.d.put((byte[]) this.L.o.get(i3));
            }
            this.o0 = 2;
        }
        int iPosition = this.s.d.position();
        a03 a03Var = this.c;
        a03Var.a = null;
        a03Var.b = null;
        try {
            int iA = a(a03Var, this.s, 0);
            if (d()) {
                this.v0 = this.u0;
            }
            if (iA == -3) {
                return false;
            }
            if (iA == -5) {
                if (this.o0 == 2) {
                    this.s.b();
                    this.o0 = 1;
                }
                a(a03Var);
                return true;
            }
            if (this.s.b(4)) {
                if (this.o0 == 2) {
                    this.s.b();
                    this.o0 = 1;
                }
                this.w0 = true;
                if (!this.r0) {
                    s();
                    return false;
                }
                try {
                    if (!this.c0) {
                        this.s0 = true;
                        this.K.a(this.f0, 0, 0L, 4);
                        this.f0 = -1;
                        this.s.d = null;
                    }
                    return false;
                } catch (MediaCodec.CryptoException e) {
                    vz2 vz2Var = this.B;
                    int errorCode = e.getErrorCode();
                    int i4 = u56.a;
                    if (errorCode == 2 || errorCode == 4) {
                        i2 = PlaybackException.ERROR_CODE_DRM_DISALLOWED_OPERATION;
                    } else if (errorCode == 10) {
                        i2 = PlaybackException.ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED;
                    } else if (errorCode == 7) {
                        i2 = PlaybackException.ERROR_CODE_DRM_DISALLOWED_OPERATION;
                    } else if (errorCode != 8) {
                        switch (errorCode) {
                            case 15:
                                i2 = PlaybackException.ERROR_CODE_DRM_CONTENT_ERROR;
                                break;
                            case 16:
                            case 18:
                                i2 = PlaybackException.ERROR_CODE_DRM_DISALLOWED_OPERATION;
                                break;
                            case 17:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                                i2 = PlaybackException.ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED;
                                break;
                            default:
                                switch (errorCode) {
                                    case 24:
                                    case 25:
                                    case 26:
                                    case 27:
                                    case 28:
                                        i2 = PlaybackException.ERROR_CODE_DRM_PROVISIONING_FAILED;
                                        break;
                                    default:
                                        i2 = PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR;
                                        break;
                                }
                                break;
                        }
                    } else {
                        i2 = PlaybackException.ERROR_CODE_DRM_CONTENT_ERROR;
                    }
                    throw a((Exception) e, vz2Var, false, i2);
                }
            }
            if (!this.r0 && !this.s.b(1)) {
                this.s.b();
                if (this.o0 == 2) {
                    this.o0 = 1;
                }
                return true;
            }
            boolean zB = this.s.b(1073741824);
            if (zB) {
                ca0 ca0Var = this.s.c;
                if (iPosition == 0) {
                    ca0Var.getClass();
                } else {
                    int[] iArr = ca0Var.d;
                    if (iArr == null) {
                        iArr = new int[1];
                        ca0Var.d = iArr;
                        ca0Var.i.numBytesOfClearData = iArr;
                    }
                    iArr[0] = iArr[0] + iPosition;
                }
            }
            if (this.T && !zB) {
                ByteBuffer byteBuffer = this.s.d;
                int iPosition2 = byteBuffer.position();
                int i5 = 0;
                int i6 = 0;
                while (true) {
                    int i7 = i5 + 1;
                    if (i7 >= iPosition2) {
                        byteBuffer.clear();
                        break;
                    }
                    int i8 = byteBuffer.get(i5) & 255;
                    if (i6 == 3) {
                        if (i8 == 1 && (byteBuffer.get(i7) & 31) == 7) {
                            ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
                            byteBufferDuplicate.position(i5 - 3);
                            byteBufferDuplicate.limit(iPosition2);
                            byteBuffer.position(0);
                            byteBuffer.put(byteBufferDuplicate);
                            break;
                        }
                    } else if (i8 == 0) {
                        i6++;
                    }
                    if (i8 != 0) {
                        i6 = 0;
                    }
                    i5 = i7;
                }
                if (this.s.d.position() == 0) {
                    return true;
                }
                this.T = false;
            }
            mi0 mi0Var = this.s;
            long j2 = mi0Var.f;
            tv tvVar = this.d0;
            if (tvVar != null) {
                vz2 vz2Var2 = this.B;
                if (tvVar.b == 0) {
                    tvVar.a = j2;
                }
                if (!tvVar.c) {
                    ByteBuffer byteBuffer2 = mi0Var.d;
                    byteBuffer2.getClass();
                    int i9 = 0;
                    for (int i10 = 0; i10 < 4; i10++) {
                        i9 = (i9 << 8) | (byteBuffer2.get(i10) & 255);
                    }
                    int iB2 = bb4.b(i9);
                    if (iB2 == -1) {
                        tvVar.c = true;
                        tvVar.b = 0L;
                        tvVar.a = mi0Var.f;
                        sv3.d("C2Mp3TimestampTracker", "MPEG audio header is invalid.");
                        j2 = mi0Var.f;
                    } else {
                        long jMax = Math.max(0L, ((tvVar.b - 529) * 1000000) / vz2Var2.A) + tvVar.a;
                        tvVar.b += (long) iB2;
                        j2 = jMax;
                    }
                }
                long j3 = this.u0;
                tv tvVar2 = this.d0;
                vz2 vz2Var3 = this.B;
                tvVar2.getClass();
                this.u0 = Math.max(j3, Math.max(0L, ((tvVar2.b - 529) * 1000000) / vz2Var3.A) + tvVar2.a);
                j = j2;
            } else {
                zB = zB;
                j = j2;
            }
            if (this.s.b(Integer.MIN_VALUE)) {
                this.w.add(Long.valueOf(j));
            }
            if (this.y0) {
                this.v.a(this.B, j);
                this.y0 = false;
            }
            this.u0 = Math.max(this.u0, j);
            this.s.c();
            if (this.s.b(268435456)) {
                a(this.s);
            }
            b(this.s);
            qy3 qy3Var2 = this.K;
            try {
                if (zB) {
                    qy3Var2.a(this.f0, this.s.c, j);
                } else {
                    qy3Var2.a(this.f0, this.s.d.limit(), j, 0);
                }
                this.f0 = -1;
                this.s.d = null;
                this.r0 = true;
                this.o0 = 0;
                this.B0.c++;
                return true;
            } catch (MediaCodec.CryptoException e2) {
                vz2 vz2Var4 = this.B;
                int errorCode2 = e2.getErrorCode();
                int i11 = u56.a;
                if (errorCode2 == 2 || errorCode2 == 4) {
                    i = PlaybackException.ERROR_CODE_DRM_DISALLOWED_OPERATION;
                } else if (errorCode2 == 10) {
                    i = PlaybackException.ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED;
                } else if (errorCode2 == 7) {
                    i = PlaybackException.ERROR_CODE_DRM_DISALLOWED_OPERATION;
                } else if (errorCode2 != 8) {
                    switch (errorCode2) {
                        case 15:
                            i = PlaybackException.ERROR_CODE_DRM_CONTENT_ERROR;
                            break;
                        case 16:
                        case 18:
                            i = PlaybackException.ERROR_CODE_DRM_DISALLOWED_OPERATION;
                            break;
                        case 17:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            i = PlaybackException.ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED;
                            break;
                        default:
                            switch (errorCode2) {
                                case 24:
                                case 25:
                                case 26:
                                case 27:
                                case 28:
                                    i = PlaybackException.ERROR_CODE_DRM_PROVISIONING_FAILED;
                                    break;
                                default:
                                    i = PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR;
                                    break;
                            }
                            break;
                    }
                } else {
                    i = PlaybackException.ERROR_CODE_DRM_CONTENT_ERROR;
                }
                throw a((Exception) e2, vz2Var4, false, i);
            }
        } catch (li0 e3) {
            a(e3);
            c(0);
            n();
            return true;
        }
    }

    public final void n() {
        try {
            this.K.flush();
        } finally {
            v();
        }
    }

    public final boolean o() {
        if (this.K == null) {
            return false;
        }
        int i = this.q0;
        if (i == 3 || this.U || ((this.V && !this.t0) || (this.W && this.s0))) {
            t();
            return true;
        }
        if (i == 2) {
            int i2 = u56.a;
            if (i2 < 23) {
                defpackage.ud.g();
                return false;
            }
            if (i2 >= 23) {
                try {
                    x();
                } catch (up2 e) {
                    sv3.d("MediaCodecRenderer", sv3.a("Failed to update the DRM session, releasing the codec instead.", e));
                    t();
                    return true;
                }
            }
        }
        n();
        return false;
    }

    public boolean p() {
        return false;
    }

    public final void q() {
        vz2 vz2Var;
        if (this.K != null || this.k0 || (vz2Var = this.B) == null) {
            return;
        }
        if (this.E == null && b(vz2Var)) {
            vz2 vz2Var2 = this.B;
            this.m0 = false;
            this.u.b();
            this.t.b();
            this.l0 = false;
            this.k0 = false;
            String str = vz2Var2.m;
            if ("audio/mp4a-latm".equals(str) || MimeTypes.AUDIO_MPEG.equals(str) || MimeTypes.AUDIO_OPUS.equals(str)) {
                this.u.k = 32;
            } else {
                this.u.k = 1;
            }
            this.k0 = true;
            return;
        }
        eo2 eo2Var = this.E;
        eo2.a(this.D, eo2Var);
        this.D = eo2Var;
        String str2 = this.B.m;
        if (eo2Var != null) {
            if (this.F == null) {
                a(eo2Var);
                if (this.D.a() == null) {
                    return;
                }
            }
            if (i03.a) {
                int iC = this.D.c();
                if (iC == 1) {
                    rl2 rl2VarA = this.D.a();
                    rl2VarA.getClass();
                    throw a((Exception) rl2VarA, this.B, false, rl2VarA.b);
                }
                if (iC != 4) {
                    return;
                }
            }
        }
        try {
            a(this.F, this.G);
        } catch (yy3 e) {
            throw a(e, this.B, false, PlaybackException.ERROR_CODE_DECODER_INIT_FAILED);
        }
    }

    public abstract void r();

    public final void s() throws up2 {
        int i = this.q0;
        if (i == 1) {
            n();
            return;
        }
        if (i == 2) {
            n();
            x();
        } else if (i != 3) {
            this.x0 = true;
            u();
        } else {
            t();
            q();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void t() {
        try {
            qy3 qy3Var = this.K;
            if (qy3Var != null) {
                qy3Var.release();
                this.B0.b++;
                a(this.R.a);
            }
            this.K = null;
            try {
                MediaCrypto mediaCrypto = this.F;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
                this.F = null;
                eo2.a(this.D, null);
                this.D = null;
                w();
            }
        } catch (Throwable th) {
            this.K = null;
            try {
                MediaCrypto mediaCrypto2 = this.F;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th;
            } finally {
                this.F = null;
                eo2.a(this.D, null);
                this.D = null;
                w();
            }
        }
    }

    public void u() {
    }

    public void v() {
        this.f0 = -1;
        this.s.d = null;
        this.g0 = -1;
        this.h0 = null;
        this.e0 = C.TIME_UNSET;
        this.s0 = false;
        this.r0 = false;
        this.a0 = false;
        this.b0 = false;
        this.i0 = false;
        this.j0 = false;
        this.w.clear();
        this.u0 = C.TIME_UNSET;
        this.v0 = C.TIME_UNSET;
        tv tvVar = this.d0;
        if (tvVar != null) {
            tvVar.a = 0L;
            tvVar.b = 0L;
            tvVar.c = false;
        }
        this.p0 = 0;
        this.q0 = 0;
        this.o0 = this.n0 ? 1 : 0;
    }

    public final void w() {
        v();
        this.A0 = null;
        this.d0 = null;
        this.P = null;
        this.R = null;
        this.L = null;
        this.M = null;
        this.N = false;
        this.t0 = false;
        this.O = -1.0f;
        this.S = 0;
        this.T = false;
        this.U = false;
        this.V = false;
        this.W = false;
        this.X = false;
        this.Y = false;
        this.Z = false;
        this.c0 = false;
        this.n0 = false;
        this.o0 = 0;
        this.G = false;
    }

    public final void x() throws up2 {
        try {
            a(this.E);
            throw null;
        } catch (MediaCryptoException e) {
            throw a((Exception) e, this.B, false, PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR);
        }
    }

    public boolean b(vz2 vz2Var) {
        return false;
    }

    public final void b(long j) {
        Object objA;
        fx5 fx5Var = this.v;
        synchronized (fx5Var) {
            objA = fx5Var.a(j, true);
        }
        vz2 vz2Var = (vz2) objA;
        if (vz2Var == null && this.N) {
            vz2Var = (vz2) this.v.b();
        }
        if (vz2Var != null) {
            this.C = vz2Var;
        } else if (!this.N || (vz2Var = this.C) == null) {
            return;
        }
        a(vz2Var, this.M);
        this.N = false;
    }

    public final List b(boolean z) {
        ArrayList arrayListA = a(this.o, this.B, z);
        if (!arrayListA.isEmpty() || !z) {
            return arrayListA;
        }
        ArrayList arrayListA2 = a(this.o, this.B, false);
        if (!arrayListA2.isEmpty()) {
            sv3.d("MediaCodecRenderer", "Drm session requires secure decoder for " + this.B.m + ", but no secure decoder available. Trying to proceed with " + arrayListA2 + ".");
        }
        return arrayListA2;
    }

    public final boolean c(int i) throws up2 {
        a03 a03Var = this.c;
        a03Var.a = null;
        a03Var.b = null;
        this.r.b();
        int iA = a(a03Var, this.r, i | 4);
        if (iA == -5) {
            a(a03Var);
            return true;
        }
        if (iA != -4 || !this.r.b(4)) {
            return false;
        }
        this.w0 = true;
        s();
        return false;
    }

    public final boolean c(vz2 vz2Var) {
        if (u56.a >= 23 && this.K != null && this.q0 != 3 && this.g != 0) {
            float f = this.J;
            vz2[] vz2VarArr = this.i;
            vz2VarArr.getClass();
            float fA = a(f, vz2VarArr);
            float f2 = this.O;
            if (f2 == fA) {
                return true;
            }
            if (fA == -1.0f) {
                if (this.r0) {
                    this.p0 = 1;
                    this.q0 = 3;
                    return false;
                }
                t();
                q();
                return false;
            }
            if (f2 == -1.0f && fA <= this.q) {
                return true;
            }
            Bundle bundle = new Bundle();
            bundle.putFloat("operating-rate", fA);
            this.K.a(bundle);
            this.O = fA;
        }
        return true;
    }

    public void a(mi0 mi0Var) {
    }

    public boolean a(vy3 vy3Var) {
        return true;
    }

    @Override // yads.gs
    public final int a(vz2 vz2Var) throws up2 {
        try {
            return a(this.o, vz2Var);
        } catch (ez3 e) {
            throw a((Exception) e, vz2Var, false, PlaybackException.ERROR_CODE_DECODER_QUERY_FAILED);
        }
    }

    @Override // yads.gs
    public final void a(vz2[] vz2VarArr, long j, long j2) {
        if (this.D0 == C.TIME_UNSET) {
            if (this.C0 == C.TIME_UNSET) {
                this.C0 = j;
                this.D0 = j2;
                return;
            } else {
                defpackage.ud.g();
                return;
            }
        }
        int i = this.E0;
        if (i == this.z.length) {
            sv3.d("MediaCodecRenderer", "Too many stream changes, so dropping offset: " + this.z[this.E0 - 1]);
        } else {
            this.E0 = i + 1;
        }
        long[] jArr = this.y;
        int i2 = this.E0 - 1;
        jArr[i2] = j;
        this.z[i2] = j2;
        this.A[i2] = this.u0;
    }

    @Override // yads.gs
    public void a(long j, boolean z) {
        int i;
        this.w0 = false;
        this.x0 = false;
        this.z0 = false;
        if (this.k0) {
            this.u.b();
            this.t.b();
            this.l0 = false;
        } else if (o()) {
            q();
        }
        fx5 fx5Var = this.v;
        synchronized (fx5Var) {
            i = fx5Var.d;
        }
        if (i > 0) {
            this.y0 = true;
        }
        this.v.a();
        int i2 = this.E0;
        if (i2 != 0) {
            int i3 = i2 - 1;
            this.D0 = this.z[i3];
            this.C0 = this.y[i3];
            this.E0 = 0;
        }
    }

    @Override // yads.gs
    public void a(float f, float f2) {
        this.I = f;
        this.J = f2;
        c(this.L);
    }

    @Override // yads.gs
    public final void a(long j, long j2) throws up2 {
        boolean z = false;
        if (this.z0) {
            this.z0 = false;
            s();
        }
        up2 up2Var = this.A0;
        if (up2Var == null) {
            try {
                if (this.x0) {
                    u();
                    return;
                }
                if (this.B != null || c(2)) {
                    q();
                    if (this.k0) {
                        b06.a("bypassRender");
                        while (b(j, j2)) {
                        }
                        b06.a();
                    } else if (this.K != null) {
                        long jElapsedRealtime = SystemClock.elapsedRealtime();
                        b06.a("drainAndFeed");
                        while (c(j, j2) && (this.H == C.TIME_UNSET || SystemClock.elapsedRealtime() - jElapsedRealtime < this.H)) {
                        }
                        while (m() && (this.H == C.TIME_UNSET || SystemClock.elapsedRealtime() - jElapsedRealtime < this.H)) {
                        }
                        b06.a();
                    } else {
                        ji0 ji0Var = this.B0;
                        int i = ji0Var.d;
                        mc5 mc5Var = this.h;
                        mc5Var.getClass();
                        ji0Var.d = i + mc5Var.b(j - this.j);
                        c(1);
                    }
                    synchronized (this.B0) {
                    }
                    return;
                }
                return;
            } catch (IllegalStateException e) {
                int i2 = u56.a;
                if (i2 < 21 || !(e instanceof MediaCodec.CodecException)) {
                    StackTraceElement[] stackTrace = e.getStackTrace();
                    if (stackTrace.length <= 0 || !stackTrace[0].getClassName().equals("android.media.MediaCodec")) {
                        throw e;
                    }
                }
                a(e);
                if (i2 >= 21) {
                    if (e instanceof MediaCodec.CodecException ? ((MediaCodec.CodecException) e).isRecoverable() : false) {
                        z = true;
                    }
                }
                if (z) {
                    t();
                }
                throw a(a(e, this.R), this.B, z, PlaybackException.ERROR_CODE_DECODING_FAILED);
            }
        }
        this.A0 = null;
        throw up2Var;
    }

    public uy3 a(IllegalStateException illegalStateException, vy3 vy3Var) {
        return new uy3(illegalStateException, vy3Var);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:55:0x00c5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x004c A[SYNTHETIC] */
    public final void a(MediaCrypto mediaCrypto, boolean z) throws yy3 {
        yy3 yy3Var;
        yy3 yy3Var2;
        if (this.P == null) {
            try {
                List listB = b(z);
                ArrayDeque arrayDeque = new ArrayDeque();
                this.P = arrayDeque;
                if (this.p) {
                    arrayDeque.addAll(listB);
                } else if (!listB.isEmpty()) {
                    this.P.add((vy3) listB.get(0));
                }
                this.Q = null;
            } catch (ez3 e) {
                throw new yy3(this.B, e, z, -49998);
            }
        }
        if (!this.P.isEmpty()) {
            vy3 vy3Var = (vy3) this.P.peekFirst();
            while (this.K == null) {
                vy3 vy3Var2 = (vy3) this.P.peekFirst();
                if (!a(vy3Var2)) {
                    return;
                }
                try {
                    a(vy3Var2, mediaCrypto);
                } catch (Exception e2) {
                    if (vy3Var2 == vy3Var) {
                        try {
                            sv3.d("MediaCodecRenderer", "Preferred decoder instantiation failed. Sleeping for 50ms then retrying.");
                            Thread.sleep(50L);
                            a(vy3Var2, mediaCrypto);
                        } catch (Exception e3) {
                            sv3.d("MediaCodecRenderer", sv3.a("Failed to initialize decoder: " + vy3Var2, e3));
                            this.P.removeFirst();
                            yy3Var = new yy3(this.B, e3, z, vy3Var2);
                            a(yy3Var);
                            yy3Var2 = this.Q;
                            if (yy3Var2 == null) {
                                this.Q = yy3Var;
                            } else {
                                this.Q = new yy3(yy3Var2.getMessage(), yy3Var2.getCause(), yy3Var2.b, yy3Var2.c, yy3Var2.d, yy3Var2.e);
                            }
                            if (!this.P.isEmpty()) {
                                throw this.Q;
                            }
                        }
                    } else {
                        throw e2;
                    }
                    sv3.d("MediaCodecRenderer", sv3.a("Failed to initialize decoder: " + vy3Var2, e3));
                    this.P.removeFirst();
                    yy3Var = new yy3(this.B, e3, z, vy3Var2);
                    a(yy3Var);
                    yy3Var2 = this.Q;
                    if (yy3Var2 == null) {
                        this.Q = yy3Var;
                    } else {
                        this.Q = new yy3(yy3Var2.getMessage(), yy3Var2.getCause(), yy3Var2.b, yy3Var2.c, yy3Var2.d, yy3Var2.e);
                    }
                    if (!this.P.isEmpty()) {
                        throw this.Q;
                    }
                }
            }
            this.P = null;
            return;
        }
        throw new yy3(this.B, (ez3) null, z, -49999);
    }

    /* JADX WARN: Code duplicated, block: B:58:0x009d  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c0  */
    public oi0 a(a03 a03Var) {
        int i;
        boolean z = true;
        this.y0 = true;
        vz2 vz2Var = a03Var.b;
        vz2Var.getClass();
        int i2 = 0;
        if (vz2Var.m != null) {
            eo2 eo2Var = a03Var.a;
            eo2.a(this.E, eo2Var);
            this.E = eo2Var;
            this.B = vz2Var;
            if (this.k0) {
                this.m0 = true;
                return null;
            }
            qy3 qy3Var = this.K;
            if (qy3Var == null) {
                this.P = null;
                q();
                return null;
            }
            vy3 vy3Var = this.R;
            vz2 vz2Var2 = this.L;
            eo2 eo2Var2 = this.D;
            if (eo2Var2 == eo2Var) {
                boolean z2 = eo2Var != eo2Var2;
                if (z2 && u56.a < 23) {
                    defpackage.ud.g();
                    return null;
                }
                oi0 oi0VarA = a(vy3Var, vz2Var2, vz2Var);
                int i3 = oi0VarA.d;
                if (i3 != 0) {
                    if (i3 != 1) {
                        if (i3 != 2) {
                            if (i3 == 3) {
                                if (c(vz2Var)) {
                                    this.L = vz2Var;
                                    if (z2 && !l()) {
                                        i = 2;
                                    }
                                } else {
                                    i2 = 16;
                                }
                            } else {
                                defpackage.ud.g();
                                return null;
                            }
                        } else if (c(vz2Var)) {
                            this.n0 = true;
                            this.o0 = 1;
                            int i4 = this.S;
                            if (i4 != 2 && (i4 != 1 || vz2Var.r != vz2Var2.r || vz2Var.s != vz2Var2.s)) {
                                z = false;
                            }
                            this.a0 = z;
                            this.L = vz2Var;
                            if (z2 && !l()) {
                                i = 2;
                            }
                        } else {
                            i2 = 16;
                        }
                    } else if (c(vz2Var)) {
                        this.L = vz2Var;
                        if (z2) {
                            if (!l()) {
                                i = 2;
                            }
                        } else if (this.r0) {
                            this.p0 = 1;
                            if (!this.U && !this.W) {
                                this.q0 = 1;
                            } else {
                                this.q0 = 3;
                                i = 2;
                            }
                        }
                    } else {
                        i2 = 16;
                    }
                    return (oi0VarA.d != 0 || (this.K == qy3Var && this.q0 != 3)) ? oi0VarA : new oi0(vy3Var.a, vz2Var2, vz2Var, 0, i);
                }
                if (this.r0) {
                    this.p0 = 1;
                    this.q0 = 3;
                } else {
                    t();
                    q();
                }
                i = i2;
                if (oi0VarA.d != 0) {
                }
            }
            if (eo2Var != null && eo2Var2 != null && u56.a >= 23) {
                UUID uuid = uv.e;
                if (!uuid.equals(eo2Var2.b()) && !uuid.equals(eo2Var.b())) {
                    a(eo2Var);
                }
            }
            if (this.r0) {
                this.p0 = 1;
                this.q0 = 3;
            } else {
                t();
                q();
            }
            return new oi0(vy3Var.a, vz2Var2, vz2Var, 0, 128);
        }
        throw a((Exception) new IllegalArgumentException(), vz2Var, false, PlaybackException.ERROR_CODE_DECODING_FORMAT_UNSUPPORTED);
    }

    public void a(long j) {
        while (true) {
            int i = this.E0;
            if (i == 0 || j < this.A[0]) {
                return;
            }
            long[] jArr = this.y;
            this.C0 = jArr[0];
            this.D0 = this.z[0];
            int i2 = i - 1;
            this.E0 = i2;
            System.arraycopy(jArr, 1, jArr, 0, i2);
            long[] jArr2 = this.z;
            System.arraycopy(jArr2, 1, jArr2, 0, this.E0);
            long[] jArr3 = this.A;
            System.arraycopy(jArr3, 1, jArr3, 0, this.E0);
            r();
        }
    }

    public final i03 a(eo2 eo2Var) {
        eo2Var.getClass();
        return null;
    }
}
