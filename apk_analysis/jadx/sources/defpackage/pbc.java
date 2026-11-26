package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zzpg;

/* JADX INFO: loaded from: classes4.dex */
public final class pbc {
    public final zzpg a;
    public int b = 1;
    public long c = a();

    public pbc(zzpg zzpgVar) {
        this.a = zzpgVar;
    }

    public final long a() {
        zzpg zzpgVar = this.a;
        Preconditions.checkNotNull(zzpgVar);
        long jLongValue = ((Long) zzfy.zzu.zzb(null)).longValue();
        long jLongValue2 = ((Long) zzfy.zzv.zzb(null)).longValue();
        for (int i = 1; i < this.b; i++) {
            jLongValue += jLongValue;
            if (jLongValue >= jLongValue2) {
                break;
            }
        }
        return Math.min(jLongValue, jLongValue2) + zzpgVar.zzba().currentTimeMillis();
    }
}
