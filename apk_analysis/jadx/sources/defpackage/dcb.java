package defpackage;

import com.google.android.gms.internal.location.zzeo;
import com.google.android.gms.internal.location.zzeu;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes4.dex */
public final class dcb extends zzeu {
    public final transient int d;
    public final transient int e;
    public final /* synthetic */ zzeu f;

    public dcb(zzeu zzeuVar, int i, int i2) {
        this.f = zzeuVar;
        this.d = i;
        this.e = i2;
    }

    @Override // com.google.android.gms.internal.location.zzer
    public final Object[] a() {
        return this.f.a();
    }

    @Override // com.google.android.gms.internal.location.zzer
    public final int b() {
        return this.f.b() + this.d;
    }

    @Override // com.google.android.gms.internal.location.zzer
    public final int d() {
        return this.f.b() + this.d + this.e;
    }

    @Override // com.google.android.gms.internal.location.zzer
    public final boolean f() {
        return true;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzeo.zzb(i, this.e, FirebaseAnalytics.Param.INDEX);
        return this.f.get(i + this.d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.location.zzeu, java.util.List
    /* JADX INFO: renamed from: zzh */
    public final zzeu subList(int i, int i2) {
        zzeo.zzd(i, i2, this.e);
        int i3 = this.d;
        return this.f.subList(i + i3, i2 + i3);
    }
}
