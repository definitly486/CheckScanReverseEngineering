package defpackage;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzcx;
import com.google.android.gms.measurement.internal.zzjq;

/* JADX INFO: loaded from: classes4.dex */
public final class kbb extends zzcx {
    public final zzjq a;

    public kbb(zzjq zzjqVar) {
        this.a = zzjqVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzcy
    public final void zze(String str, String str2, Bundle bundle, long j) {
        this.a.onEvent(str, str2, bundle, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzcy
    public final int zzf() {
        return System.identityHashCode(this.a);
    }
}
