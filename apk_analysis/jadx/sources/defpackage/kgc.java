package defpackage;

import com.google.android.gms.internal.mlkit_vision_common.zzab;
import com.google.android.gms.internal.mlkit_vision_common.zzp;
import com.google.android.gms.internal.mlkit_vision_common.zzs;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class kgc extends zzs {
    public final transient lic d;
    public final transient Object[] e;
    public final transient int f;

    public kgc(lic licVar, Object[] objArr, int i) {
        this.d = licVar;
        this.e = objArr;
        this.f = i;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzl
    public final int a(Object[] objArr) {
        return zzf().a(objArr);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzl, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        Object value = entry.getValue();
        return value != null && value.equals(this.d.get(key));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzs
    public final zzp g() {
        return new lfc(this);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzs, com.google.android.gms.internal.mlkit_vision_common.zzl, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return zzf().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzs, com.google.android.gms.internal.mlkit_vision_common.zzl
    /* JADX INFO: renamed from: zzd */
    public final zzab iterator() {
        return zzf().listIterator(0);
    }
}
