package defpackage;

import androidx.work.WorkInfo;
import com.google.android.gms.internal.measurement.zzacr;
import com.google.android.gms.internal.measurement.zzacy;
import com.google.android.gms.internal.measurement.zzada;
import com.google.android.gms.internal.measurement.zzafc;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes4.dex */
public final class rqa extends zzada {
    public final byte[] c;
    public final int d;
    public int e;
    public final OutputStream f;

    public rqa(OutputStream outputStream, int i) {
        if (outputStream == null) {
            o2.d("out");
            throw null;
        }
        this.f = outputStream;
        if (i < 0) {
            fg.c("bufferSize must be >= 0");
            throw null;
        }
        byte[] bArr = new byte[Math.max(i, 20)];
        this.c = bArr;
        this.d = bArr.length;
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void a(int i, byte[] bArr) throws IOException {
        zzr(i);
        e(bArr, 0, i);
    }

    public final void b(long j) {
        boolean z = zzada.b;
        byte[] bArr = this.c;
        if (z) {
            while (true) {
                long j2 = j & (-128);
                int i = (int) j;
                int i2 = this.e;
                if (j2 == 0) {
                    this.e = i2 + 1;
                    eta.j(bArr, i2, (byte) i);
                    return;
                } else {
                    this.e = i2 + 1;
                    eta.j(bArr, i2, (byte) (i | 128));
                    j >>>= 7;
                }
            }
        } else {
            while (true) {
                long j3 = j & (-128);
                int i3 = (int) j;
                int i4 = this.e;
                if (j3 == 0) {
                    this.e = i4 + 1;
                    bArr[i4] = (byte) i3;
                    return;
                } else {
                    this.e = i4 + 1;
                    bArr[i4] = (byte) (i3 | 128);
                    j >>>= 7;
                }
            }
        }
    }

    public final void c(int i) {
        int i2 = this.e;
        byte[] bArr = this.c;
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >> 8);
        bArr[i2 + 2] = (byte) (i >> 16);
        bArr[i2 + 3] = (byte) (i >> 24);
        this.e = i2 + 4;
    }

    public final void d(long j) {
        int i = this.e;
        byte[] bArr = this.c;
        bArr[i] = (byte) j;
        bArr[i + 1] = (byte) (j >> 8);
        bArr[i + 2] = (byte) (j >> 16);
        bArr[i + 3] = (byte) (j >> 24);
        bArr[i + 4] = (byte) (j >> 32);
        bArr[i + 5] = (byte) (j >> 40);
        bArr[i + 6] = (byte) (j >> 48);
        bArr[i + 7] = (byte) (j >> 56);
        this.e = i + 8;
    }

    public final void e(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.e;
        int i4 = this.d;
        int i5 = i4 - i3;
        byte[] bArr2 = this.c;
        if (i5 >= i2) {
            System.arraycopy(bArr, i, bArr2, i3, i2);
            this.e += i2;
            return;
        }
        System.arraycopy(bArr, i, bArr2, i3, i5);
        int i6 = i + i5;
        this.e = i4;
        g();
        int i7 = i2 - i5;
        if (i7 > i4) {
            this.f.write(bArr, i6, i7);
        } else {
            System.arraycopy(bArr, i6, bArr2, 0, i7);
            this.e = i7;
        }
    }

    public final void f(int i) throws IOException {
        if (this.d - this.e < i) {
            g();
        }
    }

    public final void g() throws IOException {
        this.f.write(this.c, 0, this.e);
        this.e = 0;
    }

    public final void h(int i) {
        boolean z = zzada.b;
        byte[] bArr = this.c;
        if (z) {
            while (true) {
                int i2 = i & WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
                int i3 = this.e;
                if (i2 == 0) {
                    this.e = i3 + 1;
                    eta.j(bArr, i3, (byte) i);
                    return;
                } else {
                    this.e = i3 + 1;
                    eta.j(bArr, i3, (byte) (i | 128));
                    i >>>= 7;
                }
            }
        } else {
            while (true) {
                int i4 = i & WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
                int i5 = this.e;
                if (i4 == 0) {
                    this.e = i5 + 1;
                    bArr[i5] = (byte) i;
                    return;
                } else {
                    this.e = i5 + 1;
                    bArr[i5] = (byte) (i | 128);
                    i >>>= 7;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzacj
    public final void zza(byte[] bArr, int i, int i2) throws IOException {
        e(bArr, i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzb(int i, int i2) throws IOException {
        zzr((i << 3) | i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzc(int i, int i2) throws IOException {
        f(20);
        h(i << 3);
        if (i2 >= 0) {
            h(i2);
        } else {
            b(i2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzd(int i, int i2) throws IOException {
        f(20);
        h(i << 3);
        h(i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zze(int i, int i2) throws IOException {
        f(14);
        h((i << 3) | 5);
        c(i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzf(int i, long j) throws IOException {
        f(20);
        h(i << 3);
        b(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzg(int i, long j) throws IOException {
        f(18);
        h((i << 3) | 1);
        d(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzh(int i, boolean z) throws IOException {
        f(11);
        h(i << 3);
        int i2 = this.e;
        this.c[i2] = z ? (byte) 1 : (byte) 0;
        this.e = i2 + 1;
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzi(int i, String str) throws IOException {
        zzr((i << 3) | 2);
        zzw(str);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzj(int i, zzacr zzacrVar) throws IOException {
        zzr((i << 3) | 2);
        zzk(zzacrVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzk(zzacr zzacrVar) throws IOException {
        zzr(zzacrVar.zzb());
        zzacrVar.d(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzm(int i, zzafc zzafcVar) throws IOException {
        zzr(11);
        zzd(2, i);
        zzr(26);
        zzo(zzafcVar);
        zzr(12);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzn(int i, zzacr zzacrVar) throws IOException {
        zzr(11);
        zzd(2, i);
        zzj(3, zzacrVar);
        zzr(12);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzo(zzafc zzafcVar) throws IOException {
        zzr(zzafcVar.zzcq());
        zzafcVar.zzcH(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzp(byte b) throws IOException {
        if (this.e == this.d) {
            g();
        }
        int i = this.e;
        this.c[i] = b;
        this.e = i + 1;
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzq(int i) throws IOException {
        if (i >= 0) {
            zzr(i);
        } else {
            zzt(i);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzr(int i) throws IOException {
        f(5);
        h(i);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzs(int i) throws IOException {
        f(4);
        c(i);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzt(long j) throws IOException {
        f(10);
        b(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzu(long j) throws IOException {
        f(8);
        d(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzw(String str) throws IOException {
        int length = str.length() * 3;
        int iZzE = zzada.zzE(length);
        int i = iZzE + length;
        int i2 = this.d;
        if (i > i2) {
            byte[] bArr = new byte[length];
            int iC = gta.c(str, bArr, 0, length);
            zzr(iC);
            e(bArr, 0, iC);
            return;
        }
        if (i > i2 - this.e) {
            g();
        }
        int iZzE2 = zzada.zzE(str.length());
        int i3 = this.e;
        byte[] bArr2 = this.c;
        try {
            if (iZzE2 == iZzE) {
                int i4 = i3 + iZzE2;
                this.e = i4;
                int iC2 = gta.c(str, bArr2, i4, i2 - i4);
                this.e = i3;
                h((iC2 - i3) - iZzE2);
                this.e = iC2;
            } else {
                int iB = gta.b(str);
                h(iB);
                this.e = gta.c(str, bArr2, this.e, iB);
            }
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzacy(e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzx() throws IOException {
        if (this.e > 0) {
            g();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final int zzy() {
        throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer.");
    }
}
