package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzaz;
import com.google.android.gms.internal.mlkit_vision_barcode.zzcs;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class c6b extends zzcs {
    public final transient Object[] d;
    public final transient int e;
    public final transient int f = 1;

    public c6b(Object[] objArr, int i) {
        this.d = objArr;
        this.e = i;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzaz.zza(i, this.f, FirebaseAnalytics.Param.INDEX);
        Object obj = this.d[i + i + this.e];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f;
    }
}
