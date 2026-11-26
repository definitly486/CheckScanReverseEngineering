package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import defpackage.ah;
import defpackage.d6b;
import defpackage.jib;
import defpackage.qlb;
import defpackage.tmb;
import defpackage.wmb;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzdn extends zzcx {
    public static final Logger b = Logger.getLogger(zzdn.class.getName());
    public static final boolean c = qlb.e;
    public d6b a;

    public zzdn() {
        throw null;
    }

    public static int zzA(int i) {
        return (352 - (Integer.numberOfLeadingZeros(i) * 9)) >>> 6;
    }

    public static int zzB(long j) {
        return (640 - (Long.numberOfLeadingZeros(j) * 9)) >>> 6;
    }

    public static int zzx(zzfm zzfmVar) {
        int iZzF = zzfmVar.zzF();
        return zzA(iZzF) + iZzF;
    }

    public static int zzz(String str) {
        int length;
        try {
            length = wmb.c(str);
        } catch (tmb unused) {
            length = str.getBytes(zzep.a).length;
        }
        return zzA(length) + length;
    }

    public abstract void a(int i, zzfm zzfmVar, jib jibVar);

    public final void zzC() {
        if (zza() == 0) {
            return;
        }
        ah.f("Did not write as much data as expected.");
    }

    public abstract int zza();

    public abstract void zzb(byte b2);

    public abstract void zzd(int i, boolean z);

    public abstract void zze(int i, zzdf zzdfVar);

    public abstract void zzf(int i, int i2);

    public abstract void zzg(int i);

    public abstract void zzh(int i, long j);

    public abstract void zzi(long j);

    public abstract void zzj(int i, int i2);

    public abstract void zzk(int i);

    public abstract void zzl(byte[] bArr, int i, int i2);

    public abstract void zzn(int i, zzfm zzfmVar);

    public abstract void zzo(int i, zzdf zzdfVar);

    public abstract void zzp(int i, String str);

    public abstract void zzr(int i, int i2);

    public abstract void zzs(int i, int i2);

    public abstract void zzt(int i);

    public abstract void zzu(int i, long j);

    public abstract void zzv(long j);
}
