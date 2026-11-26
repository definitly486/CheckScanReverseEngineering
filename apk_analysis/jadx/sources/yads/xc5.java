package yads;

import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.opengl.Matrix;
import java.nio.Buffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class xc5 implements id6, wx {
    public int j;
    public SurfaceTexture k;
    public byte[] n;
    public final AtomicBoolean b = new AtomicBoolean();
    public final AtomicBoolean c = new AtomicBoolean(true);
    public final e25 d = new e25();
    public final h03 e = new h03();
    public final fx5 f = new fx5();
    public final fx5 g = new fx5();
    public final float[] h = new float[16];
    public final float[] i = new float[16];
    public volatile int l = 0;
    public int m = -1;

    @Override // yads.id6
    public final void a(long j, long j2, vz2 vz2Var, MediaFormat mediaFormat) {
        int i;
        float f;
        float f2;
        ArrayList arrayListA;
        this.f.a(Long.valueOf(j), j2);
        byte[] bArr = vz2Var.w;
        int i2 = vz2Var.x;
        byte[] bArr2 = this.n;
        int i3 = this.m;
        this.n = bArr;
        if (i2 == -1) {
            i2 = this.l;
        }
        this.m = i2;
        if (i3 == i2 && Arrays.equals(bArr2, this.n)) {
            return;
        }
        byte[] bArr3 = this.n;
        b25 b25Var = null;
        if (bArr3 != null) {
            int i4 = this.m;
            os4 os4Var = new os4(bArr3);
            try {
                os4Var.e(os4Var.b + 4);
                int iA = os4Var.a();
                os4Var.e(0);
                if (iA == 1886547818) {
                    os4Var.e(os4Var.b + 8);
                    int i5 = os4Var.b;
                    int i6 = os4Var.c;
                    while (true) {
                        if (i5 < i6) {
                            int iA2 = os4Var.a() + i5;
                            if (iA2 > i5 && iA2 <= i6) {
                                int iA3 = os4Var.a();
                                if (iA3 != 2037673328 && iA3 != 1836279920) {
                                    os4Var.e(iA2);
                                    i5 = iA2;
                                }
                                os4Var.d(iA2);
                                arrayListA = c25.a(os4Var);
                            }
                        }
                        arrayListA = null;
                    }
                } else {
                    arrayListA = c25.a(os4Var);
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
            if (arrayListA != null) {
                int size = arrayListA.size();
                if (size == 1) {
                    z15 z15Var = (z15) arrayListA.get(0);
                    b25Var = new b25(z15Var, z15Var, i4);
                } else if (size == 2) {
                    b25Var = new b25((z15) arrayListA.get(0), (z15) arrayListA.get(1), i4);
                }
            }
        }
        if (b25Var == null || !e25.a(b25Var)) {
            int i7 = this.m;
            float radians = (float) Math.toRadians(180.0d);
            float radians2 = (float) Math.toRadians(360.0d);
            float f3 = radians / 36.0f;
            float f4 = radians2 / 72.0f;
            float[] fArr = new float[15984];
            float[] fArr2 = new float[10656];
            int i8 = 0;
            int i9 = 0;
            for (int i10 = 0; i10 < 36; i10 = i) {
                float f5 = radians / 2.0f;
                float f6 = (i10 * f3) - f5;
                i = i10 + 1;
                float f7 = (i * f3) - f5;
                float f8 = radians;
                int i11 = 0;
                while (i11 < 73) {
                    int i12 = i;
                    int i13 = 0;
                    int i14 = 2;
                    while (i13 < i14) {
                        if (i13 == 0) {
                            f = f6;
                            f2 = f;
                        } else {
                            f = f7;
                            f2 = f6;
                        }
                        float f9 = i11 * f4;
                        float f10 = radians2;
                        double d = (f9 + 3.1415927f) - (radians2 / 2.0f);
                        double d2 = f;
                        fArr[i8] = -((float) (Math.cos(d2) * Math.sin(d) * 50.0d));
                        fArr[i8 + 1] = (float) (Math.sin(d2) * 50.0d);
                        int i15 = i8 + 3;
                        float f11 = f3;
                        fArr[i8 + 2] = (float) (Math.cos(d2) * Math.cos(d) * 50.0d);
                        fArr2[i9] = f9 / f10;
                        int i16 = i9 + 2;
                        fArr2[i9 + 1] = ((i10 + i13) * f11) / f8;
                        if ((i11 == 0 && i13 == 0) || (i11 == 72 && i13 == 1)) {
                            System.arraycopy(fArr, i8, fArr, i15, 3);
                            i8 += 6;
                            i14 = 2;
                            System.arraycopy(fArr2, i9, fArr2, i16, 2);
                            i9 += 4;
                        } else {
                            i14 = 2;
                            i8 = i15;
                            i9 = i16;
                        }
                        i13++;
                        f6 = f2;
                        f3 = f11;
                        radians2 = f10;
                    }
                    i11++;
                    i = i12;
                }
                radians = f8;
            }
            z15 z15Var2 = new z15(new a25(0, fArr, fArr2, 1));
            b25Var = new b25(z15Var2, z15Var2, i7);
        }
        this.g.a(b25Var, j2);
    }

    public final SurfaceTexture b() {
        GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
        k73.a();
        e25 e25Var = this.d;
        e25Var.getClass();
        j73 j73Var = new j73();
        e25Var.c = j73Var;
        e25Var.d = GLES20.glGetUniformLocation(j73Var.a, "uMvpMatrix");
        e25Var.e = GLES20.glGetUniformLocation(e25Var.c.a, "uTexMatrix");
        e25Var.f = e25Var.c.a("aPosition");
        e25Var.g = e25Var.c.a("aTexCoords");
        e25Var.h = GLES20.glGetUniformLocation(e25Var.c.a, "uTexture");
        k73.a();
        this.j = k73.b();
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.j);
        this.k = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: nha
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                this.b.a(surfaceTexture2);
            }
        });
        return this.k;
    }

    public final void a(float[] fArr) {
        float[] fArr2;
        Object objA;
        GLES20.glClear(16384);
        k73.a();
        if (this.b.compareAndSet(true, false)) {
            SurfaceTexture surfaceTexture = this.k;
            surfaceTexture.getClass();
            surfaceTexture.updateTexImage();
            k73.a();
            if (this.c.compareAndSet(true, false)) {
                Matrix.setIdentityM(this.h, 0);
            }
            long timestamp = this.k.getTimestamp();
            fx5 fx5Var = this.f;
            synchronized (fx5Var) {
                objA = fx5Var.a(timestamp, false);
            }
            Long l = (Long) objA;
            if (l != null) {
                this.e.a(l.longValue(), this.h);
            }
            b25 b25Var = (b25) this.g.a(timestamp);
            if (b25Var != null) {
                e25 e25Var = this.d;
                e25Var.getClass();
                if (e25.a(b25Var)) {
                    e25Var.a = b25Var.c;
                    e25Var.b = new d25(b25Var.a.a[0]);
                    if (!b25Var.d) {
                        new d25(b25Var.b.a[0]);
                    }
                }
            }
        }
        Matrix.multiplyMM(this.i, 0, fArr, 0, this.h, 0);
        e25 e25Var2 = this.d;
        int i = this.j;
        float[] fArr3 = this.i;
        d25 d25Var = e25Var2.b;
        if (d25Var == null) {
            return;
        }
        int i2 = e25Var2.a;
        if (i2 == 1) {
            fArr2 = e25.j;
        } else if (i2 == 2) {
            fArr2 = e25.k;
        } else {
            fArr2 = e25.i;
        }
        GLES20.glUniformMatrix3fv(e25Var2.e, 1, false, fArr2, 0);
        GLES20.glUniformMatrix4fv(e25Var2.d, 1, false, fArr3, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, i);
        GLES20.glUniform1i(e25Var2.h, 0);
        k73.a();
        GLES20.glVertexAttribPointer(e25Var2.f, 3, 5126, false, 12, (Buffer) d25Var.b);
        k73.a();
        GLES20.glVertexAttribPointer(e25Var2.g, 2, 5126, false, 8, (Buffer) d25Var.c);
        k73.a();
        GLES20.glDrawArrays(d25Var.d, 0, d25Var.a);
        k73.a();
    }

    public final /* synthetic */ void a(SurfaceTexture surfaceTexture) {
        this.b.set(true);
    }

    @Override // yads.wx
    public final void a(long j, float[] fArr) {
        this.e.c.a(fArr, j);
    }

    @Override // yads.wx
    public final void a() {
        this.f.a();
        h03 h03Var = this.e;
        h03Var.c.a();
        h03Var.d = false;
        this.c.set(true);
    }
}
