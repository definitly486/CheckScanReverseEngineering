package defpackage;

import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzd;

/* JADX INFO: loaded from: classes4.dex */
public final class aoa implements Runnable {
    public final /* synthetic */ String b;
    public final /* synthetic */ long c;
    public final /* synthetic */ zzd d;

    public aoa(zzd zzdVar, String str, long j) {
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
        boolean zIsEmpty = arrayMap.isEmpty();
        long j = this.c;
        if (zIsEmpty) {
            zzdVar.d = j;
        }
        Integer num = (Integer) arrayMap.get(str);
        if (num != null) {
            arrayMap.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (arrayMap.size() >= 100) {
            xp.h(zzdVar.a, "Too many ads visible");
        } else {
            arrayMap.put(str, 1);
            zzdVar.b.put(str, Long.valueOf(j));
        }
    }
}
