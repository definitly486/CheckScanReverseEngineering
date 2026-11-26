package defpackage;

import com.google.android.gms.internal.measurement.zzpl;
import com.google.android.gms.internal.measurement.zzpm;
import com.google.android.gms.internal.measurement.zzqc;
import com.google.android.gms.internal.measurement.zzqe;
import com.google.android.gms.internal.measurement.zzqm;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class kcc implements zzpm {
    public final zzqm a;
    public final /* synthetic */ zzqe b;

    public kcc(zzqe zzqeVar, zzqm zzqmVar) {
        this.b = zzqeVar;
        this.a = zzqmVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzpm
    public final void zza(zzpl zzplVar) {
        Iterator it = this.b.f.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (((zzqc) it.next()).zza(zzplVar.zza()) && !z) {
                this.a.zza();
                z = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzpm
    public final void zzb(Throwable th) {
    }
}
