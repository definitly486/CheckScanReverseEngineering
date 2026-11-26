package defpackage;

import com.google.android.gms.internal.measurement.i;
import com.google.android.gms.internal.measurement.zzvr;
import com.google.android.gms.internal.measurement.zzvy;
import com.google.android.gms.internal.measurement.zzwb;
import com.google.android.gms.internal.measurement.zzwd;
import com.google.android.gms.internal.measurement.zzwg;
import com.google.android.gms.internal.measurement.zzwi;
import com.google.android.gms.internal.measurement.zzwl;
import com.google.android.gms.internal.measurement.zzwq;
import com.google.android.gms.internal.measurement.zzws;
import com.google.android.gms.internal.measurement.zzxd;
import com.google.common.collect.n;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public final class ogc extends zzwb {
    @Override // com.google.android.gms.internal.measurement.zzwb
    public final zzwi zza(String str, zzxd zzxdVar) {
        boolean z;
        zzws zzwsVarZzg;
        zzwl zzwlVar = i.e;
        zzxdVar.getClass();
        zzwq zzwqVarZzd = zzvy.zzd();
        zzws zzwsVar = zzwqVarZzd.b;
        if (zzwsVar == zzwg.zza) {
            zzwsVar = null;
            zzvy.zzc(zzwqVarZzd, null);
            z = true;
        } else {
            z = false;
        }
        if (zzwsVar == null) {
            UUID uuidB = hgc.c.b();
            String strZzcL = zfc.zzcL(uuidB);
            zzvr zzvrVar = zzwd.h;
            n nVar = (n) zzvy.a.get();
            if (!nVar.isEmpty()) {
                nVar.forEach(new sgc());
            }
            zzwsVarZzg = new tgc(uuidB, strZzcL, str, zzwlVar, zzvrVar, zzwqVarZzd);
        } else {
            zzwsVarZzg = zzwsVar instanceof cgc ? ((cgc) zzwsVar).zzg(str, zzwlVar, false, zzwqVarZzd) : zzwsVar.zzj(str, "", "", 0, zzwlVar, zzwqVarZzd);
        }
        zzvy.zzc(zzwqVarZzd, zzwsVarZzg);
        return new zzwi(zzwsVarZzg, z);
    }
}
