package defpackage;

import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzoc;

/* JADX INFO: loaded from: classes4.dex */
public final class q8c extends tva {
    public final /* synthetic */ c9c e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q8c(c9c c9cVar, pvb pvbVar) {
        super(pvbVar);
        this.e = c9cVar;
    }

    @Override // defpackage.tva
    public final void a() {
        c9c c9cVar = this.e;
        zzoc zzocVar = c9cVar.d;
        zzocVar.zzg();
        zzic zzicVar = zzocVar.a;
        c9cVar.a(zzicVar.zzba().elapsedRealtime(), false, false);
        zzicVar.zzw().zzc(zzicVar.zzba().elapsedRealtime());
    }
}
