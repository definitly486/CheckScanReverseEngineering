package yads;

import android.content.Context;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.util.Base64;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.PlaybackException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class sy3 extends zy3 implements my3 {
    public final Context G0;
    public final nm H0;
    public final vj0 I0;
    public int J0;
    public boolean K0;
    public vz2 L0;
    public long M0;
    public boolean N0;
    public boolean O0;
    public boolean P0;
    public m65 Q0;

    public sy3(Context context, oy3 oy3Var, bz3 bz3Var, boolean z, Handler handler, bq2 bq2Var, vj0 vj0Var) {
        super(1, oy3Var, bz3Var, z, 44100.0f);
        this.G0 = context.getApplicationContext();
        this.I0 = vj0Var;
        this.H0 = new nm(handler, bq2Var);
        vj0Var.r = new ry3(this);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0091  */
    /* JADX WARN: Code duplicated, block: B:39:0x010c  */
    @Override // yads.zy3
    public final ny3 a(vy3 vy3Var, vz2 vz2Var, MediaCrypto mediaCrypto, float f) {
        boolean z;
        vz2[] vz2VarArr = this.i;
        vz2VarArr.getClass();
        int iA = a(vz2Var, vy3Var);
        if (vz2VarArr.length != 1) {
            for (vz2 vz2Var2 : vz2VarArr) {
                if (vy3Var.a(vz2Var, vz2Var2).d != 0) {
                    iA = Math.max(iA, a(vz2Var2, vy3Var));
                }
            }
        }
        this.J0 = iA;
        String str = vy3Var.a;
        int i = u56.a;
        if (i < 24) {
            byte[] bArrDecode = Base64.decode("T01YLlNFQy5hYWMuZGVj", 0);
            Charset charset = defpackage.ha1.b;
            if (new String(bArrDecode, charset).equals(str) && new String(Base64.decode("c2Ftc3VuZw==", 0), charset).equals(u56.c)) {
                String str2 = u56.b;
                if (str2.startsWith(new String(Base64.decode("emVyb2ZsdGU=", 0), charset)) || str2.startsWith(new String(Base64.decode("aGVyb2x0ZQ==", 0), charset)) || str2.startsWith(new String(Base64.decode("aGVyb3FsdGU=", 0), charset))) {
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        this.K0 = z;
        String str3 = vy3Var.c;
        int i2 = this.J0;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str3);
        mediaFormat.setInteger("channel-count", vz2Var.z);
        mediaFormat.setInteger("sample-rate", vz2Var.A);
        List list = vz2Var.o;
        for (int i3 = 0; i3 < list.size(); i3++) {
            mediaFormat.setByteBuffer(vx4.a(i3, "csd-"), ByteBuffer.wrap((byte[]) list.get(i3)));
        }
        d04.a(mediaFormat, "max-input-size", i2);
        if (i >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f) {
                if (i == 23) {
                    byte[] bArrDecode2 = Base64.decode("WlRFIEIyMDE3Rw==", 0);
                    Charset charset2 = defpackage.ha1.b;
                    String str4 = new String(bArrDecode2, charset2);
                    String str5 = u56.d;
                    if (!str4.equals(str5) && !new String(Base64.decode("QVhPTiA3IG1pbmk=", 0), charset2).equals(str5)) {
                        mediaFormat.setFloat("operating-rate", f);
                    }
                } else {
                    mediaFormat.setFloat("operating-rate", f);
                }
            }
        }
        if (i <= 28 && MimeTypes.AUDIO_AC4.equals(vz2Var.m)) {
            mediaFormat.setInteger(new String(Base64.decode("YWM0LWlzLXN5bmM=", 0), defpackage.ha1.b), 1);
        }
        if (i >= 24) {
            vj0 vj0Var = this.I0;
            int i4 = vz2Var.z;
            int i5 = vz2Var.A;
            uz2 uz2Var = new uz2();
            uz2Var.k = MimeTypes.AUDIO_RAW;
            uz2Var.x = i4;
            uz2Var.y = i5;
            uz2Var.z = 4;
            if (vj0Var.a(new vz2(uz2Var)) == 2) {
                mediaFormat.setInteger("pcm-encoding", 4);
            }
        }
        if (i >= 32) {
            mediaFormat.setInteger("max-output-channel-count", 99);
        }
        this.L0 = (!MimeTypes.AUDIO_RAW.equals(vy3Var.b) || MimeTypes.AUDIO_RAW.equals(vz2Var.m)) ? null : vz2Var;
        return new ny3(vy3Var, mediaFormat, vz2Var, null, mediaCrypto);
    }

    @Override // yads.zy3
    public final void b(mi0 mi0Var) {
        if (!this.N0 || mi0Var.b(Integer.MIN_VALUE)) {
            return;
        }
        if (Math.abs(mi0Var.f - this.M0) > 500000) {
            this.M0 = mi0Var.f;
        }
        this.N0 = false;
    }

    @Override // yads.gs
    public final String c() {
        return "MediaCodecAudioRenderer";
    }

    @Override // yads.zy3, yads.gs
    public final boolean e() {
        if (!this.x0) {
            return false;
        }
        vj0 vj0Var = this.I0;
        if (!vj0Var.f()) {
            return true;
        }
        if (vj0Var.S) {
            return (vj0Var.f() && vj0Var.i.b(vj0Var.d())) ? false : true;
        }
        return false;
    }

    @Override // yads.zy3, yads.gs
    public final boolean f() {
        vj0 vj0Var = this.I0;
        return (vj0Var.f() && vj0Var.i.b(vj0Var.d())) || super.f();
    }

    @Override // yads.gs
    public final void g() {
        this.P0 = true;
        try {
            this.I0.b();
            try {
                this.B = null;
                this.C0 = C.TIME_UNSET;
                this.D0 = C.TIME_UNSET;
                this.E0 = 0;
                o();
            } finally {
                this.H0.a(this.B0);
            }
        } catch (Throwable th) {
            try {
                this.B = null;
                this.C0 = C.TIME_UNSET;
                this.D0 = C.TIME_UNSET;
                this.E0 = 0;
                o();
                throw th;
            } finally {
                this.H0.a(this.B0);
            }
        }
    }

    @Override // yads.my3
    public final dw4 getPlaybackParameters() {
        vj0 vj0Var = this.I0;
        return vj0Var.k ? vj0Var.y : vj0Var.c().a;
    }

    @Override // yads.gs
    public final void h() {
        try {
            try {
                this.m0 = false;
                this.u.b();
                this.t.b();
                this.l0 = false;
                this.k0 = false;
                t();
                eo2.a(this.E, null);
                this.E = null;
                if (this.P0) {
                    this.P0 = false;
                    vj0 vj0Var = this.I0;
                    vj0Var.b();
                    for (mm mmVar : vj0Var.f) {
                        mmVar.d();
                    }
                    for (mm mmVar2 : vj0Var.g) {
                        mmVar2.d();
                    }
                    vj0Var.U = false;
                    vj0Var.a0 = false;
                }
            } catch (Throwable th) {
                eo2.a(this.E, null);
                this.E = null;
                throw th;
            }
        } catch (Throwable th2) {
            if (this.P0) {
                this.P0 = false;
                vj0 vj0Var2 = this.I0;
                vj0Var2.b();
                for (mm mmVar3 : vj0Var2.f) {
                    mmVar3.d();
                }
                for (mm mmVar4 : vj0Var2.g) {
                    mmVar4.d();
                }
                vj0Var2.U = false;
                vj0Var2.a0 = false;
            }
            throw th2;
        }
    }

    @Override // yads.gs
    public final void i() {
        this.I0.h();
    }

    @Override // yads.gs
    public final void j() {
        long jA = this.I0.a(e());
        if (jA != Long.MIN_VALUE) {
            if (!this.O0) {
                jA = Math.max(this.M0, jA);
            }
            this.M0 = jA;
            this.O0 = false;
        }
        this.I0.g();
    }

    @Override // yads.zy3
    public final void r() {
        this.I0.G = true;
    }

    @Override // yads.zy3
    public final void u() throws up2 {
        try {
            vj0 vj0Var = this.I0;
            if (!vj0Var.S && vj0Var.f() && vj0Var.a()) {
                vj0Var.i();
                vj0Var.S = true;
            }
        } catch (sm e) {
            throw a(e, e.d, e.c, PlaybackException.ERROR_CODE_AUDIO_TRACK_WRITE_FAILED);
        }
    }

    @Override // yads.zy3
    public final boolean b(vz2 vz2Var) {
        return this.I0.a(vz2Var) != 0;
    }

    @Override // yads.gs
    public final my3 b() {
        return this;
    }

    @Override // yads.zy3
    public final boolean a(long j, long j2, qy3 qy3Var, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, vz2 vz2Var) throws up2 {
        byteBuffer.getClass();
        if (this.L0 != null && (i2 & 2) != 0) {
            qy3Var.getClass();
            qy3Var.a(i, false);
            return true;
        }
        if (z) {
            if (qy3Var != null) {
                qy3Var.a(i, false);
            }
            this.B0.f += i3;
            this.I0.G = true;
            return true;
        }
        try {
            if (!this.I0.a(byteBuffer, j3, i3)) {
                return false;
            }
            if (qy3Var != null) {
                qy3Var.a(i, false);
            }
            this.B0.e += i3;
            return true;
        } catch (qm e) {
            throw a(e, e.d, e.c, PlaybackException.ERROR_CODE_AUDIO_TRACK_INIT_FAILED);
        } catch (sm e2) {
            throw a(e2, vz2Var, e2.c, PlaybackException.ERROR_CODE_AUDIO_TRACK_WRITE_FAILED);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0052, code lost:
    
        if ((r4.isEmpty() ? null : (yads.vy3) r4.get(0)) != null) goto L30;
     */
    @Override // yads.zy3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(yads.bz3 r13, yads.vz2 r14) {
        /*
            Method dump skipped, instruction units count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.sy3.a(yads.bz3, yads.vz2):int");
    }

    @Override // yads.my3
    public final long a() {
        if (this.g == 2) {
            long jA = this.I0.a(e());
            if (jA != Long.MIN_VALUE) {
                if (!this.O0) {
                    jA = Math.max(this.M0, jA);
                }
                this.M0 = jA;
                this.O0 = false;
            }
        }
        return this.M0;
    }

    @Override // yads.zy3
    public final ArrayList a(bz3 bz3Var, vz2 vz2Var, boolean z) {
        return jz3.a(a(bz3Var, vz2Var, z, this.I0), vz2Var);
    }

    public static oe3 a(bz3 bz3Var, vz2 vz2Var, boolean z, vj0 vj0Var) {
        String str = vz2Var.m;
        if (str == null) {
            le3 le3Var = oe3.c;
            return k55.f;
        }
        if (vj0Var.a(vz2Var) != 0) {
            List listA = jz3.a(MimeTypes.AUDIO_RAW, false, false);
            vy3 vy3Var = listA.isEmpty() ? null : (vy3) listA.get(0);
            if (vy3Var != null) {
                return oe3.a(vy3Var);
            }
        }
        ((defpackage.d92) bz3Var).getClass();
        List listA2 = jz3.a(str, z, false);
        String strA = jz3.a(vz2Var);
        if (strA == null) {
            return oe3.a(listA2);
        }
        List listA3 = jz3.a(strA, z, false);
        le3 le3Var2 = oe3.c;
        return new ke3().a(listA2).a(listA3).a();
    }

    @Override // yads.zy3
    public final oi0 a(vy3 vy3Var, vz2 vz2Var, vz2 vz2Var2) {
        oi0 oi0VarA = vy3Var.a(vz2Var, vz2Var2);
        int i = oi0VarA.e;
        if (a(vz2Var2, vy3Var) > this.J0) {
            i |= 64;
        }
        int i2 = i;
        return new oi0(vy3Var.a, vz2Var, vz2Var2, i2 != 0 ? 0 : oi0VarA.d, i2);
    }

    @Override // yads.zy3
    public final float a(float f, vz2[] vz2VarArr) {
        int iMax = -1;
        for (vz2 vz2Var : vz2VarArr) {
            int i = vz2Var.A;
            if (i != -1) {
                iMax = Math.max(iMax, i);
            }
        }
        if (iMax == -1) {
            return -1.0f;
        }
        return iMax * f;
    }

    @Override // yads.zy3
    public final void a(String str, long j, long j2) {
        this.H0.a(str, j, j2);
    }

    @Override // yads.zy3
    public final void a(String str) {
        this.H0.a(str);
    }

    @Override // yads.zy3
    public final void a(Exception exc) {
        sv3.b("MediaCodecAudioRenderer", sv3.a("Audio codec error", exc));
        this.H0.a(exc);
    }

    @Override // yads.zy3
    public final oi0 a(a03 a03Var) {
        oi0 oi0VarA = super.a(a03Var);
        this.H0.a(a03Var.b, oi0VarA);
        return oi0VarA;
    }

    @Override // yads.zy3
    public final void a(vz2 vz2Var, MediaFormat mediaFormat) throws up2 {
        int iB;
        int i;
        vz2 vz2Var2 = this.L0;
        int[] iArr = null;
        if (vz2Var2 != null) {
            vz2Var = vz2Var2;
        } else if (this.K != null) {
            if (MimeTypes.AUDIO_RAW.equals(vz2Var.m)) {
                iB = vz2Var.B;
            } else if (u56.a >= 24 && mediaFormat.containsKey("pcm-encoding")) {
                iB = mediaFormat.getInteger("pcm-encoding");
            } else {
                iB = mediaFormat.containsKey("v-bits-per-sample") ? u56.b(mediaFormat.getInteger("v-bits-per-sample")) : 2;
            }
            uz2 uz2Var = new uz2();
            uz2Var.k = MimeTypes.AUDIO_RAW;
            uz2Var.z = iB;
            uz2Var.A = vz2Var.C;
            uz2Var.B = vz2Var.D;
            uz2Var.x = mediaFormat.getInteger("channel-count");
            uz2Var.y = mediaFormat.getInteger("sample-rate");
            vz2 vz2Var3 = new vz2(uz2Var);
            if (this.K0 && vz2Var3.z == 6 && (i = vz2Var.z) < 6) {
                iArr = new int[i];
                for (int i2 = 0; i2 < vz2Var.z; i2++) {
                    iArr[i2] = i2;
                }
            }
            vz2Var = vz2Var3;
        }
        try {
            this.I0.a(vz2Var, iArr);
        } catch (pm e) {
            throw a((Exception) e, e.b, false, PlaybackException.ERROR_CODE_AUDIO_TRACK_INIT_FAILED);
        }
    }

    @Override // yads.zy3, yads.gs
    public final void a(long j, boolean z) {
        super.a(j, z);
        this.I0.b();
        this.M0 = j;
        this.N0 = true;
        this.O0 = true;
    }

    @Override // yads.gs
    public final void a(boolean z) {
        ji0 ji0Var = new ji0();
        this.B0 = ji0Var;
        this.H0.b(ji0Var);
        n65 n65Var = this.d;
        n65Var.getClass();
        boolean z2 = n65Var.a;
        vj0 vj0Var = this.I0;
        if (z2) {
            vj0Var.getClass();
            if (u56.a >= 21) {
                if (vj0Var.V) {
                    if (!vj0Var.Y) {
                        vj0Var.Y = true;
                        vj0Var.b();
                    }
                } else {
                    defpackage.ud.g();
                    return;
                }
            } else {
                defpackage.ud.g();
                return;
            }
        } else if (vj0Var.Y) {
            vj0Var.Y = false;
            vj0Var.b();
        }
        vj0 vj0Var2 = this.I0;
        rw4 rw4Var = this.f;
        rw4Var.getClass();
        vj0Var2.q = rw4Var;
    }

    @Override // yads.my3
    public final void a(dw4 dw4Var) {
        vj0 vj0Var = this.I0;
        vj0Var.getClass();
        float f = dw4Var.b;
        int i = u56.a;
        dw4 dw4Var2 = new dw4(Math.max(0.1f, Math.min(f, 8.0f)), Math.max(0.1f, Math.min(dw4Var.c, 8.0f)));
        if (vj0Var.k && u56.a >= 23) {
            vj0Var.a(dw4Var2);
            return;
        }
        boolean z = vj0Var.c().b;
        qj0 qj0VarC = vj0Var.c();
        if (dw4Var2.equals(qj0VarC.a) && z == qj0VarC.b) {
            return;
        }
        qj0 qj0Var = new qj0(dw4Var2, z, C.TIME_UNSET, C.TIME_UNSET);
        if (vj0Var.f()) {
            vj0Var.w = qj0Var;
        } else {
            vj0Var.x = qj0Var;
        }
    }

    @Override // yads.gs, yads.tw4
    public final void a(int i, Object obj) {
        if (i == 2) {
            vj0 vj0Var = this.I0;
            float fFloatValue = ((Float) obj).floatValue();
            if (vj0Var.J != fFloatValue) {
                vj0Var.J = fFloatValue;
                vj0Var.j();
                return;
            }
            return;
        }
        if (i == 3) {
            am amVar = (am) obj;
            vj0 vj0Var2 = this.I0;
            if (vj0Var2.v.equals(amVar)) {
                return;
            }
            vj0Var2.v = amVar;
            if (vj0Var2.Y) {
                return;
            }
            vj0Var2.b();
            return;
        }
        if (i != 6) {
            switch (i) {
                case 9:
                    vj0 vj0Var3 = this.I0;
                    boolean zBooleanValue = ((Boolean) obj).booleanValue();
                    dw4 dw4Var = vj0Var3.c().a;
                    qj0 qj0VarC = vj0Var3.c();
                    if (!dw4Var.equals(qj0VarC.a) || zBooleanValue != qj0VarC.b) {
                        qj0 qj0Var = new qj0(dw4Var, zBooleanValue, C.TIME_UNSET, C.TIME_UNSET);
                        if (vj0Var3.f()) {
                            vj0Var3.w = qj0Var;
                        } else {
                            vj0Var3.x = qj0Var;
                        }
                    }
                    break;
                case 10:
                    vj0 vj0Var4 = this.I0;
                    int iIntValue = ((Integer) obj).intValue();
                    if (vj0Var4.W != iIntValue) {
                        vj0Var4.W = iIntValue;
                        vj0Var4.V = iIntValue != 0;
                        vj0Var4.b();
                    }
                    break;
                case 11:
                    this.Q0 = (m65) obj;
                    break;
            }
            return;
        }
        an anVar = (an) obj;
        vj0 vj0Var5 = this.I0;
        if (vj0Var5.X.equals(anVar)) {
            return;
        }
        anVar.getClass();
        if (vj0Var5.u != null) {
            vj0Var5.X.getClass();
        }
        vj0Var5.X = anVar;
    }

    public final int a(vz2 vz2Var, vy3 vy3Var) {
        int i;
        if (!m25.a.a().equals(vy3Var.a) || (i = u56.a) >= 24 || (i == 23 && u56.c(this.G0))) {
            return vz2Var.n;
        }
        return -1;
    }
}
