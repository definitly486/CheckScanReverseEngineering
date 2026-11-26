package yads;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.PlaybackParams;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.PlaybackException;
import androidx.media3.extractor.Ac3Util;
import androidx.work.WorkRequest;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes6.dex */
public final class vj0 implements tm {
    public int A;
    public long B;
    public long C;
    public long D;
    public long E;
    public int F;
    public boolean G;
    public boolean H;
    public long I;
    public float J;
    public mm[] K;
    public ByteBuffer[] L;
    public ByteBuffer M;
    public int N;
    public ByteBuffer O;
    public byte[] P;
    public int Q;
    public int R;
    public boolean S;
    public boolean T;
    public boolean U;
    public boolean V;
    public int W;
    public an X;
    public boolean Y;
    public long Z;
    public final fm a;
    public boolean a0;
    public final oj0 b;
    public boolean b0;
    public final boolean c;
    public final sy d;
    public final i26 e;
    public final mm[] f;
    public final mm[] g;
    public final m50 h;
    public final xm i;
    public final ArrayDeque j;
    public final boolean k;
    public final int l;
    public uj0 m;
    public final rj0 n;
    public final rj0 o;
    public final xj0 p;
    public rw4 q;
    public ry3 r;
    public nj0 s;
    public nj0 t;
    public AudioTrack u;
    public am v;
    public qj0 w;
    public qj0 x;
    public dw4 y;
    public ByteBuffer z;

