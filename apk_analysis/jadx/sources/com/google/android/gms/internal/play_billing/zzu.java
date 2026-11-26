package com.google.android.gms.internal.play_billing;

import defpackage.ohb;
import defpackage.pdc;
import defpackage.y14;
import defpackage.zdc;

/* JADX INFO: loaded from: classes4.dex */
public final class zzu {
    public static zzdk zza(zzr zzrVar) {
        zzp zzpVar = new zzp();
        zdc zdcVar = new zdc(zzpVar);
        zzpVar.b = zdcVar;
        zzpVar.a = zzrVar.getClass();
        try {
            zzpVar.a = zzrVar.zza(zzpVar);
            return zdcVar;
        } catch (Exception e) {
            ohb ohbVar = new ohb(e);
            y14 y14Var = zzo.g;
            pdc pdcVar = zdcVar.c;
            if (y14Var.S(pdcVar, null, ohbVar)) {
                zzo.b(pdcVar);
            }
            return zdcVar;
        }
    }
}
