package defpackage;

import com.google.android.gms.internal.mlkit_common.zzaf;
import com.google.android.gms.internal.mlkit_common.zzt;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class nua extends zzaf {
    public final transient Object[] d;
    public final transient int e;
    public final transient int f;

    public nua(Object[] objArr, int i, int i2) {
        this.d = objArr;
        this.e = i;
        this.f = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzt.zza(i, this.f, FirebaseAnalytics.Param.INDEX);
        Object obj = this.d[i + i + this.e];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f;
    }
}
