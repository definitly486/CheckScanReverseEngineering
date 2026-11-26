package defpackage;

import android.content.Intent;
import com.google.android.gms.measurement.internal.zzpg;

/* JADX INFO: loaded from: classes4.dex */
public final class yac extends tva {
    public final /* synthetic */ zzpg e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yac(zzpg zzpgVar, pvb pvbVar) {
        super(pvbVar);
        this.e = zzpgVar;
    }

    @Override // defpackage.tva
    public final void a() {
        zzpg zzpgVar = this.e;
        zzpgVar.zzaX().zzg();
        String str = (String) zzpgVar.q.pollFirst();
        if (str != null) {
            zzpgVar.I = zzpgVar.zzba().elapsedRealtime();
            zzpgVar.zzaW().zzk().zzb("Sending trigger URI notification to app", str);
            Intent intent = new Intent();
            intent.setAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
            intent.setPackage(str);
            zzpg.M(zzpgVar.zzaZ(), intent);
        }
        zzpgVar.B();
    }
}
