package com.google.android.gms.internal.play_billing;

import defpackage.ah;
import defpackage.bhb;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzfx extends zzfg {
    public bhb a;

    public zzfx() {
        throw null;
    }

    public static int zzx(zzhr zzhrVar) {
        int iZzn = zzhrVar.zzn();
        return zzy(iZzn) + iZzn;
    }

    public static int zzy(int i) {
        return (352 - (Integer.numberOfLeadingZeros(i) * 9)) >>> 6;
    }

    public static int zzz(long j) {
        return (640 - (Long.numberOfLeadingZeros(j) * 9)) >>> 6;
    }

    public abstract void a(int i, byte[] bArr);

    public final void zzA() {
        if (zza() > 0) {
            ah.f("Did not write as much data as expected.");
        } else {
            if (zza() >= 0) {
                return;
            }
            ah.f("Wrote more data than expected.");
        }
    }

    public abstract int zza();

    public abstract void zzb(byte b);

    public abstract void zzd(int i, boolean z);

    public abstract void zzf(int i, zzfp zzfpVar);

    public abstract void zzg(zzfp zzfpVar);

    public abstract void zzh(int i, int i2);

    public abstract void zzi(int i);

    public abstract void zzj(int i, long j);

    public abstract void zzk(long j);

    public abstract void zzl(int i, int i2);

    public abstract void zzm(int i);

    public abstract void zzn(zzhr zzhrVar);

    public abstract void zzo(int i, zzhr zzhrVar);

    public abstract void zzp(int i, zzfp zzfpVar);

    public abstract void zzq(int i, String str);

    public abstract void zzr(String str);

    public abstract void zzs(int i, int i2);

    public abstract void zzt(int i, int i2);

    public abstract void zzu(int i);

    public abstract void zzv(int i, long j);

    public abstract void zzw(long j);
}
