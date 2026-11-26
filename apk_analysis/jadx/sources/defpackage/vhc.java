package defpackage;

import com.google.android.gms.internal.mlkit_vision_common.zzf;
import com.google.android.gms.internal.mlkit_vision_common.zzp;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes4.dex */
public final class vhc extends zzp {
    public final transient Object[] d;
    public final transient int e;
    public final transient int f;

    public vhc(Object[] objArr, int i, int i2) {
        this.d = objArr;
        this.e = i;
        this.f = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzf.zza(i, this.f, FirebaseAnalytics.Param.INDEX);
        Object obj = this.d[i + i + this.e];
        obj.getClass();
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f;
    }
}
