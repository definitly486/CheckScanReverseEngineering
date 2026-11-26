package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzaz;
import com.google.android.gms.internal.mlkit_vision_barcode.zzcs;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes4.dex */
public final class u1b extends zzcs {
    public final transient int d;
    public final transient int e;
    public final /* synthetic */ zzcs f;

    public u1b(zzcs zzcsVar, int i, int i2) {
        this.f = zzcsVar;
        this.d = i;
        this.e = i2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzcn
    public final int b() {
        return this.f.d() + this.d + this.e;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzcn
    public final int d() {
        return this.f.d() + this.d;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzcn
    public final Object[] f() {
        return this.f.f();
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzaz.zza(i, this.e, FirebaseAnalytics.Param.INDEX);
        return this.f.get(i + this.d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzcs, java.util.List
    /* JADX INFO: renamed from: zzf */
    public final zzcs subList(int i, int i2) {
        zzaz.zze(i, i2, this.e);
        int i3 = this.d;
        return this.f.subList(i + i3, i2 + i3);
    }
}
