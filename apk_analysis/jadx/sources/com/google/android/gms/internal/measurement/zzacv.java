package com.google.android.gms.internal.measurement;

import defpackage.cg;
import defpackage.fg;
import defpackage.nqa;
import defpackage.oqa;
import defpackage.pqa;
import defpackage.xg;
import java.io.InputStream;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzacv {
    public int a;
    public int b;
    public pqa c;

    public static zzacv zzM(InputStream inputStream, int i) {
        if (i <= 0) {
            fg.c("bufferSize must be > 0");
            return null;
        }
        if (inputStream != null) {
            return new oqa(inputStream, i);
        }
        nqa nqaVar = new nqa(zzaed.zza);
        try {
            nqaVar.zzD(0);
            return nqaVar;
        } catch (zzaeh e) {
            cg.h(e);
            return null;
        }
    }

    public static int zzR(int i) {
        return (i >>> 1) ^ (-(i & 1));
    }

    public static long zzS(long j) {
        return (j >>> 1) ^ (-(1 & j));
    }

    public abstract int zzD(int i);

    public abstract void zzE(int i);

    public abstract int zzF();

    public abstract boolean zzG();

    public abstract int zzH();

    public abstract int zzK(byte[] bArr, int i, int i2);

    public abstract void zzL(int i);

    public final void zzO() throws zzaeh {
        if (this.a + this.b < 100) {
            return;
        }
        xg.e("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
    }

    public final void zzP() {
        if (this.b == 0) {
            zzb(0);
        }
    }

    public final void zzQ() throws zzaeh {
        boolean zZzc;
        do {
            int iZza = zza();
            if (iZza == 0) {
                return;
            }
            zzO();
            this.b++;
            zZzc = zzc(iZza);
            this.b--;
        } while (zZzc);
    }

    public abstract int zza();

    public abstract void zzb(int i);

    public abstract boolean zzc(int i);

    public abstract double zzd();

    public abstract float zze();

    public abstract long zzf();

    public abstract long zzg();

    public abstract int zzh();

    public abstract long zzi();

    public abstract int zzj();

    public abstract boolean zzk();

    public abstract String zzl();

    public abstract String zzm();

    public abstract zzacr zzn();

    public abstract byte[] zzo();

    public abstract int zzp();

    public abstract int zzq();

    public abstract int zzr();

    public abstract long zzs();

    public abstract int zzt();

    public abstract long zzu();

    public abstract int zzx();

    public abstract long zzz();
}
