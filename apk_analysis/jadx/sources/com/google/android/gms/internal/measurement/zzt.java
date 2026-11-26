package com.google.android.gms.internal.measurement;

import androidx.core.app.NotificationCompat;
import defpackage.acc;
import defpackage.cbc;
import defpackage.odc;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzt extends zzai {
    public final zzr d;

    public zzt(zzr zzrVar) {
        super("internal.logger");
        this.d = zzrVar;
        this.c.put("log", new odc(this, false, true));
        this.c.put(NotificationCompat.GROUP_KEY_SILENT, new cbc(NotificationCompat.GROUP_KEY_SILENT));
        ((zzai) this.c.get(NotificationCompat.GROUP_KEY_SILENT)).zzm("log", new odc(this, true, true));
        this.c.put("unmonitored", new acc("unmonitored"));
        ((zzai) this.c.get("unmonitored")).zzm("log", new odc(this, false, false));
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzao zza(zzg zzgVar, List list) {
        return zzao.zzf;
    }
}
