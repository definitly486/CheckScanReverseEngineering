package defpackage;

import com.google.android.gms.internal.mlkit_common.zzaf;
import com.google.android.gms.internal.mlkit_common.zzaj;
import com.google.android.gms.internal.mlkit_common.zzas;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class hua extends zzaj {
    public final transient rua d;
    public final transient Object[] e;
    public final transient int f;

    public hua(rua ruaVar, Object[] objArr, int i) {
        this.d = ruaVar;
        this.e = objArr;
        this.f = i;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzab
    public final int a(Object[] objArr) {
        return zzf().a(objArr);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzab, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        Object value = entry.getValue();
        return value != null && value.equals(this.d.get(key));
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzaj
    public final zzaf g() {
        return new dua(this);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzaj, com.google.android.gms.internal.mlkit_common.zzab, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return zzf().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzaj, com.google.android.gms.internal.mlkit_common.zzab
    /* JADX INFO: renamed from: zzd */
    public final zzas iterator() {
        return zzf().listIterator(0);
    }
}
