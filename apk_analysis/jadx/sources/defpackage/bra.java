package defpackage;

import com.google.android.gms.internal.measurement.zzacb;
import com.google.android.gms.internal.measurement.zzacr;
import com.google.android.gms.internal.measurement.zzada;
import com.google.android.gms.internal.measurement.zzafc;

/* JADX INFO: loaded from: classes4.dex */
public final class bra implements hta {
    public final zzada a;

    public bra(zzada zzadaVar) {
        this.a = zzadaVar;
        zzadaVar.a = this;
    }

    public final void a(int i, Object obj, nsa nsaVar) {
        zzacb zzacbVar = (zzacb) obj;
        zzada zzadaVar = this.a;
        zzadaVar.zzb(i, 2);
        zzadaVar.zzr(zzacbVar.a(nsaVar));
        nsaVar.d(zzacbVar, this);
    }

    public final void b(int i, Object obj) {
        boolean z = obj instanceof zzacr;
        zzada zzadaVar = this.a;
        if (z) {
            zzadaVar.zzn(i, (zzacr) obj);
        } else {
            zzadaVar.zzm(i, (zzafc) obj);
        }
    }
}
