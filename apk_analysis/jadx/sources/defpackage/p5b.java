package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzcs;
import com.google.android.gms.internal.mlkit_vision_barcode.zzcv;
import com.google.android.gms.internal.mlkit_vision_barcode.zzdu;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class p5b extends zzcv {
    public final transient i6b d;
    public final transient Object[] e;
    public final transient int f = 1;

    public p5b(i6b i6bVar, Object[] objArr) {
        this.d = i6bVar;
        this.e = objArr;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzcn
    public final int a(int i, Object[] objArr) {
        return zzf().a(i, objArr);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzcn, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        Object value = entry.getValue();
        return value != null && value.equals(this.d.get(key));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzcv
    public final zzcs g() {
        return new j5b(this);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzcv, com.google.android.gms.internal.mlkit_vision_barcode.zzcn, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return zzf().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzcv, com.google.android.gms.internal.mlkit_vision_barcode.zzcn
    /* JADX INFO: renamed from: zzd */
    public final zzdu iterator() {
        return zzf().listIterator(0);
    }
}
