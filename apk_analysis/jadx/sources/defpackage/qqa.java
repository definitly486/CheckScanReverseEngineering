package defpackage;

import androidx.work.WorkInfo;
import com.google.android.gms.internal.measurement.zzacr;
import com.google.android.gms.internal.measurement.zzacy;
import com.google.android.gms.internal.measurement.zzada;
import com.google.android.gms.internal.measurement.zzafc;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class qqa extends zzada {
    public final byte[] c;
    public final int d;
    public int e;

    public qqa(byte[] bArr, int i) {
        int length = bArr.length;
        if (((length - i) | i) < 0) {
            Locale locale = Locale.US;
            fg.c(rz0.c(length, i, "Array range is invalid. Buffer.length=", ", offset=0, length="));
            throw null;
        }
        this.c = bArr;
        this.e = 0;
        this.d = i;
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void a(int i, byte[] bArr) throws zzacy {
        zzr(i);
        b(bArr, 0, i);
    }

    public final void b(byte[] bArr, int i, int i2) throws zzacy {
        try {
            System.arraycopy(bArr, i, this.c, this.e, i2);
            this.e += i2;
        } catch (IndexOutOfBoundsException e) {
            throw new zzacy(this.e, this.d, i2, e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzacj
    public final void zza(byte[] bArr, int i, int i2) throws zzacy {
        b(bArr, i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzb(int i, int i2) throws zzacy {
        zzr((i << 3) | i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzc(int i, int i2) throws zzacy {
        zzr(i << 3);
        zzq(i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzd(int i, int i2) throws zzacy {
        zzr(i << 3);
        zzr(i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zze(int i, int i2) throws zzacy {
        zzr((i << 3) | 5);
        zzs(i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzf(int i, long j) throws zzacy {
        zzr(i << 3);
        zzt(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzg(int i, long j) throws zzacy {
        zzr((i << 3) | 1);
        zzu(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzh(int i, boolean z) throws zzacy {
        zzr(i << 3);
        zzp(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzi(int i, String str) throws zzacy {
        zzr((i << 3) | 2);
        zzw(str);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzj(int i, zzacr zzacrVar) throws zzacy {
        zzr((i << 3) | 2);
        zzk(zzacrVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzk(zzacr zzacrVar) throws zzacy {
        zzr(zzacrVar.zzb());
        zzacrVar.d(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzm(int i, zzafc zzafcVar) throws zzacy {
        zzr(11);
        zzd(2, i);
        zzr(26);
        zzo(zzafcVar);
        zzr(12);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzn(int i, zzacr zzacrVar) throws zzacy {
        zzr(11);
        zzd(2, i);
        zzj(3, zzacrVar);
        zzr(12);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzo(zzafc zzafcVar) throws zzacy {
        zzr(zzafcVar.zzcq());
        zzafcVar.zzcH(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzp(byte b) throws zzacy {
        int i = this.e;
        try {
            int i2 = i + 1;
            try {
                this.c[i] = b;
                this.e = i2;
            } catch (IndexOutOfBoundsException e) {
                e = e;
                i = i2;
                throw new zzacy(i, this.d, 1, e);
            }
        } catch (IndexOutOfBoundsException e2) {
            e = e2;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzq(int i) throws zzacy {
        if (i >= 0) {
            zzr(i);
        } else {
            zzt(i);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzr(int i) throws zzacy {
        int i2;
        int i3 = this.e;
        while (true) {
            int i4 = i & WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
            byte[] bArr = this.c;
            if (i4 == 0) {
                i2 = i3 + 1;
                bArr[i3] = (byte) i;
                this.e = i2;
                return;
            } else {
                i2 = i3 + 1;
                try {
                    bArr[i3] = (byte) (i | 128);
                    i >>>= 7;
                    i3 = i2;
                } catch (IndexOutOfBoundsException e) {
                    throw new zzacy(i2, this.d, 1, e);
                }
            }
            throw new zzacy(i2, this.d, 1, e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzs(int i) throws zzacy {
        int i2 = this.e;
        try {
            byte[] bArr = this.c;
            bArr[i2] = (byte) i;
            bArr[i2 + 1] = (byte) (i >> 8);
            bArr[i2 + 2] = (byte) (i >> 16);
            bArr[i2 + 3] = (byte) (i >> 24);
            this.e = i2 + 4;
        } catch (IndexOutOfBoundsException e) {
            throw new zzacy(i2, this.d, 4, e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzt(long j) throws zzacy {
        int i;
        int i2 = this.e;
        byte[] bArr = this.c;
        int i3 = this.d;
        if (!zzada.b || i3 - i2 < 10) {
            while ((j & (-128)) != 0) {
                int i4 = i2 + 1;
                try {
                    bArr[i2] = (byte) (((int) j) | 128);
                    j >>>= 7;
                    i2 = i4;
                } catch (IndexOutOfBoundsException e) {
                    e = e;
                    i = i4;
                    throw new zzacy(i, i3, 1, e);
                }
            }
            i = i2 + 1;
            try {
                bArr[i2] = (byte) j;
            } catch (IndexOutOfBoundsException e2) {
                e = e2;
                throw new zzacy(i, i3, 1, e);
            }
        } else {
            while ((j & (-128)) != 0) {
                eta.j(bArr, i2, (byte) (((int) j) | 128));
                j >>>= 7;
                i2++;
            }
            i = i2 + 1;
            eta.j(bArr, i2, (byte) j);
        }
        this.e = i;
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzu(long j) throws zzacy {
        int i = this.e;
        try {
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
        } catch (IndexOutOfBoundsException e) {
            throw new zzacy(i, this.d, 8, e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzw(String str) throws zzacy {
        int i = this.e;
        try {
            int iZzE = zzada.zzE(str.length() * 3);
            int iZzE2 = zzada.zzE(str.length());
            byte[] bArr = this.c;
            if (iZzE2 != iZzE) {
                zzr(gta.b(str));
                int i2 = this.e;
                this.e = gta.c(str, bArr, i2, bArr.length - i2);
            } else {
                int i3 = i + iZzE2;
                this.e = i3;
                int iC = gta.c(str, bArr, i3, bArr.length - i3);
                this.e = i;
                zzr((iC - i) - iZzE2);
                this.e = iC;
            }
        } catch (IndexOutOfBoundsException e) {
            throw new zzacy(e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final void zzx() {
    }

    @Override // com.google.android.gms.internal.measurement.zzada
    public final int zzy() {
        return this.d - this.e;
    }
}