    public vj0(mj0 mj0Var) {
        this.a = mj0Var.a;
        oj0 oj0Var = mj0Var.b;
        this.b = oj0Var;
        int i = u56.a;
        this.c = false;
        this.k = false;
        this.l = 0;
        this.p = mj0Var.c;
        m50 m50Var = new m50(0);
        this.h = m50Var;
        m50Var.d();
        this.i = new xm(new sj0(this));
        sy syVar = new sy();
        this.d = syVar;
        i26 i26Var = new i26();
        this.e = i26Var;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new t85(), syVar, i26Var);
        Collections.addAll(arrayList, oj0Var.a);
        this.f = (mm[]) arrayList.toArray(new mm[0]);
        this.g = new mm[]{new oy2()};
        this.J = 1.0f;
        this.v = am.h;
        this.W = 0;
        this.X = new an();
        dw4 dw4Var = dw4.e;
        this.x = new qj0(dw4Var, false, 0L, 0L);
        this.y = dw4Var;
        this.R = -1;
        this.K = new mm[0];
        this.L = new ByteBuffer[0];
        this.j = new ArrayDeque();
        this.n = new rj0();
        this.o = new rj0();
    }

    /* JADX WARN: Code duplicated, block: B:82:0x0155  */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x011b, code lost:
    
        if (r5.a() == 0) goto L74;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(java.nio.ByteBuffer r25, long r26, int r28) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 984
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.vj0.a(java.nio.ByteBuffer, long, int):boolean");
    }

    public final void b() {
        if (f()) {
            this.B = 0L;
            this.C = 0L;
            this.D = 0L;
            this.E = 0L;
            this.b0 = false;
            this.F = 0;
            this.x = new qj0(c().a, c().b, 0L, 0L);
            this.I = 0L;
            this.w = null;
            this.j.clear();
            this.M = null;
            this.N = 0;
            this.O = null;
            this.T = false;
            this.S = false;
            this.R = -1;
            this.z = null;
            this.A = 0;
            this.e.o = 0L;
            int i = 0;
            while (true) {
                mm[] mmVarArr = this.K;
                if (i >= mmVarArr.length) {
                    break;
                }
                mm mmVar = mmVarArr[i];
                mmVar.flush();
                this.L[i] = mmVar.a();
                i++;
            }
            AudioTrack audioTrack = this.i.c;
            audioTrack.getClass();
            if (audioTrack.getPlayState() == 3) {
                this.u.pause();
            }
            if (a(this.u)) {
                uj0 uj0Var = this.m;
                uj0Var.getClass();
                uj0Var.b(this.u);
            }
            AudioTrack audioTrack2 = this.u;
            this.u = null;
            if (u56.a < 21 && !this.V) {
                this.W = 0;
            }
            nj0 nj0Var = this.s;
            if (nj0Var != null) {
                this.t = nj0Var;
                this.s = null;
            }
            xm xmVar = this.i;
            xmVar.l = 0L;
            xmVar.w = 0;
            xmVar.v = 0;
            xmVar.m = 0L;
            xmVar.C = 0L;
            xmVar.F = 0L;
            xmVar.k = false;
            xmVar.c = null;
            xmVar.f = null;
            m50 m50Var = this.h;
            synchronized (m50Var) {
                m50Var.a = false;
            }
            new jj0(this, audioTrack2).start();
        }
        this.o.a = null;
        this.n.a = null;
    }

    public final qj0 c() {
        qj0 qj0Var = this.w;
        if (qj0Var != null) {
            return qj0Var;
        }
        return !this.j.isEmpty() ? (qj0) this.j.getLast() : this.x;
    }

    public final long d() {
        nj0 nj0Var = this.t;
        return nj0Var.c == 0 ? this.D / ((long) nj0Var.d) : this.E;
    }

    /* JADX WARN: Code duplicated, block: B:68:0x013c  */
    /* JADX WARN: Code duplicated, block: B:81:? A[SYNTHETIC] */
    public final boolean e() throws qm {
        boolean z;
        AudioTrack audioTrackA;
        rw4 rw4Var;
        m50 m50Var = this.h;
        synchronized (m50Var) {
            z = m50Var.a;
        }
        if (!z) {
            return false;
        }
        try {
            nj0 nj0Var = this.t;
            nj0Var.getClass();
            try {
                audioTrackA = nj0Var.a(this.Y, this.v, this.W);
            } catch (qm e) {
                ry3 ry3Var = this.r;
                if (ry3Var != null) {
                    sv3.b("MediaCodecAudioRenderer", sv3.a("Audio sink error", e));
                    ry3Var.a.H0.b(e);
                }
                throw e;
            }
        } catch (qm e2) {
            nj0 nj0Var2 = this.t;
            if (nj0Var2.h > 1000000) {
                nj0 nj0Var3 = new nj0(nj0Var2.a, nj0Var2.b, nj0Var2.c, nj0Var2.d, nj0Var2.e, nj0Var2.f, nj0Var2.g, PlaybackException.CUSTOM_ERROR_CODE_BASE, nj0Var2.i);
                try {
                    try {
                        audioTrackA = nj0Var3.a(this.Y, this.v, this.W);
                        this.t = nj0Var3;
                    } catch (qm e3) {
                        ry3 ry3Var2 = this.r;
                        if (ry3Var2 != null) {
                            sv3.b("MediaCodecAudioRenderer", sv3.a("Audio sink error", e3));
                            ry3Var2.a.H0.b(e3);
                        }
                        throw e3;
                    }
                } catch (qm e4) {
                    e2.addSuppressed(e4);
                    if (this.t.c == 1) {
                        throw e2;
                    }
                    this.a0 = true;
                    throw e2;
                }
            }
            if (this.t.c == 1) {
                throw e2;
            }
            this.a0 = true;
            throw e2;
        }
        this.u = audioTrackA;
        if (a(audioTrackA)) {
            AudioTrack audioTrack = this.u;
            uj0 uj0Var = this.m;
            if (uj0Var == null) {
                uj0Var = new uj0(this);
                this.m = uj0Var;
            }
            uj0Var.a(audioTrack);
            if (this.l != 3) {
                AudioTrack audioTrack2 = this.u;
                vz2 vz2Var = this.t.a;
                audioTrack2.setOffloadDelayPadding(vz2Var.C, vz2Var.D);
            }
        }
        int i = u56.a;
        if (i >= 31 && (rw4Var = this.q) != null) {
            kj0.a(this.u, rw4Var);
        }
        this.W = this.u.getAudioSessionId();
        xm xmVar = this.i;
        AudioTrack audioTrack3 = this.u;
        nj0 nj0Var4 = this.t;
        boolean z2 = nj0Var4.c == 2;
        int i2 = nj0Var4.g;
        int i3 = nj0Var4.d;
        int i4 = nj0Var4.h;
        xmVar.c = audioTrack3;
        xmVar.d = i3;
        xmVar.e = i4;
        xmVar.f = new wm(audioTrack3);
        xmVar.g = audioTrack3.getSampleRate();
        xmVar.h = z2 && i < 23 && (i2 == 5 || i2 == 6);
        boolean zD = u56.d(i2);
        xmVar.q = zD;
        xmVar.i = zD ? xmVar.a(i4 / i3) : -9223372036854775807L;
        xmVar.s = 0L;
        xmVar.t = 0L;
        xmVar.u = 0L;
        xmVar.p = false;
        xmVar.x = C.TIME_UNSET;
        xmVar.y = C.TIME_UNSET;
        xmVar.r = 0L;
        xmVar.o = 0L;
        xmVar.j = 1.0f;
        j();
        this.X.getClass();
        this.H = true;
        return true;
    }

    public final boolean f() {
        return this.u != null;
    }

    public final void g() {
        this.U = false;
        if (f()) {
            xm xmVar = this.i;
            xmVar.l = 0L;
            xmVar.w = 0;
            xmVar.v = 0;
            xmVar.m = 0L;
            xmVar.C = 0L;
            xmVar.F = 0L;
            xmVar.k = false;
            if (xmVar.x == C.TIME_UNSET) {
                wm wmVar = xmVar.f;
                wmVar.getClass();
                wmVar.a();
                this.u.pause();
            }
        }
    }

    public final void h() {
        this.U = true;
        if (f()) {
            wm wmVar = this.i.f;
            wmVar.getClass();
            wmVar.a();
            this.u.play();
        }
    }

    public final void i() {
        if (this.T) {
            return;
        }
        this.T = true;
        xm xmVar = this.i;
        long jD = d();
        xmVar.z = xmVar.a();
        xmVar.x = SystemClock.elapsedRealtime() * 1000;
        xmVar.A = jD;
        this.u.stop();
        this.A = 0;
    }

    public final void j() {
        if (f()) {
            int i = u56.a;
            AudioTrack audioTrack = this.u;
            if (i >= 21) {
                audioTrack.setVolume(this.J);
            } else {
                float f = this.J;
                audioTrack.setStereoVolume(f, f);
            }
        }
    }

    public final void b(long j) throws Exception {
        ByteBuffer byteBuffer;
        int length = this.K.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.L[i - 1];
            } else {
                byteBuffer = this.M;
                if (byteBuffer == null) {
                    byteBuffer = mm.a;
                }
            }
            if (i == length) {
                a(byteBuffer, j);
            } else {
                mm mmVar = this.K[i];
                if (i > this.R) {
                    mmVar.a(byteBuffer);
                }
                ByteBuffer byteBufferA = mmVar.a();
                this.L[i] = byteBufferA;
                if (byteBufferA.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            } else {
                i--;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002e  */
    /* JADX WARN: Code duplicated, block: B:55:0x00f4  */
    public final long a(boolean z) {
        long j;
        long jA;
        long jMax;
        float f;
        long j2;
        long jA2;
        long j3;
        long jRound;
        boolean zB;
        long j4;
        long j5;
        long j6;
        Method method;
        if (!f() || this.H) {
            return Long.MIN_VALUE;
        }
        xm xmVar = this.i;
        AudioTrack audioTrack = xmVar.c;
        audioTrack.getClass();
        int i = 2;
        long j7 = 0;
        if (audioTrack.getPlayState() == 3) {
            long jA3 = xmVar.a(xmVar.a());
            if (jA3 == 0) {
                j = 1000;
            } else {
                long jNanoTime = System.nanoTime() / 1000;
                j = 1000;
                if (jNanoTime - xmVar.m >= WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) {
                    long[] jArr = xmVar.b;
                    int i2 = xmVar.v;
                    jArr[i2] = jA3 - jNanoTime;
                    xmVar.v = (i2 + 1) % 10;
                    int i3 = xmVar.w;
                    if (i3 < 10) {
                        xmVar.w = i3 + 1;
                    }
                    xmVar.m = jNanoTime;
                    xmVar.l = 0L;
                    int i4 = 0;
                    while (true) {
                        int i5 = xmVar.w;
                        if (i4 >= i5) {
                            break;
                        }
                        xmVar.l = (xmVar.b[i4] / ((long) i5)) + xmVar.l;
                        i4++;
                        j7 = j7;
                    }
                }
                long j8 = j7;
                if (!xmVar.h) {
                    wm wmVar = xmVar.f;
                    wmVar.getClass();
                    vm vmVar = wmVar.a;
                    if (vmVar == null || jNanoTime - wmVar.e < wmVar.d) {
                        zB = false;
                    } else {
                        wmVar.e = jNanoTime;
                        zB = vmVar.b();
                        int i6 = wmVar.b;
                        if (i6 != 0) {
                            if (i6 != 1) {
                                if (i6 != 2) {
                                    if (i6 != 3) {
                                        if (i6 != 4) {
                                            defpackage.ud.g();
                                            return j8;
                                        }
                                    } else if (zB) {
                                        wmVar.a();
                                    }
                                } else if (!zB) {
                                    wmVar.a();
                                }
                            } else if (!zB) {
                                wmVar.a();
                            } else if (wmVar.a.e > wmVar.f) {
                                wmVar.a(2);
                            }
                        } else if (zB) {
                            if (wmVar.a.a() >= wmVar.c) {
                                wmVar.f = wmVar.a.e;
                                wmVar.a(1);
                            } else {
                                zB = false;
                            }
                        } else if (jNanoTime - wmVar.c > 500000) {
                            wmVar.a(3);
                        }
                    }
                    if (zB) {
                        vm vmVar2 = wmVar.a;
                        long jA4 = vmVar2 != null ? vmVar2.a() : C.TIME_UNSET;
                        j4 = 5000000;
                        vm vmVar3 = wmVar.a;
                        long j9 = vmVar3 != null ? vmVar3.e : -1L;
                        if (Math.abs(jA4 - jNanoTime) > 5000000) {
                            sj0 sj0Var = xmVar.a;
                            StringBuilder sbF = defpackage.xp.f(j9, "Spurious audio timestamp (system clock mismatch): ", ", ");
                            sbF.append(jA4);
                            defpackage.dq.d(sbF, ", ", jNanoTime, ", ");
                            sbF.append(jA3);
                            sbF.append(", ");
                            vj0 vj0Var = sj0Var.a;
                            nj0 nj0Var = vj0Var.t;
                            if (nj0Var.c == 0) {
                                j6 = vj0Var.B / ((long) nj0Var.b);
                            } else {
                                j6 = vj0Var.C;
                            }
                            sbF.append(j6);
                            sbF.append(", ");
                            sbF.append(sj0Var.a.d());
                            sv3.d("DefaultAudioSink", sbF.toString());
                            wmVar.a(4);
                        } else if (Math.abs(xmVar.a(j9) - jA3) > 5000000) {
                            sj0 sj0Var2 = xmVar.a;
                            StringBuilder sbF2 = defpackage.xp.f(j9, "Spurious audio timestamp (frame position mismatch): ", ", ");
                            sbF2.append(jA4);
                            defpackage.dq.d(sbF2, ", ", jNanoTime, ", ");
                            sbF2.append(jA3);
                            sbF2.append(", ");
                            vj0 vj0Var2 = sj0Var2.a;
                            nj0 nj0Var2 = vj0Var2.t;
                            if (nj0Var2.c == 0) {
                                j5 = vj0Var2.B / ((long) nj0Var2.b);
                            } else {
                                j5 = vj0Var2.C;
                            }
                            sbF2.append(j5);
                            sbF2.append(", ");
                            sbF2.append(sj0Var2.a.d());
                            sv3.d("DefaultAudioSink", sbF2.toString());
                            wmVar.a(4);
                        } else if (wmVar.b == 4) {
                            wmVar.a();
                        }
                    } else {
                        j4 = 5000000;
                    }
                    if (xmVar.q && (method = xmVar.n) != null && jNanoTime - xmVar.r >= 500000) {
                        try {
                            AudioTrack audioTrack2 = xmVar.c;
                            audioTrack2.getClass();
                            Integer num = (Integer) method.invoke(audioTrack2, null);
                            int i7 = u56.a;
                            long jIntValue = (((long) num.intValue()) * 1000) - xmVar.i;
                            xmVar.o = jIntValue;
                            long jMax2 = Math.max(jIntValue, j8);
                            xmVar.o = jMax2;
                            if (jMax2 > j4) {
                                sv3.d("DefaultAudioSink", "Ignoring impossibly large audio latency: " + jMax2);
                                xmVar.o = 0L;
                            }
                        } catch (Exception unused) {
                            xmVar.n = null;
                        }
                        xmVar.r = jNanoTime;
                    }
                }
            }
        } else {
            j = 1000;
        }
        long jNanoTime2 = System.nanoTime() / j;
        wm wmVar2 = xmVar.f;
        wmVar2.getClass();
        boolean z2 = wmVar2.b == 2;
        if (z2) {
            vm vmVar4 = wmVar2.a;
            long jA5 = xmVar.a(vmVar4 != null ? vmVar4.e : -1L);
            vm vmVar5 = wmVar2.a;
            long jA6 = jNanoTime2 - (vmVar5 != null ? vmVar5.a() : C.TIME_UNSET);
            float f2 = xmVar.j;
            int i8 = u56.a;
            if (f2 != 1.0f) {
                jA6 = Math.round(jA6 * ((double) f2));
            }
            jMax = jA6 + jA5;
        } else {
            if (xmVar.w == 0) {
                jA = xmVar.a(xmVar.a());
            } else {
                jA = xmVar.l + jNanoTime2;
            }
            jMax = jA;
            if (!z) {
                jMax = Math.max(0L, jMax - xmVar.o);
            }
        }
        if (xmVar.D != z2) {
            xmVar.F = xmVar.C;
            xmVar.E = xmVar.B;
        }
        long j10 = jNanoTime2 - xmVar.F;
        if (j10 < 1000000) {
            long j11 = xmVar.E;
            float f3 = xmVar.j;
            int i9 = u56.a;
            f = 1.0f;
            if (f3 == 1.0f) {
                jRound = j10;
                j3 = jRound;
            } else {
                j3 = j10;
                jRound = Math.round(j10 * ((double) f3));
            }
            long j12 = (j3 * j) / 1000000;
            jMax = (((j - j12) * (jRound + j11)) + (jMax * j12)) / j;
        } else {
            f = 1.0f;
            i = 2;
        }
        if (!xmVar.k) {
            long j13 = xmVar.B;
            if (jMax > j13) {
                xmVar.k = true;
                long jB = u56.b(jMax - j13);
                float f4 = xmVar.j;
                if (f4 != f) {
                    jB = Math.round(jB / ((double) f4));
                }
                long jCurrentTimeMillis = System.currentTimeMillis() - u56.b(jB);
                ry3 ry3Var = xmVar.a.a.r;
                if (ry3Var != null) {
                    ry3Var.a.H0.b(jCurrentTimeMillis);
                }
            }
        }
        xmVar.C = jNanoTime2;
        xmVar.B = jMax;
        xmVar.D = z2;
        long jMin = Math.min(jMax, (d() * 1000000) / ((long) this.t.e));
        while (!this.j.isEmpty() && jMin >= ((qj0) this.j.getFirst()).d) {
            this.x = (qj0) this.j.remove();
        }
        qj0 qj0Var = this.x;
        long j14 = jMin - qj0Var.d;
        if (qj0Var.a.equals(dw4.e)) {
            j2 = this.x.c + j14;
        } else if (this.j.isEmpty()) {
            po5 po5Var = this.b.c;
            if (po5Var.o >= 1024) {
                long j15 = po5Var.n;
                oo5 oo5Var = po5Var.j;
                oo5Var.getClass();
                long j16 = j15 - ((long) ((oo5Var.k * oo5Var.b) * i));
                int i10 = po5Var.h.a;
                int i11 = po5Var.g.a;
                long j17 = po5Var.o;
                if (i10 == i11) {
                    jA2 = u56.a(j14, j16, j17);
                } else {
                    jA2 = u56.a(j14, j16 * ((long) i10), j17 * ((long) i11));
                }
            } else {
                jA2 = (long) (((double) po5Var.c) * j14);
            }
            j2 = jA2 + this.x.c;
        } else {
            qj0 qj0Var2 = (qj0) this.j.getFirst();
            long jRound2 = qj0Var2.d - jMin;
            float f5 = this.x.a.b;
            int i12 = u56.a;
            if (f5 != f) {
                jRound2 = Math.round(jRound2 * ((double) f5));
            }
            j2 = qj0Var2.c - jRound2;
        }
        return ((this.b.b.t * 1000000) / ((long) this.t.e)) + j2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void a(vz2 vz2Var, int[] iArr) throws pm {
        mm[] mmVarArr;
        int i;
        int iA;
        int iIntValue;
        int iIntValue2;
        int i2;
        int iA2;
        int i3;
        int iMax;
        mm[] mmVarArr2;
        int[] iArr2;
        if (MimeTypes.AUDIO_RAW.equals(vz2Var.m)) {
            if (u56.d(vz2Var.B)) {
                iA2 = u56.a(vz2Var.B, vz2Var.z);
                int i4 = vz2Var.B;
                if (this.c && (i4 == 536870912 || i4 == 805306368 || i4 == 4)) {
                    mmVarArr2 = this.g;
                } else {
                    mmVarArr2 = this.f;
                }
                i26 i26Var = this.e;
                int i5 = vz2Var.C;
                int i6 = vz2Var.D;
                i26Var.i = i5;
                i26Var.j = i6;
                if (u56.a < 21 && vz2Var.z == 8 && iArr == null) {
                    iArr2 = new int[6];
                    for (int i7 = 0; i7 < 6; i7++) {
                        iArr2[i7] = i7;
                    }
                } else {
                    iArr2 = iArr;
                }
                this.d.i = iArr2;
                km kmVar = new km(vz2Var.A, vz2Var.z, vz2Var.B);
                for (mm mmVar : mmVarArr2) {
                    try {
                        km kmVarA = mmVar.a(kmVar);
                        if (mmVar.isActive()) {
                            kmVar = kmVarA;
                        }
                    } catch (lm e) {
                        throw new pm(e, vz2Var);
                    }
                }
                iIntValue = kmVar.c;
                int i8 = kmVar.a;
                int iA3 = u56.a(kmVar.b);
                iA = u56.a(iIntValue, kmVar.b);
                mmVarArr = mmVarArr2;
                i = i8;
                iIntValue2 = iA3;
                i2 = 0;
            } else {
                defpackage.mi2.b();
                return;
            }
        } else {
            mmVarArr = new mm[0];
            i = vz2Var.A;
            iA = -1;
            if (a(this.v, vz2Var)) {
                String str = vz2Var.m;
                str.getClass();
                iIntValue = z84.a(str, vz2Var.j);
                iIntValue2 = u56.a(vz2Var.z);
                i2 = 1;
            } else {
                Pair pairA = this.a.a(vz2Var);
                if (pairA != null) {
                    iIntValue = ((Integer) pairA.first).intValue();
                    iIntValue2 = ((Integer) pairA.second).intValue();
                    i2 = 2;
                } else {
                    throw new pm("Unable to configure passthrough for: " + vz2Var, vz2Var);
                }
            }
            iA2 = -1;
        }
        xj0 xj0Var = this.p;
        int minBufferSize = AudioTrack.getMinBufferSize(i, iIntValue2, iIntValue);
        if (minBufferSize != -2) {
            double d = this.k ? 8.0d : 1.0d;
            xj0Var.getClass();
            if (i2 != 0) {
                int i9 = Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND;
                if (i2 == 1) {
                    switch (iIntValue) {
                        case 5:
                            iMax = bq3.a((50000000 * ((long) i9)) / 1000000);
                            break;
                        case 6:
                        case 18:
                            i9 = 768000;
                            iMax = bq3.a((50000000 * ((long) i9)) / 1000000);
                            break;
                        case 7:
                            i9 = 192000;
                            iMax = bq3.a((50000000 * ((long) i9)) / 1000000);
                            break;
                        case 8:
                            i9 = 2250000;
                            iMax = bq3.a((50000000 * ((long) i9)) / 1000000);
                            break;
                        case 9:
                            i9 = 40000;
                            iMax = bq3.a((50000000 * ((long) i9)) / 1000000);
                            break;
                        case 10:
                            i9 = 100000;
                            iMax = bq3.a((50000000 * ((long) i9)) / 1000000);
                            break;
                        case 11:
                            i9 = 16000;
                            iMax = bq3.a((50000000 * ((long) i9)) / 1000000);
                            break;
                        case 12:
                            i9 = 7000;
                            iMax = bq3.a((50000000 * ((long) i9)) / 1000000);
                            break;
                        case 13:
                        default:
                            defpackage.mi2.b();
                            return;
                        case 14:
                            i9 = 3062500;
                            iMax = bq3.a((50000000 * ((long) i9)) / 1000000);
                            break;
                        case 15:
                            i9 = 8000;
                            iMax = bq3.a((50000000 * ((long) i9)) / 1000000);
                            break;
                        case 16:
                            i9 = 256000;
                            iMax = bq3.a((50000000 * ((long) i9)) / 1000000);
                            break;
                        case 17:
                            i9 = 336000;
                            iMax = bq3.a((50000000 * ((long) i9)) / 1000000);
                            break;
                    }
                } else if (i2 == 2) {
                    int i10 = iIntValue == 5 ? 500000 : 250000;
                    switch (iIntValue) {
                        case 5:
                            break;
                        case 6:
                        case 18:
                            i9 = 768000;
                            break;
                        case 7:
                            i9 = 192000;
                            break;
                        case 8:
                            i9 = 2250000;
                            break;
                        case 9:
                            i9 = 40000;
                            break;
                        case 10:
                            i9 = 100000;
                            break;
                        case 11:
                            i9 = 16000;
                            break;
                        case 12:
                            i9 = 7000;
                            break;
                        case 13:
                        default:
                            defpackage.mi2.b();
                            return;
                        case 14:
                            i9 = 3062500;
                            break;
                        case 15:
                            i9 = 8000;
                            break;
                        case 16:
                            i9 = 256000;
                            break;
                        case 17:
                            i9 = 336000;
                            break;
                    }
                    iMax = bq3.a((((long) i10) * ((long) i9)) / 1000000);
                } else {
                    defpackage.mi2.b();
                    return;
                }
                i3 = iA2;
            } else {
                long j = i;
                i3 = iA2;
                long j2 = iA;
                int iA4 = bq3.a(((250000 * j) * j2) / 1000000);
                int iA5 = bq3.a(((750000 * j) * j2) / 1000000);
                int i11 = u56.a;
                iMax = Math.max(iA4, Math.min(minBufferSize * 4, iA5));
            }
            int iMax2 = (((Math.max(minBufferSize, (int) (((double) iMax) * d)) + iA) - 1) / iA) * iA;
            if (iIntValue == 0) {
                throw new pm("Invalid output encoding (mode=" + i2 + ") for: " + vz2Var, vz2Var);
            }
            if (iIntValue2 != 0) {
                this.a0 = false;
                nj0 nj0Var = new nj0(vz2Var, i3, i2, iA, i, iIntValue2, iIntValue, iMax2, mmVarArr);
                if (f()) {
                    this.s = nj0Var;
                    return;
                } else {
                    this.t = nj0Var;
                    return;
                }
            }
            throw new pm("Invalid output channel config (mode=" + i2 + ") for: " + vz2Var, vz2Var);
        }
        defpackage.ud.g();
    }

    public final int a(vz2 vz2Var) {
        if (!MimeTypes.AUDIO_RAW.equals(vz2Var.m)) {
            return ((this.a0 || !a(this.v, vz2Var)) && this.a.a(vz2Var) == null) ? 0 : 2;
        }
        boolean zD = u56.d(vz2Var.B);
        int i = vz2Var.B;
        if (zD) {
            return (i == 2 || (this.c && i == 4)) ? 2 : 1;
        }
        sv3.d("DefaultAudioSink", "Invalid PCM encoding: " + i);
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:51:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:52:0x00e9  */
    public final void a(ByteBuffer byteBuffer, long j) throws Exception {
        ByteBuffer byteBuffer2;
        int iWrite;
        ry3 ry3Var;
        m65 m65Var;
        if (byteBuffer.hasRemaining()) {
            ByteBuffer byteBuffer3 = this.O;
            if (byteBuffer3 == null) {
                this.O = byteBuffer;
                if (u56.a < 21) {
                    int iRemaining = byteBuffer.remaining();
                    byte[] bArr = this.P;
                    if (bArr == null || bArr.length < iRemaining) {
                        this.P = new byte[iRemaining];
                    }
                    int iPosition = byteBuffer.position();
                    byteBuffer.get(this.P, 0, iRemaining);
                    byteBuffer.position(iPosition);
                    this.Q = 0;
                }
            } else if (byteBuffer3 != byteBuffer) {
                defpackage.mi2.b();
                return;
            }
            int iRemaining2 = byteBuffer.remaining();
            int i = u56.a;
            if (i < 21) {
                xm xmVar = this.i;
                int iA = xmVar.e - ((int) (this.D - (xmVar.a() * ((long) xmVar.d))));
                if (iA > 0) {
                    iWrite = this.u.write(this.P, this.Q, Math.min(iRemaining2, iA));
                    if (iWrite > 0) {
                        this.Q += iWrite;
                        byteBuffer.position(byteBuffer.position() + iWrite);
                    }
                    byteBuffer2 = byteBuffer;
                } else {
                    byteBuffer2 = byteBuffer;
                    iWrite = 0;
                }
            } else if (!this.Y) {
                byteBuffer2 = byteBuffer;
                iWrite = this.u.write(byteBuffer2, iRemaining2, 1);
            } else if (j != C.TIME_UNSET) {
                AudioTrack audioTrack = this.u;
                if (i >= 26) {
                    byteBuffer2 = byteBuffer;
                    iWrite = audioTrack.write(byteBuffer2, iRemaining2, 1, j * 1000);
                } else {
                    byteBuffer2 = byteBuffer;
                    if (this.z == null) {
                        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
                        this.z = byteBufferAllocate;
                        byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
                        this.z.putInt(1431633921);
                    }
                    if (this.A == 0) {
                        this.z.putInt(4, iRemaining2);
                        this.z.putLong(8, j * 1000);
                        this.z.position(0);
                        this.A = iRemaining2;
                    }
                    int iRemaining3 = this.z.remaining();
                    if (iRemaining3 > 0) {
                        iWrite = audioTrack.write(this.z, iRemaining3, 1);
                        if (iWrite < 0) {
                            this.A = 0;
                        } else if (iWrite < iRemaining3) {
                            iWrite = 0;
                        } else {
                            iWrite = audioTrack.write(byteBuffer2, iRemaining2, 1);
                            if (iWrite < 0) {
                                this.A = 0;
                            } else {
                                this.A -= iWrite;
                            }
                        }
                    } else {
                        iWrite = audioTrack.write(byteBuffer2, iRemaining2, 1);
                        if (iWrite < 0) {
                            this.A = 0;
                        } else {
                            this.A -= iWrite;
                        }
                    }
                }
            } else {
                defpackage.ud.g();
                return;
            }
            this.Z = SystemClock.elapsedRealtime();
            if (iWrite < 0) {
                boolean z = (i >= 24 && iWrite == -6) || iWrite == -32;
                if (z && this.t.c == 1) {
                    this.a0 = true;
                }
                sm smVar = new sm(iWrite, this.t.a, z);
                ry3 ry3Var2 = this.r;
                if (ry3Var2 != null) {
                    sv3.b("MediaCodecAudioRenderer", sv3.a("Audio sink error", smVar));
                    ry3Var2.a.H0.b(smVar);
                }
                if (!smVar.c) {
                    rj0 rj0Var = this.o;
                    rj0Var.getClass();
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    Exception exc = rj0Var.a;
                    if (exc == null) {
                        rj0Var.a = smVar;
                        rj0Var.b = 100 + jElapsedRealtime;
                        exc = smVar;
                    }
                    if (jElapsedRealtime >= rj0Var.b) {
                        if (exc != smVar) {
                            exc.addSuppressed(smVar);
                        }
                        Exception exc2 = rj0Var.a;
                        rj0Var.a = null;
                        throw exc2;
                    }
                    return;
                }
                throw smVar;
            }
            this.o.a = null;
            if (a(this.u)) {
                if (this.E > 0) {
                    this.b0 = false;
                }
                if (this.U && (ry3Var = this.r) != null && iWrite < iRemaining2 && !this.b0 && (m65Var = ry3Var.a.Q0) != null) {
                    ((gq2) m65Var).a.H = true;
                }
            }
            int i2 = this.t.c;
            if (i2 == 0) {
                this.D += (long) iWrite;
            }
            if (iWrite == iRemaining2) {
                if (i2 != 0) {
                    if (byteBuffer2 != this.M) {
                        defpackage.ud.g();
                        return;
                    }
                    this.E = (((long) this.F) * ((long) this.N)) + this.E;
                }
                this.O = null;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001c  */
    /* JADX WARN: Code duplicated, block: B:14:0x0028 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:15:0x0029  */
    /* JADX WARN: Code duplicated, block: B:9:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0029 -> B:5:0x0009). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final boolean a() {
        /*
            r9 = this;
            int r0 = r9.R
            r1 = 1
            r2 = 0
            r3 = -1
            if (r0 != r3) goto Lb
            r9.R = r2
        L9:
            r0 = r1
            goto Lc
        Lb:
            r0 = r2
        Lc:
            int r4 = r9.R
            yads.mm[] r5 = r9.K
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L2f
            r4 = r5[r4]
            if (r0 == 0) goto L1f
            r4.b()
        L1f:
            r9.b(r7)
            boolean r0 = r4.c()
            if (r0 != 0) goto L29
            return r2
        L29:
            int r0 = r9.R
            int r0 = r0 + r1
            r9.R = r0
            goto L9
        L2f:
            java.nio.ByteBuffer r0 = r9.O
            if (r0 == 0) goto L3b
            r9.a(r0, r7)
            java.nio.ByteBuffer r0 = r9.O
            if (r0 == 0) goto L3b
            return r2
        L3b:
            r9.R = r3
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.vj0.a():boolean");
    }

    public final void a(dw4 dw4Var) {
        if (f()) {
            try {
                this.u.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(dw4Var.b).setPitch(dw4Var.c).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e) {
                sv3.d("DefaultAudioSink", sv3.a("Failed to set playback params", e));
            }
            float speed = this.u.getPlaybackParams().getSpeed();
            dw4Var = new dw4(speed, this.u.getPlaybackParams().getPitch());
            xm xmVar = this.i;
            xmVar.j = speed;
            wm wmVar = xmVar.f;
            if (wmVar != null) {
                wmVar.a();
            }
        }
        this.y = dw4Var;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x004f  */
    /* JADX WARN: Code duplicated, block: B:33:0x0084  */
    public final void a(long j) {
        dw4 dw4Var;
        boolean z;
        if (!this.Y && MimeTypes.AUDIO_RAW.equals(this.t.a.m)) {
            int i = this.t.a.B;
            if (this.c) {
                int i2 = u56.a;
                if (i == 536870912 || i == 805306368 || i == 4) {
                    dw4Var = dw4.e;
                }
            }
            oj0 oj0Var = this.b;
            dw4Var = c().a;
            po5 po5Var = oj0Var.c;
            float f = dw4Var.b;
            if (po5Var.c != f) {
                po5Var.c = f;
                po5Var.i = true;
            }
            float f2 = dw4Var.c;
            if (po5Var.d != f2) {
                po5Var.d = f2;
                po5Var.i = true;
            }
        } else {
            dw4Var = dw4.e;
        }
        dw4 dw4Var2 = dw4Var;
        int i3 = 0;
        if (this.Y || !MimeTypes.AUDIO_RAW.equals(this.t.a.m)) {
            z = false;
        } else {
            int i4 = this.t.a.B;
            if (this.c) {
                int i5 = u56.a;
                if (i4 == 536870912 || i4 == 805306368 || i4 == 4) {
                    z = false;
                }
            }
            oj0 oj0Var2 = this.b;
            boolean z2 = c().b;
            oj0Var2.b.m = z2;
            z = z2;
        }
        this.j.add(new qj0(dw4Var2, z, Math.max(0L, j), (d() * 1000000) / ((long) this.t.e)));
        mm[] mmVarArr = this.t.i;
        ArrayList arrayList = new ArrayList();
        for (mm mmVar : mmVarArr) {
            if (mmVar.isActive()) {
                arrayList.add(mmVar);
            } else {
                mmVar.flush();
            }
        }
        int size = arrayList.size();
        this.K = (mm[]) arrayList.toArray(new mm[size]);
        this.L = new ByteBuffer[size];
        while (true) {
            mm[] mmVarArr2 = this.K;
            if (i3 >= mmVarArr2.length) {
                break;
            }
            mm mmVar2 = mmVarArr2[i3];
            mmVar2.flush();
            this.L[i3] = mmVar2.a();
            i3++;
        }
        ry3 ry3Var = this.r;
        if (ry3Var != null) {
            ry3Var.a.H0.b(z);
        }
    }

    public final boolean a(am amVar, vz2 vz2Var) {
        int iA;
        int playbackOffloadSupport;
        int i = u56.a;
        if (i >= 29 && this.l != 0) {
            String str = vz2Var.m;
            str.getClass();
            int iA2 = z84.a(str, vz2Var.j);
            if (iA2 == 0 || (iA = u56.a(vz2Var.z)) == 0) {
                return false;
            }
            AudioFormat audioFormatBuild = new AudioFormat.Builder().setSampleRate(vz2Var.A).setChannelMask(iA).setEncoding(iA2).build();
            zl zlVar = amVar.g;
            if (zlVar == null) {
                zlVar = new zl(amVar);
                amVar.g = zlVar;
            }
            AudioAttributes audioAttributes = zlVar.a;
            if (i >= 31) {
                playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(audioFormatBuild, audioAttributes);
            } else if (AudioManager.isOffloadedPlaybackSupported(audioFormatBuild, audioAttributes)) {
                playbackOffloadSupport = (i == 30 && u56.d.startsWith("Pixel")) ? 2 : 1;
            } else {
                playbackOffloadSupport = 0;
            }
            if (playbackOffloadSupport != 0) {
                if (playbackOffloadSupport == 1) {
                    return ((vz2Var.C != 0 || vz2Var.D != 0) && (this.l == 1)) ? false : true;
                }
                if (playbackOffloadSupport == 2) {
                    return true;
                }
                defpackage.ud.g();
                return false;
            }
        }
        return false;
    }

    public static boolean a(AudioTrack audioTrack) {
        return u56.a >= 29 && audioTrack.isOffloadedPlayback();
    }
}
