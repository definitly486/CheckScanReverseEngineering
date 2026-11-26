package defpackage;

import com.google.android.gms.internal.fido.zzam;
import com.google.android.gms.internal.fido.zzat;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes4.dex */
public final class ava extends zzat {
    public final transient int d;
    public final transient int e;
    public final /* synthetic */ zzat f;

    public ava(zzat zzatVar, int i, int i2) {
        this.f = zzatVar;
        this.d = i;
        this.e = i2;
    }

    @Override // com.google.android.gms.internal.fido.zzaq
    public final int b() {
        return this.f.d() + this.d + this.e;
    }

    @Override // com.google.android.gms.internal.fido.zzaq
    public final int d() {
        return this.f.d() + this.d;
    }

    @Override // com.google.android.gms.internal.fido.zzaq
    public final Object[] f() {
        return this.f.f();
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzam.zza(i, this.e, FirebaseAnalytics.Param.INDEX);
        return this.f.get(i + this.d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.fido.zzat, java.util.List
    /* JADX INFO: renamed from: zzf, reason: merged with bridge method [inline-methods] */
    public final zzat subList(int i, int i2) {
        zzam.zze(i, i2, this.e);
        int i3 = this.d;
        return this.f.subList(i + i3, i2 + i3);
    }
}
