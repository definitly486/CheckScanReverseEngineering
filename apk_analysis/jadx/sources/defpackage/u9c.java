package defpackage;

import com.google.android.gms.measurement.internal.zzok;

/* JADX INFO: loaded from: classes4.dex */
public final class u9c extends tva {
    public final /* synthetic */ zzok e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u9c(zzok zzokVar, pvb pvbVar) {
        super(pvbVar);
        this.e = zzokVar;
    }

    @Override // defpackage.tva
    public final void a() {
        zzok zzokVar = this.e;
        zzokVar.zzf();
        zzokVar.a.zzaW().zzk().zza("Starting upload from DelayedRunnable");
        zzokVar.b.l();
    }
}
