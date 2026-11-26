package defpackage;

import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzd;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzlu;

/* JADX INFO: loaded from: classes4.dex */
public final class hwa implements Runnable {
    public final /* synthetic */ String b;
    public final /* synthetic */ long c;
    public final /* synthetic */ zzd d;

    public hwa(zzd zzdVar, String str, long j) {
        this.b = str;
        this.c = j;
        this.d = zzdVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        zzd zzdVar = this.d;
        zzdVar.zzg();
        String str = this.b;
        Preconditions.checkNotEmpty(str);
        ArrayMap arrayMap = zzdVar.c;
        Integer num = (Integer) arrayMap.get(str);
        zzic zzicVar = zzdVar.a;
        if (num == null) {
            zzicVar.zzaW().zzb().zzb("Call to endAdUnitExposure for unknown ad unit id", str);
            return;
        }
        zzlu zzluVarZzh = zzicVar.zzs().zzh(false);
        int iIntValue = num.intValue() - 1;
        if (iIntValue != 0) {
            arrayMap.put(str, Integer.valueOf(iIntValue));
            return;
        }
        arrayMap.remove(str);
        ArrayMap arrayMap2 = zzdVar.b;
        Long l = (Long) arrayMap2.get(str);
        long j = this.c;
        if (l == null) {
            u4.e(zzicVar, "First ad unit exposure time was never set");
        } else {
            long jLongValue = j - l.longValue();
            arrayMap2.remove(str);
            zzdVar.b(str, jLongValue, zzluVarZzh);
        }
        if (arrayMap.isEmpty()) {
            long j2 = zzdVar.d;
            if (j2 == 0) {
                u4.e(zzicVar, "First ad exposure time was never set");
            } else {
                zzdVar.a(j - j2, zzluVarZzh);
                zzdVar.d = 0L;
            }
        }
    }
}
