package defpackage;

import com.google.android.gms.internal.measurement.zzaag;
import com.google.android.gms.internal.measurement.zzaal;
import com.google.android.gms.internal.measurement.zzaas;
import com.google.android.gms.internal.measurement.zzyw;
import com.google.android.gms.internal.measurement.zzzd;
import com.google.android.gms.internal.measurement.zzzq;
import java.util.Set;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes4.dex */
public final class cpa extends zzaag {
    public final String b;
    public final Level c;
    public final Set d;
    public final zzzq e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cpa(String str) {
        super(str);
        Level level = Level.ALL;
        Set set = zzaas.f;
        this.b = "";
        this.c = level;
        this.d = zzaas.f;
        this.e = zzaas.g;
    }

    @Override // com.google.android.gms.internal.measurement.zzzf
    public final boolean zzb(Level level) {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzzf
    public final void zzc(zzzd zzzdVar) {
        String strZza = (String) zzzdVar.zzl().zzd(zzyw.zza);
        if (strZza == null) {
            strZza = zza();
        }
        if (strZza == null) {
            strZza = zzzdVar.zzg().zza();
            int iIndexOf = strZza.indexOf(36, strZza.lastIndexOf(46));
            if (iIndexOf >= 0) {
                strZza = strZza.substring(0, iIndexOf);
            }
        }
        zzaas.a(zzzdVar, zzaal.zza(this.b, strZza, true), this.c, this.d, this.e);
    }
}
