package defpackage;

import com.google.android.gms.internal.mlkit_common.zzaf;
import com.google.android.gms.internal.mlkit_common.zzt;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes4.dex */
public final class nra extends zzaf {
    public final transient int d;
    public final transient int e;
    public final /* synthetic */ zzaf f;

    public nra(zzaf zzafVar, int i, int i2) {
        this.f = zzafVar;
        this.d = i;
        this.e = i2;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzab
    public final int b() {
        return this.f.d() + this.d + this.e;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzab
    public final int d() {
        return this.f.d() + this.d;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzab
    public final Object[] f() {
        return this.f.f();
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzt.zza(i, this.e, FirebaseAnalytics.Param.INDEX);
        return this.f.get(i + this.d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzaf, java.util.List
    /* JADX INFO: renamed from: zzf, reason: merged with bridge method [inline-methods] */
    public final zzaf subList(int i, int i2) {
        zzt.zzd(i, i2, this.e);
        int i3 = this.d;
        return this.f.subList(i + i3, i2 + i3);
    }
}
