package defpackage;

import android.os.Bundle;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzjp;
import com.google.android.gms.measurement.internal.zzjq;
import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zzpl;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ooa extends iza {
    public final zzic a;
    public final zzlj b;

    public ooa(zzic zzicVar) {
        Preconditions.checkNotNull(zzicVar);
        this.a = zzicVar;
        this.b = zzicVar.zzj();
    }

    @Override // defpackage.iza
    public final Map a(boolean z) {
        List<zzpl> listZzN = this.b.zzN(z);
        ArrayMap arrayMap = new ArrayMap(listZzN.size());
        for (zzpl zzplVar : listZzN) {
            Object objZza = zzplVar.zza();
            if (objZza != null) {
                arrayMap.put(zzplVar.zzb, objZza);
            }
        }
        return arrayMap;
    }

    @Override // defpackage.iza
    public final Boolean b() {
        return this.b.zzi();
    }

    @Override // defpackage.iza
    public final Integer c() {
        return this.b.zzl();
    }

    @Override // defpackage.iza
    public final String d() {
        return this.b.zzj();
    }

    @Override // defpackage.iza
    public final Long e() {
        return this.b.zzk();
    }

    @Override // defpackage.iza
    public final Double f() {
        return this.b.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void zza(String str, String str2, Bundle bundle) {
        this.b.zzA(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void zzb(String str, String str2, Bundle bundle, long j, long j2) {
        this.b.zzB(str, str2, bundle, true, false, j, 0L);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final Map zzd(String str, String str2, boolean z) {
        return this.b.zzO(str, str2, z);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void zze(zzjp zzjpVar) {
        this.b.zzU(zzjpVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void zzf(zzjq zzjqVar) {
        this.b.zzV(zzjqVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void zzg(zzjq zzjqVar) {
        this.b.zzW(zzjqVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final String zzh() {
        return this.b.zzac();
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final String zzi() {
        return this.b.zzad();
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final String zzj() {
        return this.b.zzP();
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final String zzk() {
        return this.b.zzae();
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final long zzl() {
        return this.a.zzk().zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void zzm(String str) {
        zzic zzicVar = this.a;
        zzicVar.zzw().zza(str, zzicVar.zzba().elapsedRealtime());
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void zzn(String str) {
        zzic zzicVar = this.a;
        zzicVar.zzw().zzb(str, zzicVar.zzba().elapsedRealtime());
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void zzo(Bundle bundle) {
        this.b.zzY(bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void zzp(String str, String str2, Bundle bundle) {
        this.a.zzj().zzaa(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final List zzq(String str, String str2) {
        return this.b.zzab(str, str2);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final int zzr(String str) {
        this.b.zzX(str);
        return 25;
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final Object zzx(int i) {
        zzlj zzljVar = this.b;
        if (i == 0) {
            return zzljVar.zzj();
        }
        if (i == 1) {
            return zzljVar.zzk();
        }
        if (i != 2) {
            return i != 3 ? zzljVar.zzi() : zzljVar.zzl();
        }
        return zzljVar.zzm();
    }
}
