package defpackage;

import com.google.android.gms.internal.p000authapi.zbbd;
import com.google.android.gms.internal.p000authapi.zbbj;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes4.dex */
public final class fna extends zbbj {
    public final transient int d;
    public final transient int e;
    public final /* synthetic */ zbbj f;

    public fna(zbbj zbbjVar, int i, int i2) {
        this.f = zbbjVar;
        this.d = i;
        this.e = i2;
    }

    @Override // com.google.android.gms.internal.p000authapi.zbbg
    public final Object[] a() {
        return this.f.a();
    }

    @Override // com.google.android.gms.internal.p000authapi.zbbg
    public final int b() {
        return this.f.b() + this.d;
    }

    @Override // com.google.android.gms.internal.p000authapi.zbbg
    public final int d() {
        return this.f.b() + this.d + this.e;
    }

    @Override // com.google.android.gms.internal.p000authapi.zbbg
    public final boolean f() {
        return true;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zbbd.zba(i, this.e, FirebaseAnalytics.Param.INDEX);
        return this.f.get(i + this.d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.p000authapi.zbbj, java.util.List
    /* JADX INFO: renamed from: zbh, reason: merged with bridge method [inline-methods] */
    public final zbbj subList(int i, int i2) {
        zbbd.zbc(i, i2, this.e);
        int i3 = this.d;
        return this.f.subList(i + i3, i2 + i3);
    }
}
