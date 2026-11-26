package defpackage;

import android.location.Location;
import com.google.android.gms.internal.location.zzdq;
import com.google.android.gms.location.zzx;

/* JADX INFO: loaded from: classes4.dex */
public final class e9b extends zzx {
    public final zzdq a;

    public e9b(zzdq zzdqVar) {
        this.a = zzdqVar;
    }

    @Override // com.google.android.gms.location.zzy
    public final void zzd(Location location) {
        this.a.zza().notifyListener(new h8b(this, location));
    }

    @Override // com.google.android.gms.location.zzy
    public final void zze() {
        this.a.zza().notifyListener(new d9b(this));
    }
}
