package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzaz;
import com.google.android.gms.internal.mlkit_vision_barcode.zzcs;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.AbstractMap;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class j5b extends zzcs {
    public final /* synthetic */ p5b d;

    public j5b(p5b p5bVar) {
        this.d = p5bVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        p5b p5bVar = this.d;
        zzaz.zza(i, p5bVar.f, FirebaseAnalytics.Param.INDEX);
        Object[] objArr = p5bVar.e;
        int i2 = i + i;
        Object obj = objArr[i2];
        Objects.requireNonNull(obj);
        Object obj2 = objArr[i2 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d.f;
    }
}
