package defpackage;

import com.google.android.gms.internal.play_billing.zzbl;
import com.google.android.gms.internal.play_billing.zzca;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.AbstractMap;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class v0b extends zzca {
    public final /* synthetic */ z0b d;

    public v0b(z0b z0bVar) {
        this.d = z0bVar;
    }

    @Override // com.google.android.gms.internal.play_billing.zzbx
    public final boolean f() {
        return true;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        z0b z0bVar = this.d;
        zzbl.zza(i, z0bVar.f, FirebaseAnalytics.Param.INDEX);
        Object[] objArr = z0bVar.e;
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
