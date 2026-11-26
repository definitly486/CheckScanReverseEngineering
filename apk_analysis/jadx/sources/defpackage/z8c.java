package defpackage;

import com.google.android.gms.internal.mlkit_vision_common.zzf;
import com.google.android.gms.internal.mlkit_vision_common.zzp;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes4.dex */
public final class z8c extends zzp {
    public final transient int d;
    public final transient int e;
    public final /* synthetic */ zzp f;

    public z8c(zzp zzpVar, int i, int i2) {
        this.f = zzpVar;
        this.d = i;
        this.e = i2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzl
    public final int b() {
        return this.f.d() + this.d + this.e;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzl
    public final int d() {
        return this.f.d() + this.d;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzl
    public final Object[] f() {
        return this.f.f();
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzf.zza(i, this.e, FirebaseAnalytics.Param.INDEX);
        return this.f.get(i + this.d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzp, java.util.List
    /* JADX INFO: renamed from: zzf */
    public final zzp subList(int i, int i2) {
        zzf.zzc(i, i2, this.e);
        int i3 = this.d;
        return this.f.subList(i + i3, i2 + i3);
    }
}
