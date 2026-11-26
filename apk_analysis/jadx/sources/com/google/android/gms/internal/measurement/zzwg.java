package com.google.android.gms.internal.measurement;

import defpackage.dgc;
import defpackage.zfc;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public final class zzwg extends dgc {
    public static final zzwg zza;

    static {
        UUID uuidRandomUUID = UUID.randomUUID();
        zza = new zzwg("<skip trace>", uuidRandomUUID, zfc.zzcL(uuidRandomUUID), i.e, zzvy.zzd());
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final zzws zzj(String str, String str2, String str3, int i, zzwl zzwlVar, zzwq zzwqVar) {
        throw new IllegalStateException("Can't create child trace for no trace!");
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final long zzk() {
        return -1L;
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final zzwl zzl() {
        return i.e;
    }
}
