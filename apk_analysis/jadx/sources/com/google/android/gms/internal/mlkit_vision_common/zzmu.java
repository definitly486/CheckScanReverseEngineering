package com.google.android.gms.internal.mlkit_vision_common;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes4.dex */
public final class zzmu {
    public static void zza(zzmj zzmjVar, int i, int i2, long j, int i3, int i4, int i5, int i6) {
        zzmjVar.zzc(new zzmt(i, i2, i5, i3, i4, SystemClock.elapsedRealtime() - j, i6), zziv.INPUT_IMAGE_CONSTRUCTION);
    }

    public static void zzb(zzmj zzmjVar, int i, int i2, long j, int i3, int i4, int i5, int i6) {
        zzmjVar.zzc(new zzmt(i, i2, i5, i3, i4, SystemClock.elapsedRealtime() - j, i6), zziv.ODML_IMAGE);
    }
}
