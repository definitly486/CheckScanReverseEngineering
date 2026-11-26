package defpackage;

import com.google.android.gms.internal.measurement.zzcu;

/* JADX INFO: loaded from: classes4.dex */
public final class y6b extends zzcu {
    public final /* synthetic */ Runnable a;

    public y6b(d7b d7bVar, Runnable runnable) {
        this.a = runnable;
    }

    @Override // com.google.android.gms.internal.measurement.zzcv
    public final void zze() {
        this.a.run();
    }
}
