package defpackage;

import com.google.android.gms.internal.common.zzah;
import com.google.android.gms.internal.common.zzr;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes4.dex */
public final class usa extends zzah {
    public final transient int d;
    public final transient int e;
    public final /* synthetic */ zzah f;

    public usa(zzah zzahVar, int i, int i2) {
        this.f = zzahVar;
        this.d = i;
        this.e = i2;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final Object[] a() {
        return this.f.a();
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final int b() {
        return this.f.b() + this.d;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final int d() {
        return this.f.b() + this.d + this.e;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final boolean f() {
        return true;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzr.zzb(i, this.e, FirebaseAnalytics.Param.INDEX);
        return this.f.get(i + this.d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.common.zzah, java.util.List
    /* JADX INFO: renamed from: zzi */
    public final zzah subList(int i, int i2) {
        zzr.zzd(i, i2, this.e);
        int i3 = this.d;
        return this.f.subList(i + i3, i2 + i3);
    }
}
