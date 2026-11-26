package defpackage;

import com.google.android.gms.internal.measurement.zzai;
import com.google.android.gms.internal.measurement.zzao;
import com.google.android.gms.internal.measurement.zzas;
import com.google.android.gms.internal.measurement.zzg;
import com.google.android.gms.internal.measurement.zzh;
import com.google.android.gms.internal.measurement.zzn;
import com.google.android.gms.internal.measurement.zzo;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class z3c extends zzai {
    public final /* synthetic */ zzo d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z3c(zzn zznVar, zzo zzoVar) {
        super("getValue");
        this.d = zzoVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzao zza(zzg zzgVar, List list) {
        zzh.zza("getValue", 2, list);
        zzao zzaoVarZza = zzgVar.zza((zzao) list.get(0));
        zzao zzaoVarZza2 = zzgVar.zza((zzao) list.get(1));
        String strZza = this.d.zza(zzaoVarZza.zzc());
        return strZza != null ? new zzas(strZza) : zzaoVarZza2;
    }
}
