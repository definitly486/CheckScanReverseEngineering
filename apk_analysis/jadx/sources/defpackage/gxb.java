package defpackage;

import android.os.Bundle;
import android.util.SparseArray;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zzgu;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zzoh;

/* JADX INFO: loaded from: classes4.dex */
public final class gxb implements xm3 {
    public final /* synthetic */ zzoh a;
    public final /* synthetic */ zzlj b;

    public gxb(zzlj zzljVar, zzoh zzohVar) {
        this.a = zzohVar;
        this.b = zzljVar;
    }

    @Override // defpackage.xm3
    public final void onFailure(Throwable th) {
        zzlj zzljVar = this.b;
        zzljVar.zzg();
        zzic zzicVar = zzljVar.a;
        zzljVar.i = false;
        zzljVar.l().add(this.a);
        if (zzljVar.j > ((Integer) zzfy.zzav.zzb(null)).intValue()) {
            zzljVar.j = 1;
            zzicVar.zzaW().zze().zzc("registerTriggerAsync failed. May try later. App ID, throwable", zzgu.d(zzicVar.zzv().zzj()), zzgu.d(th.toString()));
            return;
        }
        zzicVar.zzaW().zze().zzd("registerTriggerAsync failed. App ID, delay in seconds, throwable", zzgu.d(zzicVar.zzv().zzj()), zzgu.d(String.valueOf(zzljVar.j)), zzgu.d(th.toString()));
        int i = zzljVar.j;
        jxb jxbVar = zzljVar.k;
        if (jxbVar == null) {
            jxbVar = new jxb(zzljVar, zzicVar);
            zzljVar.k = jxbVar;
        }
        jxbVar.b(((long) i) * 1000);
        int i2 = zzljVar.j;
        zzljVar.j = i2 + i2;
    }

    @Override // defpackage.xm3
    public final void onSuccess(Object obj) {
        zzlj zzljVar = this.b;
        zzljVar.zzg();
        zzic zzicVar = zzljVar.a;
        SparseArray sparseArrayF = zzicVar.zzd().f();
        zzoh zzohVar = this.a;
        sparseArrayF.put(zzohVar.zzc, Long.valueOf(zzohVar.zzb));
        hnb hnbVarZzd = zzicVar.zzd();
        int[] iArr = new int[sparseArrayF.size()];
        long[] jArr = new long[sparseArrayF.size()];
        for (int i = 0; i < sparseArrayF.size(); i++) {
            iArr[i] = sparseArrayF.keyAt(i);
            jArr[i] = ((Long) sparseArrayF.valueAt(i)).longValue();
        }
        Bundle bundle = new Bundle();
        bundle.putIntArray("uriSources", iArr);
        bundle.putLongArray("uriTimestamps", jArr);
        hnbVarZzd.n.zzb(bundle);
        zzljVar.i = false;
        zzljVar.j = 1;
        zzicVar.zzaW().zzj().zzb("Successfully registered trigger URI", zzohVar.zza);
        zzljVar.zzy();
    }
}
