package defpackage;

import com.google.android.gms.internal.location.zzdq;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.zzu;

/* JADX INFO: loaded from: classes4.dex */
public final class i7b extends zzu {
    public final zzdq a;

    public i7b(zzdq zzdqVar) {
        this.a = zzdqVar;
    }

    @Override // com.google.android.gms.location.zzv
    public final void zzd(LocationResult locationResult) {
        this.a.zza().notifyListener(new q6b(this, locationResult));
    }

    @Override // com.google.android.gms.location.zzv
    public final void zze(LocationAvailability locationAvailability) {
        this.a.zza().notifyListener(new x6b(this, locationAvailability));
    }

    @Override // com.google.android.gms.location.zzv
    public final void zzf() {
        this.a.zza().notifyListener(new c7b(this));
    }
}
