package defpackage;

import com.google.android.gms.internal.play_billing.zzbl;
import com.google.android.gms.internal.play_billing.zzca;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes4.dex */
public final class tya extends zzca {
    public final transient int d;
    public final transient int e;
    public final /* synthetic */ zzca f;

    public tya(zzca zzcaVar, int i, int i2) {
        this.f = zzcaVar;
        this.d = i;
        this.e = i2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzbx
    public final int b() {
        return this.f.d() + this.d + this.e;
    }

    @Override // com.google.android.gms.internal.play_billing.zzbx
    public final int d() {
        return this.f.d() + this.d;
    }

    @Override // com.google.android.gms.internal.play_billing.zzbx
    public final boolean f() {
        return true;
    }

    @Override // com.google.android.gms.internal.play_billing.zzbx
    public final Object[] g() {
        return this.f.g();
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzbl.zza(i, this.e, FirebaseAnalytics.Param.INDEX);
        return this.f.get(i + this.d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.play_billing.zzca, java.util.List
    /* JADX INFO: renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public final zzca subList(int i, int i2) {
        zzbl.zzd(i, i2, this.e);
        int i3 = this.d;
        return this.f.subList(i + i3, i2 + i3);
    }
}
