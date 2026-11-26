package defpackage;

import com.google.android.gms.internal.mlkit_vision_common.zzf;
import com.google.android.gms.internal.mlkit_vision_common.zzp;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.AbstractMap;

/* JADX INFO: loaded from: classes4.dex */
public final class lfc extends zzp {
    public final /* synthetic */ kgc d;

    public lfc(kgc kgcVar) {
        this.d = kgcVar;
    }

    @Override // java.util.List
    public final /* synthetic */ Object get(int i) {
        kgc kgcVar = this.d;
        zzf.zza(i, kgcVar.f, FirebaseAnalytics.Param.INDEX);
        Object[] objArr = kgcVar.e;
        int i2 = i + i;
        Object obj = objArr[i2];
        obj.getClass();
        Object obj2 = objArr[i2 + 1];
        obj2.getClass();
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d.f;
    }
}
