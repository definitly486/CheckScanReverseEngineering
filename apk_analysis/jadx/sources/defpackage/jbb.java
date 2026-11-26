package defpackage;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzcx;
import com.google.android.gms.measurement.internal.zzjp;

/* JADX INFO: loaded from: classes4.dex */
public final class jbb extends zzcx {
    public final zzjp a;

    public jbb(zzjp zzjpVar) {
        this.a = zzjpVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzcy
    public final void zze(String str, String str2, Bundle bundle, long j) {
        this.a.interceptEvent(str, str2, bundle, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzcy
    public final int zzf() {
        return System.identityHashCode(this.a);
    }
}
