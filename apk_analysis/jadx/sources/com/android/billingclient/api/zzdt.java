package com.android.billingclient.api;

import android.content.Context;
import com.google.android.gms.internal.play_billing.zzkw;
import defpackage.d29;
import defpackage.d39;
import defpackage.iy2;
import defpackage.kx0;
import defpackage.q29;
import defpackage.ry;

/* JADX INFO: loaded from: classes.dex */
final class zzdt {
    private boolean zza;
    private q29 zzb;

    public zzdt(Context context) {
        try {
            d39.b(context);
            this.zzb = d39.a().c(kx0.e).a("PLAY_BILLING_LIBRARY", new iy2("proto"), new d29() { // from class: com.android.billingclient.api.zzds
                @Override // defpackage.d29
                public final Object apply(Object obj) {
                    return ((zzkw) obj).zzQ();
                }
            });
        } catch (Throwable unused) {
            this.zza = true;
        }
    }

    public final void zza(zzkw zzkwVar) {
        if (this.zza) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingLogger", "Skipping logging since initialization failed.");
            return;
        }
        try {
            this.zzb.a(ry.b(zzkwVar));
        } catch (Throwable unused) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingLogger", "logging failed.");
        }
    }
}
