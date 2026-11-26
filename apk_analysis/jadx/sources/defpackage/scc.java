package defpackage;

import com.google.android.gms.internal.measurement.zzacr;
import com.google.android.gms.internal.measurement.zzmw;
import com.google.android.gms.internal.measurement.zznd;
import com.google.android.gms.internal.measurement.zzqv;
import com.google.android.gms.internal.measurement.zzqx;
import com.google.common.collect.l;
import com.google.common.collect.n;
import com.google.common.collect.x;
import com.google.common.collect.z;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class scc {
    public final boolean a = true;
    public final String b;
    public final zzacr c;
    public final x d;
    public final rcc e;

    public scc(zzqv zzqvVar, rcc rccVar) {
        zzqv.zzi().equals(zzqvVar);
        this.b = zzqvVar.zza();
        this.c = zzqvVar.zzb();
        zzqvVar.zzc();
        zzqvVar.zzd();
        int i = n.d;
        Object[] objArr = z.j;
        int iZzf = zzqvVar.zzf() + 3;
        cn1.b(iZzf, "expectedSize");
        l.a aVar = new l.a(iZzf);
        for (zzqx zzqxVar : zzqvVar.zze()) {
            int iZzp = zzqxVar.zzp();
            int i2 = iZzp - 1;
            if (iZzp == 0) {
                throw null;
            }
            if (i2 == 0) {
                aVar.b(zzqxVar.zza(), Long.valueOf(zzqxVar.zzb()));
            } else if (i2 == 1) {
                aVar.b(zzqxVar.zza(), Boolean.valueOf(zzqxVar.zzc()));
            } else if (i2 == 2) {
                aVar.b(zzqxVar.zza(), Double.valueOf(zzqxVar.zzd()));
            } else if (i2 == 3) {
                aVar.b(zzqxVar.zza(), zzqxVar.zze());
            } else if (i2 == 4) {
                aVar.b(zzqxVar.zza(), zzqxVar.zzf().zzm());
            }
        }
        aVar.b("__phenotype_server_token", zzqvVar.zzc());
        aVar.b("__phenotype_snapshot_token", zzqvVar.zza());
        aVar.b("__phenotype_configuration_version", Long.valueOf(zzqvVar.zzd()));
        this.d = aVar.a(false);
        this.e = rccVar;
    }

    public scc(zznd zzndVar, rcc rccVar) {
        zzndVar.zzi();
        this.b = zzndVar.zzd();
        this.c = zzndVar.zzg();
        zzndVar.zze();
        zzndVar.zzf();
        Map mapZzh = zzndVar.zzh();
        if (mapZzh != null) {
            n.n(mapZzh.keySet());
        } else {
            int i = n.d;
            Object[] objArr = z.j;
        }
        zzmw zzmwVarZzc = zzndVar.zzc();
        int iZzf = zzmwVarZzc.zzf() + 3;
        cn1.b(iZzf, "expectedSize");
        l.a aVar = new l.a(iZzf);
        zzmwVarZzc.zzc(aVar);
        aVar.b("__phenotype_server_token", zzndVar.zze());
        aVar.b("__phenotype_snapshot_token", zzndVar.zzd());
        aVar.b("__phenotype_configuration_version", Long.valueOf(zzndVar.zzf()));
        this.d = aVar.a(false);
        this.e = rccVar;
    }
}
