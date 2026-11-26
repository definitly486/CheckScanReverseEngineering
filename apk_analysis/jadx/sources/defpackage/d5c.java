package defpackage;

import com.google.android.gms.measurement.internal.zznl;

/* JADX INFO: loaded from: classes4.dex */
public final class d5c extends tva {
    public final /* synthetic */ zznl e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d5c(zznl zznlVar, pvb pvbVar) {
        super(pvbVar);
        this.e = zznlVar;
    }

    @Override // defpackage.tva
    public final void a() {
        zznl zznlVar = this.e;
        zznlVar.zzg();
        if (zznlVar.zzh()) {
            zznlVar.a.zzaW().zzk().zza("Inactivity, disconnecting from the service");
            zznlVar.zzM();
        }
    }
}
